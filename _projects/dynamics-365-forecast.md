---
title: "Dynamics 365 Forecast"
subtitle: "Production forecasting for Dynamics 365 Customer Service."
order: 7
card_tag: "Forecasting"
card_description: "Daily and intraday demand forecasts for customer service planning."
card_image: "/assets/images/projects/forecast-dashboard.png"
image_alt: "Dynamics 365 Forecast dashboard"
summary: "Dynamics 365 Forecast is a globally available Customer Service forecasting feature, and I served as the solo scientist who designed the forecasting algorithm behind it. The work turned historical service signals into a production planning capability that helps teams forecast demand with more confidence."
impact: "It moved forecasting from a model-building exercise into a customer-facing product feature, with daily and intraday planning horizons, channel and queue slicing, seasonality-aware outputs, and confidence bands that make the results operationally useful."
tools:
  - Python
  - Time Series Modeling
  - Forecast Evaluation
  - Product ML
  - Dynamics 365
links:
  - label: "Microsoft Learn"
    url: "https://learn.microsoft.com/en-us/dynamics365/customer-service/use/use-volume-forecasting"
    icon: "fas fa-book"
---
## What I Built

As the solo scientist on the forecasting algorithm, I designed the model stack behind Dynamics 365 Customer Service volume forecasting. The feature supports daily forecasts up to six months and intraday 15-minute forecasts up to six weeks, with slicing by channel and queue, seasonality-aware views, holiday support, and forecast confidence bands.

## Algorithm Design

From the design and implementation perspective, I structured the pipeline as a sequence of practical stages: outlier detection, data preprocessing, smoothing, modeling, fine-tune, cross-validation, holiday effect learning, and forecasting. The goal was to learn stable demand patterns from aggregate operational history rather than rely on raw customer content, so the system could stay accurate, robust, and production-ready.

## Why It Mattered

The work turned an ML pipeline into a shipping product capability. It gave Customer Service teams a reliable way to anticipate demand, plan staffing, and make decisions from a forecasting system that is built for real operational use.
