---
title: "Blogs"
permalink: /blogs/
layout: default
seo_title: "Blogs on AI, Forecasting, and Research Notes | Jackie Jiaqi Yin"
description: "Research notes and working essays from Jackie Jiaqi Yin on PatchTST, Transformer-based time-series forecasting, AI systems, modeling workflows, and practical research tooling."
keywords:
  - AI research notes
  - Transformer-based time-series forecasting
  - PatchTST
  - machine learning
  - forecasting
  - research workflows
author_profile: false
classes:
  - blog-landing-page
---

{% assign sorted_blogs = site.blogs | sort: "date" | reverse %}

<section class="page-hero blog-hero">
  <div class="page-shell">
    <p class="eyebrow">Blogs</p>
    <h1>Notes, ideas, and working thoughts.</h1>
    <p class="page-hero__copy">
      A lightweight space for longer notes, project reflections, research takeaways, and ideas that
      are still useful before they become fully polished writeups.
    </p>
  </div>
</section>

<section class="section-shell">
  <div class="page-shell">
    <div class="blog-toolbar">
      <label class="blog-search" for="blog-search-input">
        <i class="fas fa-search" aria-hidden="true"></i>
        <span class="visually-hidden">Search blog posts</span>
        <input
          id="blog-search-input"
          type="search"
          placeholder="Search notes by title, topic, or keyword"
          autocomplete="off"
          data-blog-search
        >
      </label>
      <p class="blog-count" data-blog-count>
        {{ sorted_blogs | size }} {% if sorted_blogs.size == 1 %}note{% else %}notes{% endif %}
      </p>
    </div>

    <div class="blog-grid" data-blog-list>
      {% for post in sorted_blogs %}
        {% capture search_text %}
          {{ post.title }}
          {{ post.summary }}
          {{ post.excerpt | strip_html }}
          {% for tag in post.tags %}{{ tag }} {% endfor %}
        {% endcapture %}
        <a
          class="blog-card"
          href="{{ post.url | relative_url }}"
          data-blog-card
          data-search-text="{{ search_text | strip_newlines | downcase | escape }}"
        >
          <span class="blog-card__date">{{ post.date | date: "%b %-d, %Y" }}</span>
          <h2>{{ post.title }}</h2>
          <p>{{ post.summary | default: post.excerpt | strip_html | truncate: 180 }}</p>
          {% if post.tags %}
            <span class="blog-tag-row" aria-label="Tags">
              {% for tag in post.tags limit:3 %}
                <span class="blog-tag">{{ tag }}</span>
              {% endfor %}
            </span>
          {% endif %}
          <span class="blog-card__cta">
            Read note
            <i class="fas fa-arrow-right" aria-hidden="true"></i>
          </span>
        </a>
      {% endfor %}
    </div>

    <p class="blog-empty-state" data-blog-empty hidden>No notes match your search.</p>
  </div>
</section>
