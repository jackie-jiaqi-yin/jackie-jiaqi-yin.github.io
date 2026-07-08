require "minitest/autorun"
require "date"
require "yaml"

class BlogStructureTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)

  def read(path)
    File.read(File.join(ROOT, path))
  end

  def front_matter(path)
    content = read(path)
    match = content.match(/\A---\n(.*?)\n---/m)
    match ? YAML.safe_load(match[1], permitted_classes: [Date, Time], aliases: true) : {}
  end

  def test_blog_navigation_is_registered
    nav = YAML.safe_load(read("_data/navigation.yml"))
    blog_link = nav.fetch("main").find { |item| item["title"] == "Blogs" }

    assert_equal "/blogs/", blog_link && blog_link["url"]
  end

  def test_blog_collection_is_configured
    config = YAML.safe_load(read("_config.yml"))
    blogs = config.fetch("collections").fetch("blogs")

    assert_equal true, blogs["output"]
    assert_equal "/blogs/:name/", blogs["permalink"]
  end

  def test_blog_index_has_search_and_card_markup
    page = read("_pages/blog.md")

    assert_includes page, "permalink: /blogs/"
    assert_includes page, "data-blog-search"
    assert_includes page, "data-blog-card"
  end

  def test_blog_detail_layout_exists
    layout = read("_layouts/blog-post.html")

    assert_includes layout, "Back to blogs"
    assert_includes layout, "blog-post__content"
  end

  def test_blog_detail_uses_reader_flow_with_optional_html_embed
    layout = read("_layouts/blog-post.html")

    assert_includes layout, "blog-article"
    assert_includes layout, "page.embed_path"
    assert_includes layout, "blog-post__embed-frame"
    assert_includes layout, "data-blog-embed-frame"
    refute_includes layout, 'class="blog-post"'
  end

  def test_patchtst_blog_post_has_card_metadata
    post_path = "_blogs/patchtst-time-series-transformers.md"

    metadata = front_matter(post_path)
    assert_equal "PatchTST: A Time Series Is Worth 64 Words", metadata["title"]
    assert_includes metadata["summary"], "Transformer-based time-series forecasting"
    assert_equal "/assets/blogs/patchtst_official_discussion_handout.html", metadata["embed_path"]
    assert_includes metadata["tags"], "PatchTST"
    assert_includes metadata["tags"], "Forecasting"
    assert File.exist?(File.join(ROOT, "assets/blogs/patchtst_official_discussion_handout.html"))
  end

  def test_blog_pages_have_content_specific_seo_metadata
    blog_index = front_matter("_pages/blog.md")
    post = front_matter("_blogs/patchtst-time-series-transformers.md")

    assert_includes blog_index["seo_title"], "AI, Forecasting, and Research Notes"
    assert_includes blog_index["description"], "PatchTST"
    assert_includes blog_index["keywords"], "Transformer-based time-series forecasting"

    assert_includes post["seo_title"], "PatchTST"
    assert_includes post["description"], "ICLR 2023"
    assert_includes post["keywords"], "channel independence"
    assert_equal "/assets/images/blogs/patchtst-og.png", post["card_image"]
    assert File.exist?(File.join(ROOT, "assets/images/blogs/patchtst-og.png"))
  end

  def test_blog_seo_template_outputs_article_social_and_structured_data
    seo = read("_includes/seo.html")

    assert_includes seo, 'page.collection == "blogs"'
    assert_includes seo, '<meta name="keywords"'
    assert_includes seo, '<meta name="twitter:card"'
    assert_includes seo, 'article:tag'
    assert_includes seo, '"@type": "Blog"'
    assert_includes seo, '"@type": "BlogPosting"'
  end

  def test_blog_search_script_and_styles_are_present
    assert_includes read("_includes/head/custom.html"), "data-blog-search"
    assert_includes read("_includes/head/custom.html"), "data-blog-embed-frame"
    assert_includes read("assets/css/main.scss"), ".blog-card"
  end

  def test_blog_embed_uses_wide_reader_widths
    styles = read("assets/css/main.scss")
    handout = read("assets/blogs/patchtst_official_discussion_handout.html")

    assert_match(/\.blog-article\s*\{\s*width: min\(1240px, 100%\);/m, styles)
    assert_match(/\.page\s*\{\s*max-width: 1240px;/m, handout)
  end

  def test_blog_embed_keeps_sidebar_fixed_against_parent_scroll
    head = read("_includes/head/custom.html")
    handout = read("assets/blogs/patchtst_official_discussion_handout.html")

    assert_includes handout, "data-blog-embed-sticky-boundary"
    assert_includes handout, "data-blog-embed-sticky-sidebar"
    assert_includes head, "updateBlogEmbedStickySidebar"
    assert_includes head, "data-blog-embed-sticky-sidebar"
    assert_includes head, "translateY("
  end

  def test_footer_bio_shell_is_not_rendered
    refute_includes read("_includes/footer/custom.html"), "site-footer-shell"
  end
end
