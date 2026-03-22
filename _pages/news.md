---
title: "News"
permalink: /news/
layout: default
seo_title: "Jackie Jiaqi Yin News | OpenAI, Research, Open Source"
description: "Recent updates from Jackie Jiaqi Yin across OpenAI work, research milestones, forecasting, grounded AI systems, and open-source releases."
author_profile: false
classes:
  - news-landing-page
---

<section class="page-hero">
  <div class="page-shell">
    <p class="eyebrow">News</p>
    <h1>Recent updates across work, research, and open source.</h1>
    <p class="page-hero__copy">
      A running log of major milestones, product work, research collaborations, and releases.
    </p>
  </div>
</section>

<section class="section-shell">
  <div class="page-shell">
    <div class="news-grid">
      {% for item in site.data.news %}
        {% if item.url %}
          <a class="news-card news-card--link" href="{{ item.url }}" data-preview-modal="news" data-preview-title="{{ item.title | escape }}" data-preview-summary="{{ item.summary | escape }}">
            <span class="news-card__link-badge">Link</span>
            <span class="news-card__date">{{ item.date_label }}</span>
            <h2>{{ item.title }}</h2>
            <p>{{ item.summary }}</p>
          </a>
        {% else %}
          <article class="news-card">
            <span class="news-card__date">{{ item.date_label }}</span>
            <h2>{{ item.title }}</h2>
            <p>{{ item.summary }}</p>
          </article>
        {% endif %}
      {% endfor %}
    </div>
  </div>
</section>
