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
        <li><a href="{{ '/2002-2005/index.html' | relative_url }}" class="nav-link">2002-2005: Research & Education</a></li>
        <li><a href="{{ '/2005-2007/index.html' | relative_url }}" class="nav-link">2005-2007: Sr. Software Consultant</a></li>
        <li><a href="{{ '/2007-2009/index.html' | relative_url }}" class="nav-link">2007-2009: Tech Lead / Sr. Engineer</a></li>
        <li><a href="{{ '/2009-2016/index.html' | relative_url }}" class="nav-link">2009-2016: Senior Engineering Manager</a></li>
        <li><a href="{{ '/2016-2019/index.html' | relative_url }}" class="nav-link">2016-2019: Sr. Technical Program Manager</a></li>
        <li><a href="{{ '/2019-present/index.html' | relative_url }}" class="nav-link">2019-Present: Director, Data and AI Platform</a></li>
        </ul>
    </div>
    
    <div class="timeline-content">
      <div class="timeline-highlight">
        <h2>Current Role</h2>
        <h3>Director, Data and AI Platform at Visa Inc.</h3>
        <p>Leading the development of next-generation data and AI platforms, managing a team of 80+ engineers, and driving innovation in financial technology.</p>
      </div>
      
      <div class="timeline-highlight">
        <h2>Key Achievements</h2>
        <ul>
          <li>Scaled Hulu's infrastructure to support 25M+ users</li>
          <li>Architected REST-based microservices at Intuit</li>
          <li>Developed business formation products at MyCorporation</li>
          <li>Created innovative data visualization solutions at P&G</li>
          <li>Published research in wireless networking</li>
        </ul>
      </div>
      
      <div class="timeline-highlight">
        <h2>Technical Leadership</h2>
        <ul>
          <li>Grew engineering teams from 3 to 80+ members</li>
          <li>Architected petabyte-scale data platforms</li>
          <li>Implemented AI/ML solutions with GPT-4 and RAG</li>
          <li>Led cloud migrations and infrastructure scaling</li>
          <li>Established engineering best practices and standards</li>
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
  display: block;
  padding: 10px 15px;
  color: #3498db;
  text-decoration: none;
  border-radius: 4px;
  transition: background-color 0.2s;
}

.timeline-nav .nav-link:hover {
  background-color: #f5f7fa;
  color: #2980b9;
}

.timeline-content {
  flex-grow: 1;
}

.timeline-highlight {
  background: #fff;
  border-radius: 8px;
  padding: 25px;
  margin-bottom: 25px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.05);
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

.timeline-highlight ul {
  padding-left: 20px;
}

.timeline-highlight li {
  margin-bottom: 8px;
  line-height: 1.5;
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
    text-align: center;
    padding: 8px 10px;
    font-size: 0.9em;
  }
}

@media (max-width: 480px) {
  .timeline-nav li {
    flex: 1 1 100%;
  }
}
</style>
