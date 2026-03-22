---
title: "Projects"
permalink: /projects/
layout: default
seo_title: "Jackie Jiaqi Yin Projects | AI Tooling, Forecasting, Research Systems"
description: "Projects by Jackie Jiaqi Yin across AI tooling, forecasting, research workflows, grounded AI systems, and open-source developer tools."
author_profile: false
classes:
  - projects-landing-page
---

<section class="page-hero">
  <div class="page-shell">
    <p class="eyebrow">Projects</p>
    <h1>Research, tooling, and AI systems I’ve built.</h1>
    <p class="page-hero__copy">
      A mix of shipped tooling, open-source work, and research-driven systems across developer
      workflows, enterprise AI, and knowledge tooling.
    </p>
  </div>
</section>

<section class="section-shell">
  <div class="page-shell">
    <div class="showcase-grid">
      {% assign sorted_projects = site.projects | sort: "order" %}
      {% for project in sorted_projects %}
        <a class="showcase-card" href="{{ project.url | relative_url }}">
          <span class="showcase-card__stage">
            {% if project.card_image %}
              <img src="{{ project.card_image | relative_url }}" alt="{{ project.image_alt | default: project.title }}">
            {% else %}
              <span class="showcase-card__placeholder">{{ project.title }}</span>
            {% endif %}
          </span>
          <span class="showcase-card__overlay"></span>
          <span class="showcase-card__body">
            <span class="showcase-card__tag">{{ project.card_tag }}</span>
            <h2>{{ project.title }}</h2>
            <p>{{ project.card_description }}</p>
          </span>
        </a>
      {% endfor %}
    </div>
  </div>
</section>
