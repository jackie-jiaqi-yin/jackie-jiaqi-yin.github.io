---
title: "News"
permalink: /news/
layout: single
author_profile: true
classes:
  - news-page
  - wide
---

<div class="news-section news-section--wide">
  <h2>🗂️ News Archive</h2>
  <div class="news-slider news-slider--vertical" id="news-archive-slider" aria-label="News archive slider">
    <button type="button" class="news-slider-control up" aria-label="Scroll up">&#9650;</button>
    <div class="news-slider-viewport news-slider-viewport--archive">
      <ul class="news-list">
        <li>
          <span class="news-date">November 2025</span>
          <span class="news-content">🤝 <strong>New Collaboration:</strong> Started collaborating with Columbia University on AI BioAge project, applying advanced AI techniques to biological aging research and longevity science.</span>
        </li>
        <li>
          <span class="news-date">October 2025</span>
          <span class="news-content">📚 <strong>Website Launch:</strong> Published <a href="https://jackie-jiaqi-yin.github.io/llm-learning-journey/">LLM Learning Notes</a> - an actively updated documentation site featuring my personal insights and explorations in Large Language Models and AI.</span>
        </li>
        <li>
          <span class="news-date">October 2025</span>
          <span class="news-content">🚀 <strong>Open Source Release:</strong> Published <a href="https://github.com/microsoft/da-forge">DA-Forge</a> Python package for declarative agent creation and deployment.</span>
        </li>
        <li>
          <span class="news-date">September 2025</span>
          <span class="news-content">🎉 <strong>Joined Copilot Notebooks</strong> as an early AI scientist member at Microsoft.</span>
        </li>
        <li>
          <span class="news-date">September 2025</span>
          <span class="news-content">📝 <strong>Paper Accepted!</strong> Our work on <a href="https://arxiv.org/abs/2508.07179">Schema Lineage Extraction at Scale: Multilingual Pipelines, Composite Evaluation, and Language-Model Benchmarks</a> was accepted to <strong>NeurIPS 2025</strong> LLM Evaluation Workshop and DL4C Workshop.</span>
        </li>
        <li>
          <span class="news-date">August 2025</span>
          <span class="news-content">🚀 <strong>Open Source Release:</strong> Published <a href="https://github.com/microsoft/SLiCE">SLiCE</a> Python package on PyPI for schema lineage evaluation.</span>
        </li>
        <li>
          <span class="news-date">July 2025</span>
          <span class="news-content">📈 <strong>ArxivSummary reaches 60+ subscribers</strong> at Microsoft, delivering weekly AI research summaries.</span>
        </li>
        <li>
          <span class="news-date">June 2025</span>
          <span class="news-content">🤖 <strong>Demo Release:</strong> Launched data reasoning agent with customized RAG system capable of answering database questions and writing accurate SQL code, leveraging schema lineage research. <a href="https://drive.google.com/file/d/1fI11E8DukAXvIrX8RgPeWs8ExYYpez7Q/view?usp=sharing">[Watch Demo Video]</a></span>
        </li>
        <li>
          <span class="news-date">May 2025</span>
          <span class="news-content">⚡ <strong>AI Newsletter Upgrade:</strong> Enhanced AI infrastructure with map-reduce and recursive summary techniques to handle large-scale summaries of 300+ papers.</span>
        </li>
        <li>
          <span class="news-date">May 2025</span>
          <span class="news-content">🌟 <strong>Open Source Release:</strong> Published <a href="https://github.com/jackie-jiaqi-yin/ArxivSummary">ArxivSummary</a> as open source on GitHub, sharing the AI newsletter infrastructure with the community.</span>
        </li>
        <li>
          <span class="news-date">February 2025</span>
          <span class="news-content">🎊 <strong>AI Newsletter Launch:</strong> Deployed AI newsletter service (AML pipeline) within Microsoft with first subscriber - my manager Xiya!</span>
        </li>
      </ul>
    </div>
    <button type="button" class="news-slider-control down" aria-label="Scroll down">&#9660;</button>
  </div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    var sliders = document.querySelectorAll(".news-slider--vertical");
    sliders.forEach(function (slider) {
      var viewport = slider.querySelector(".news-slider-viewport");
      var upButton = slider.querySelector(".news-slider-control.up");
      var downButton = slider.querySelector(".news-slider-control.down");

      if (!viewport || !upButton || !downButton) {
        return;
      }

      function scrollStep() {
        var firstItem = viewport.querySelector("li");
        var itemHeight = firstItem ? firstItem.offsetHeight : viewport.clientHeight / 2;
        return Math.max(80, itemHeight * 0.9);
      }

      function updateControlState() {
        var atTop = viewport.scrollTop <= 2;
        var atBottom = viewport.scrollTop + viewport.clientHeight >= viewport.scrollHeight - 2;
        upButton.disabled = atTop;
        downButton.disabled = atBottom;
      }

      upButton.addEventListener("click", function () {
        viewport.scrollBy({ top: -scrollStep(), behavior: "smooth" });
      });

      downButton.addEventListener("click", function () {
        viewport.scrollBy({ top: scrollStep(), behavior: "smooth" });
      });

      viewport.addEventListener("scroll", updateControlState);
      window.addEventListener("resize", updateControlState);
      updateControlState();
    });
  });
</script>
