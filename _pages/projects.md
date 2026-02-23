---
title: "Projects"
permalink: /projects/
layout: single
author_profile: true
toc: true
toc_label: "Projects"
toc_icon: "list"
toc_sticky: true
---

## codex-skills - Reusable Codex Skill Pack

I built **codex-skills** as an open-source repository of reusable Codex skills that package repeatable workflows for research and AI engineering tasks. The current release includes `arxiv-latest-summary`, a skill that turns plain-language research interests into recent arXiv scans and polished HTML/PDF outputs. This project makes it easier to install and run high-quality, task-focused automations directly in Codex.
- **Open Source**: [GitHub: jackie-jiaqi-yin/codex-skills](https://github.com/jackie-jiaqi-yin/codex-skills)
- **Example Generation**: [View a sample generated report](../assets/demos/codex-skills/report.html)

## Schema Lineage Extraction at Scale
<img src="/assets/images/projects/schemalineage.png" alt="schemaLineage" width="400">

I led the development of a novel framework to tackle semantic drift in enterprise data pipelines, where multilingual scripts often lose the connection between source metadata and downstream transformations. Our work automatically extracts fine-grained schema lineage from diverse pipeline scripts and introduces a new composite evaluation metric (SLiCE) along with a benchmark dataset of 1,700 manually annotated lineages. Through experiments across 12 language models (ranging from 1.3B to GPT-4 scale), we demonstrated that even a single reasoning trace with a 32B open-source model can approach GPT-series performance. This research was accepted at the **NeurIPS 2025** LLM Evaluation Workshop and the DL4C (Deep Learning for Code) Workshop, laying a foundation for trustworthy, large-scale data lineage extraction and evaluation in real enterprise settings—a key enabler for grounded AI/LLM systems working with business data.  
- **Paper Link**: [Schema Lineage Extraction at Scale: Multilingual Pipelines, Composite Evaluation, and Language-Model Benchmarks](https://arxiv.org/abs/2508.07179)



## SLiCE – Schema Lineage Composite Evaluation (Python package)
<img src="/assets/images/projects/slice.png" alt="slice" width="300">

I developed **SLiCE**, a Python package that implements the composite evaluation metric introduced in my schema lineage extraction research. This open-source tool enables researchers and practitioners to systematically assess the accuracy of schema-lineage extraction and leverages a new benchmark dataset for evaluating lineage extraction models. By providing a reusable, standardized way to evaluate complex lineage extraction tasks, SLiCE helps shift enterprise AI workflows from ad-hoc assessments to rigorous, reliable metrics.  
- **Open Source**: [GitHub: microsoft/SLiCE](https://github.com/microsoft/SLiCE) · [PyPI: slice-score](https://pypi.org/project/slice-score/)


## DA-Forge – Declarative Agent Creation Tool  

I created **DA-Forge**, a Python CLI tool that automates the creation and deployment of declarative agents grounded in contextual workspaces, such as Copilot Notebooks. By automating manifest generation, capability injection, and sideloading, I reduced deployment time from roughly 85 minutes manually to about 2 minutes using the tool. This project supports rapid iteration and reliable deployment of agents in enterprise AI workflows, making it possible to scale grounded, context-aware assistants efficiently.  
- **Open Source**: [GitHub: microsoft/da-forge](https://github.com/microsoft/da-forge)

---

## LLM Learning Journey – Structured Knowledge Repository
<img src="/assets/images/projects/llm-learning-journey.png" alt="LLM Learning Journey" width="400">

I built **LLM Learning Journey** as a comprehensive, open-source documentation platform for exploring Large Language Models and AI research. Built with MkDocs Material, the site features a hierarchical content organization system that enables efficient knowledge management across diverse AI topics—from foundational concepts like RAG and prompt engineering to cutting-edge developments in AI agents and model compression. The architecture supports scalable content growth through modular markdown files, automated navigation generation, and tag-based cross-referencing, making it easy to maintain and extend as the field evolves. Beyond technical implementation, this repository captures real-time insights from premier conferences like NeurIPS, synthesizing complex research findings into actionable takeaways.
- **Live Site**: [https://jackie-jiaqi-yin.github.io/llm-learning-journey/](https://jackie-jiaqi-yin.github.io/llm-learning-journey/)
- **Open Source**: [GitHub: jackie-jiaqi-yin/llm-learning-journey](https://github.com/jackie-jiaqi-yin/llm-learning-journey)

---

## ArxivSummary – Internal AI Research Newsletter Service
<img src="/assets/images/projects/arxivsummary.jpg" alt="arxivSummary" width="400">

I created ArxivSummary as a personal side project, which later evolved into an internal newsletter service at Microsoft. This tool delivers daily AI research summaries to over 90 subscribers (as of September 2025) by using large language models to parse arXiv papers, generate concise summaries, and distribute them via email. By transforming research automation into a real-world service, ArxivSummary effectively bridges academic output and internal design intelligence workflows.
- **Open Source**: [GitHub: jackie-jiaqi-yin/ArxivSummary](https://github.com/jackie-jiaqi-yin/ArxivSummary)
- **Blog Post**: [How I Built a Fully Automated AI-Powered Newsletter That Reads Hundreds of Research Papers Daily](https://medium.com/@jiaqiyin1014/how-i-built-a-fully-automated-ai-powered-newsletter-that-reads-hundreds-of-research-papers-daily-497da7514cd0)
- **Newsletter Example**: [View a sample newsletter](../assets/demos/arxivsummary/newsletter.html)
- For Microsoft employees, you can subscribe to the newsletter by clicking [this link](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fidwebelements.microsoft.com%2FGroupManagement.aspx%3FGroup%3Damplify-ai-digest%26Operation%3Djoin&data=05%7C02%7CJackie.Yin%40microsoft.com%7Ca4fff98aa17b4e0f043508de0cb58333%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638962170934136641%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=Bcsma3OXOkLGF4yHLs1WsCsKCa8jjuCRSNxTuPxGUig%3D&reserved=0) with CorpNet access.
