---
layout: resume
title: Professional Timeline | Harish Raghavendra
---

<header class="header">
    <div class="header-content">
        <div class="profile-section">
            <div class="profile-info">
                <h1>Professional Journey</h1>
                <div class="title">20+ Years of Building Scalable Systems and Leading High-Performing Teams</div>
            </div>
        </div>
    </div>
</header>

<div class="timeline-page">
  <div class="timeline-container">
    <div class="timeline-nav">
      <h3>Career Milestones</h3>
      <ul>
        <li><a href="{{ '/2019-present/index.html' | relative_url }}" class="nav-link" data-domains="grc,ai,platform"><i class="fas fa-shield-alt"></i><span>2019-Present</span><small>Data &amp; AI Governance</small></a></li>
        <li><a href="{{ '/2016-2019/index.html' | relative_url }}" class="nav-link" data-domains="platform,fintech"><i class="fas fa-network-wired"></i><span>2016-2019</span><small>Sr. Tech Program Manager</small></a></li>
        <li><a href="{{ '/2009-2016/index.html' | relative_url }}" class="nav-link" data-domains="platform,media"><i class="fas fa-tv"></i><span>2009-2016</span><small>Senior Engineering Manager</small></a></li>
        <li><a href="{{ '/2007-2009/index.html' | relative_url }}" class="nav-link" data-domains="fintech"><i class="fas fa-credit-card"></i><span>2007-2009</span><small>Technical Lead</small></a></li>
        <li><a href="{{ '/2005-2007/index.html' | relative_url }}" class="nav-link" data-domains="consulting,platform"><i class="fas fa-lightbulb"></i><span>2005-2007</span><small>Sr. Software Consultant</small></a></li>
        <li><a href="{{ '/2002-2005/index.html' | relative_url }}" class="nav-link" data-domains="research,ai"><i class="fas fa-flask"></i><span>2002-2005</span><small>Research Engineer</small></a></li>
      </ul>
    </div>
    
    <div class="timeline-content">
      <div class="timeline-filters" role="group" aria-label="Filter achievements by domain">
        <button class="filter-button is-active" data-domain="all" aria-pressed="true">All</button>
        <button class="filter-button" data-domain="grc" aria-pressed="false"><i class="fas fa-shield-alt"></i> GRC &amp; Risk</button>
        <button class="filter-button" data-domain="ai" aria-pressed="false"><i class="fas fa-brain"></i> AI &amp; Data</button>
        <button class="filter-button" data-domain="platform" aria-pressed="false"><i class="fas fa-layer-group"></i> Platform</button>
        <button class="filter-button" data-domain="fintech" aria-pressed="false"><i class="fas fa-credit-card"></i> FinTech</button>
      </div>

      <div class="timeline-highlight" data-domains="grc,ai,platform">
        <div class="timeline-badges">
          <span class="domain-badge badge--grc"><i class="fas fa-shield-alt"></i> GRC</span>
          <span class="domain-badge badge--ai"><i class="fas fa-brain"></i> AI</span>
          <span class="domain-badge badge--platform"><i class="fas fa-layer-group"></i> Platform</span>
        </div>
        <h2>Current Role</h2>
        <h3>Director, Data &amp; AI Governance at Visa Inc.</h3>
        <p>Leading Visa's AI-driven GRC platform (40+ agents, 1M+ lines of code, 450+ APIs, 100+ features) and the NextGen Merchant Data Platform spanning 136M+ merchant locations and 215B+ transactions.</p>
      </div>

      <div class="timeline-highlight" data-domains="platform,fintech,ai">
        <div class="timeline-badges">
          <span class="domain-badge badge--platform"><i class="fas fa-layer-group"></i> Platform</span>
          <span class="domain-badge badge--ai"><i class="fas fa-brain"></i> AI</span>
        </div>
        <h2>Key Achievements</h2>
        <ul>
          <li>Built Visa's Agentic AI GRC platform unlocking multi-million dollar revenue and cutting assessment time 95%.</li>
          <li>Defined the 3-year NextGen Merchant Data Platform strategy across Merchants, PayFacs, and Acquirers (136M+ locations).</li>
          <li>Drove Visa's self-supported Core Hadoop 3.x distribution—saving $85M+ over 5 years.</li>
          <li>Led 2-year Hadoop in-place upgrade across 175+ data apps, 90+ clusters, and 100s of PB.</li>
          <li>Scaled Hulu Live TV datastore for Super Bowl, GoT Finale, Winter Olympics, NCAA—Cassandra at 1M+ qps.</li>
        </ul>
      </div>

      <div class="timeline-highlight" data-domains="grc,ai,platform">
        <div class="timeline-badges">
          <span class="domain-badge badge--grc"><i class="fas fa-shield-alt"></i> GRC</span>
          <span class="domain-badge badge--ai"><i class="fas fa-brain"></i> AI</span>
        </div>
        <h2>Technical Leadership</h2>
        <ul>
          <li>Grew the Visa data platform team from 3 to 80+ engineers across 5 scrum teams with &lt;15% attrition.</li>
          <li>Owns 30+ big data products at 215B+ transactions Visa-wide.</li>
          <li>Shipped a self-service agent-based API platform managing 12K+ servers via 1,500+ APIs (NodeJS/ReactJS); 14 teams onboarded.</li>
          <li>Multi-LLM orchestration across GPT-4.1, GPT-5, and Claude Sonnet 3.7 / 4.0 / 4.5 in production.</li>
          <li>Cleared external audit of the Hadoop program with the Federal Reserve, FBA, and government agencies.</li>
        </ul>
      </div>
    </div>
  </div>
</div>

<style>
.timeline-page {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.timeline-page h1 {
  color: #2c3e50;
  margin-bottom: 10px;
}

.timeline-page .subtitle {
  color: #7f8c8d;
  font-size: 1.2em;
  margin-bottom: 30px;
  display: block;
}

.timeline-container {
  display: flex;
  gap: 30px;
  margin-top: 30px;
}

.timeline-nav {
  width: 280px;
  flex-shrink: 0;
}

.timeline-nav h3 {
  color: #2c3e50;
  border-bottom: 2px solid #ecf0f1;
  padding-bottom: 10px;
  margin-top: 0;
}

.timeline-nav ul {
  list-style: none;
  padding: 0;
  margin: 15px 0 0 0;
}

.timeline-nav li {
  margin-bottom: 10px;
}

.timeline-nav .nav-link {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 0.25rem;
  padding: 12px 16px;
  color: #3498db;
  text-decoration: none;
  border-radius: 8px;
  border: 1px solid transparent;
  transition: background-color 0.2s, transform 0.2s, border-color 0.2s;
}

.timeline-nav .nav-link i {
  font-size: 1.1rem;
  color: #2c3e50;
}

.timeline-nav .nav-link span {
  font-weight: 600;
  color: #2c3e50;
}

.timeline-nav .nav-link small {
  color: #718096;
  font-size: 0.8rem;
}

.timeline-nav .nav-link:hover {
  background-color: #f5f7fa;
  color: #2980b9;
  border-color: rgba(52, 152, 219, 0.25);
  transform: translateY(-1px);
}

.timeline-nav .nav-link.nav-link--dimmed {
  opacity: 0.45;
}

.timeline-nav .nav-link.nav-link--active {
  background-color: rgba(52, 152, 219, 0.08);
  border-color: rgba(52, 152, 219, 0.35);
}

.timeline-content {
  flex-grow: 1;
}

.timeline-filters {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
  margin-bottom: 1.75rem;
}

.filter-button {
  border: 1px solid rgba(52, 152, 219, 0.4);
  background: #ffffff;
  color: #2c3e50;
  border-radius: 999px;
  padding: 0.55rem 1.1rem;
  font-size: 0.9rem;
  font-weight: 500;
  cursor: pointer;
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  transition: background-color 0.2s, color 0.2s, transform 0.2s;
}

.filter-button i {
  color: #3498db;
}

.filter-button:hover {
  transform: translateY(-1px);
}

.filter-button.is-active {
  background: #3498db;
  color: #ffffff;
  border-color: #3498db;
}

.filter-button.is-active i {
  color: #ffffff;
}

.timeline-highlight {
  background: #fff;
  border-radius: 12px;
  padding: 25px;
  margin-bottom: 25px;
  box-shadow: 0 10px 28px rgba(15, 23, 42, 0.08);
  border-left: 4px solid #3498db;
}

.timeline-highlight h2 {
  color: #2c3e50;
  margin-top: 0;
  font-size: 1.5em;
}

.timeline-highlight h3 {
  color: #3498db;
  margin: 10px 0;
  font-size: 1.2em;
}

.timeline-highlight p {
  line-height: 1.6;
  color: #34495e;
}

.timeline-badges {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1rem;
}

.domain-badge {
  display: inline-flex;
  align-items: center;
  gap: 0.35rem;
  padding: 0.35rem 0.75rem;
  border-radius: 999px;
  font-size: 0.8rem;
  font-weight: 600;
  color: #2c3e50;
  background: rgba(52, 152, 219, 0.12);
}

.domain-badge i {
  font-size: 0.95rem;
}

.badge--grc {
  background: rgba(46, 204, 113, 0.18);
  color: #1e7a46;
}

.badge--ai {
  background: rgba(155, 89, 182, 0.18);
  color: #6c2d89;
}

.badge--platform {
  background: rgba(52, 152, 219, 0.18);
  color: #1f4b6d;
}

.badge--fintech {
  background: rgba(241, 196, 15, 0.22);
  color: #9a7505;
}

.timeline-highlight ul {
  padding-left: 20px;
}

.timeline-highlight li {
  margin-bottom: 8px;
  line-height: 1.5;
}

.timeline-highlight.is-hidden {
  display: none;
}

/* Responsive Design */
@media (max-width: 768px) {
  .timeline-container {
    flex-direction: column;
  }
  
  .timeline-nav {
    width: 100%;
    margin-bottom: 30px;
  }
  
  .timeline-nav ul {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
  }
  
  .timeline-nav li {
    flex: 1 1 calc(50% - 10px);
    margin-bottom: 10px;
  }
  
  .timeline-nav .nav-link {
    padding: 12px;
    font-size: 0.9em;
  }
  
  .timeline-nav .nav-link span {
    font-size: 1rem;
  }
  
  .timeline-nav .nav-link small {
    font-size: 0.8rem;
  }
}

@media (max-width: 480px) {
  .timeline-nav li {
    flex: 1 1 100%;
  }
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function () {
  const filterButtons = document.querySelectorAll('.filter-button');
  const highlights = document.querySelectorAll('.timeline-highlight');
  const navLinks = document.querySelectorAll('.timeline-nav .nav-link');

  function normalizeDomains(value) {
    return (value || '')
      .split(',')
      .map(function (item) { return item.trim(); })
      .filter(Boolean);
  }

  function applyFilter(targetDomain) {
    highlights.forEach(function (card) {
      const domains = normalizeDomains(card.dataset.domains);
      const match = targetDomain === 'all' || domains.includes(targetDomain);
      card.classList.toggle('is-hidden', !match);
    });

    navLinks.forEach(function (link) {
      const domains = normalizeDomains(link.dataset.domains);
      const match = targetDomain === 'all' || domains.includes(targetDomain);
      link.classList.toggle('nav-link--dimmed', !match);
      if (targetDomain === 'all') {
        link.classList.remove('nav-link--active');
      } else {
        link.classList.toggle('nav-link--active', match);
      }
    });
  }

  filterButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      const domain = button.dataset.domain;
      filterButtons.forEach(function (btn) {
        btn.classList.remove('is-active');
        btn.setAttribute('aria-pressed', 'false');
      });
      button.classList.add('is-active');
      button.setAttribute('aria-pressed', 'true');
      applyFilter(domain);
    });
  });

  applyFilter('all');
});
</script>
