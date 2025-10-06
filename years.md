---
layout: resume
title: Years (1998-2025)
---

<div class="years-page">
    <h1>Years Overview</h1>
    <p>Select a year to view details about that year's activities and achievements.</p>
    
    <div class="years-grid">
        {% assign years = "2025,2024,2023,2022,2021,2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000,1999,1998" | split: "," %}
        {% for year in years %}
            <a href="{{ '/' | append: year | append: '/' | relative_url }}" class="year-card">
                <div class="year-number">{{ year }}</div>
                <div class="year-preview">
                    {% assign year_page = site.pages | where: 'path', '_pages/years/' | append: year | append: '.md' | first %}
                    {% if year_page and year_page.subtitle %}
                        <div class="year-subtitle">{{ year_page.subtitle }}</div>
                    {% endif %}
                </div>
            </a>
        {% endfor %}
    </div>
</div>

<style>
.years-page {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem 1rem;
}

.years-page h1 {
    text-align: center;
    margin-bottom: 1rem;
    color: #2c3e50;
}

.years-page p {
    text-align: center;
    margin-bottom: 2rem;
    color: #6a737d;
}

.years-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 1.5rem;
    margin-top: 2rem;
}

.year-card {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    padding: 1.5rem;
    text-decoration: none;
    color: #2c3e50;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    display: flex;
    flex-direction: column;
    height: 100%;
    border: 1px solid #e1e4e8;
}

.year-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    text-decoration: none;
}

.year-number {
    font-size: 1.5rem;
    font-weight: 600;
    margin-bottom: 0.5rem;
    color: #3498db;
}

.year-subtitle {
    color: #6a737d;
    font-size: 0.9rem;
    margin-top: auto;
}

@media (max-width: 768px) {
    .years-grid {
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    }
}

@media (max-width: 480px) {
    .years-grid {
        grid-template-columns: 1fr;
    }
}
</style>
