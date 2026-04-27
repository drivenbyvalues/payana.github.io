---
layout: default
title: Articles | Harish Raghavendra
permalink: /articles/
---

<header class="header">
  <div class="header-content">
    <div class="profile-section">
      <div class="profile-info">
        <h1>Articles</h1>
        <div class="title">Deep dives on AI-driven GRC, multi-agent system design, and responsible AI in regulated industries</div>
      </div>
    </div>
  </div>
</header>

<section class="articles-page">
  <p class="articles-intro">
    Long-form writeups of features, architectures, and patterns I designed and shipped on the AI-Driven GRC Platform.
    Each article covers <strong>why it was needed</strong>, <strong>how it works under the hood</strong>, and the <strong>responsible-AI controls</strong>
    that make it production-grade in a regulated environment.
  </p>

  <h2 class="articles-heading">Foundations · 2025</h2>
  <ul class="articles-list">
    <li class="articles-item">
      <a href="{{ '/articles/2025-agent-suite-architecture/' | relative_url }}">
        <span class="articles-tag">System Design</span>
        <span class="articles-title">The Agent Suite — A Governance Operating System for Assessments</span>
      </a>
      <p>Seven coordinated agents (Intake, Triage, Risk Automation, Green Zone, Reviewer, Policy, Prioritization) on a shared vocabulary with explicit feedback loops — designed as a coherent system, not a bag of tools.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2025-llm-infrastructure/' | relative_url }}">
        <span class="articles-tag">AI Infrastructure</span>
        <span class="articles-title">Multi-Provider LLM Infrastructure — One Source of Truth for 16+ Agents</span>
      </a>
      <p>A single LLMAuthService routes 16+ specialized agents across OpenAI, Anthropic, Gemini, and Azure OpenAI with automatic fallback, database-backed prompt versioning, and built-in cost telemetry.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2025-knowledge-graph/' | relative_url }}">
        <span class="articles-tag">Cross-Agent Memory</span>
        <span class="articles-title">Knowledge Graph for Cross-Agent Context — Institutional Memory That Compounds</span>
      </a>
      <p>Every Agent Run reads from and writes to an organizational graph of departments, products, data categories, risks, controls, and precedents — so each new assessment starts with the lessons of every previous one.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2025-intelligent-assignment/' | relative_url }}">
        <span class="articles-tag">Routing</span>
        <span class="articles-title">Intelligent Assignment Engine — Matching Assessments to the Right Reviewer</span>
      </a>
      <p>Auto-routes each assessment to the best reviewer using a transparent score blending product, business unit, and skill fit with workload — with configurable knobs to tune the quality-vs-fairness trade-off per review type.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2025-continuous-auto-prioritization/' | relative_url }}">
        <span class="articles-tag">Risk Engine</span>
        <span class="articles-title">Continuous Auto-Prioritization — Keeping the Queue Honest</span>
      </a>
      <p>Re-scores every open assessment whenever its facts change (new evidence, scope mutation, contradicted claim, deadline shift), with hysteresis bands and cool-downs to avoid priority whiplash.</p>
    </li>
  </ul>

  <h2 class="articles-heading">Advanced Capabilities · 2026</h2>
  <ul class="articles-list">
    <li class="articles-item">
      <a href="{{ '/articles/2026-grounded-review-summaries/' | relative_url }}">
        <span class="articles-tag">RAG · Citations</span>
        <span class="articles-title">Grounded Review Summaries — RAG with Citations You Can Trust</span>
      </a>
      <p>Every sub-review summary is generated from retrieved evidence with citations on every claim. Hybrid retrieval (vector + BM25 + entity graph) feeds a Verifier agent that re-checks each citation actually entails the claim before a human ever sees it.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2026-mcp-server/' | relative_url }}">
        <span class="articles-tag">MCP · Protocol</span>
        <span class="articles-title">MCP Server — Natural Language to Structured Assessments</span>
      </a>
      <p>A Model Context Protocol server that turns free-form descriptions into fully structured, validated, JWT-authenticated assessments — with provenance, per-field confidence, and reviewer overrides preserved end-to-end.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2026-green-zone-agent/' | relative_url }}">
        <span class="articles-tag">Responsible AI</span>
        <span class="articles-title">Green Zone Agent — Reusable Governance Envelopes</span>
      </a>
      <p>Stewards author reusable "green zone" envelopes — pre-approved boundaries within which assessments can be auto-handled. The agent maps each assessment to its best-fit zone, surfaces conditions, and escalates anything that crosses a boundary.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2026-template-transformation/' | relative_url }}">
        <span class="articles-tag">Schema Transformation</span>
        <span class="articles-title">AI-Assisted Template Transformation — Five-Strategy Semantic Mapping</span>
      </a>
      <p>Five complementary matching strategies (exact, pattern, semantic, contextual, AI-inferred) with weighted confidence aggregation, dual backend/frontend AI failover for 99.9% availability, and adaptive learning that gets sharper with every transformation.</p>
    </li>
    <li class="articles-item">
      <a href="{{ '/articles/2026-dpia-lia-reviews/' | relative_url }}">
        <span class="articles-tag">Privacy Reviews</span>
        <span class="articles-title">DPIA & LIA Reviews — Defensible Privacy Artifacts at Speed</span>
      </a>
      <p>AI-assisted Data Protection Impact Assessments (GDPR Art. 35) and Legitimate Interest Assessments (Art. 6(1)(f)) — pre-filled from intake and evidence with citations, validated by counsel, audit-ready by default.</p>
    </li>
  </ul>

  <h2 class="articles-heading">Architecture Deep Dive</h2>
  <ul class="articles-list">
    <li class="articles-item">
      <a href="{{ '/2026-deep-dive/' | relative_url }}">
        <span class="articles-tag">Long Read</span>
        <span class="articles-title">Reimagining GRC — From Static Compliance to Intelligent Risk Orchestration</span>
      </a>
      <p>The full architectural narrative — Agent Runs, multi-dimensional rubrics, evidence-driven Claims with polarity, dynamic workflows, knowledge-graph context, and explainable Decision Traces.</p>
    </li>
  </ul>
</section>

<style>
.articles-page { max-width: 980px; margin: 0 auto; padding: 24px 20px 60px; }
.articles-intro { font-size: 1.05rem; line-height: 1.6; color: #34495e; margin-bottom: 28px; }
.articles-heading { color: #2c3e50; border-bottom: 2px solid #ecf0f1; padding-bottom: 10px; margin: 36px 0 18px; font-size: 1.35rem; }
.articles-list { list-style: none; padding: 0; margin: 0; display: grid; gap: 18px; }
.articles-item { background: #fff; border-radius: 12px; padding: 20px 22px; box-shadow: 0 6px 18px rgba(15,23,42,0.06); border-left: 4px solid #3498db; transition: transform 0.15s, box-shadow 0.15s; }
.articles-item:hover { transform: translateY(-2px); box-shadow: 0 12px 28px rgba(15,23,42,0.10); }
.articles-item a { display: flex; flex-direction: column; gap: 6px; text-decoration: none; }
.articles-tag { display: inline-block; align-self: flex-start; font-size: 0.75rem; font-weight: 600; letter-spacing: 0.05em; text-transform: uppercase; color: #3498db; background: rgba(52, 152, 219, 0.1); padding: 4px 10px; border-radius: 999px; }
.articles-title { font-size: 1.15rem; font-weight: 600; color: #2c3e50; line-height: 1.35; }
.articles-item p { color: #34495e; line-height: 1.55; margin: 8px 0 0; font-size: 0.95rem; }
@media (max-width: 640px) {
  .articles-page { padding: 16px 14px 48px; }
  .articles-title { font-size: 1.05rem; }
}
</style>
