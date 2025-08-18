---
layout: resume
title: Years (2000-2025)
---

<div class="container">
    <div class="years-container">
    <div class="years-sidebar">
        <h2>Years</h2>
        <nav class="years-nav">
            {% assign years = "2025,2024,2023,2022,2021,2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000" | split: "," %}
            <ul>
                {% for year in years %}
                    <li>
                        <a href="{{ '/' | append: year | append: '/' | relative_url }}" class="{% if page.url contains year %}active{% endif %}">
                            <i class="fas fa-calendar-day"></i> {{ year }}
                        </a>
                    </li>
                {% endfor %}
            </ul>
        </nav>
    </div>
    
    <div class="years-content">
        {% if page.url == '/years/' %}
            <h1>Years Overview</h1>
            <p>Select a year from the sidebar to view details about that year's activities and achievements.</p>
            
            <h2>Recent Years</h2>
            <div class="recent-years">
                {% assign recent_years = "2025,2024,2023,2022,2021" | split: "," %}
                {% for year in recent_years %}
                    <div class="year-card">
                        <h3><a href="{{ '/' | append: year | append: '/' | relative_url }}">{{ year }}</a></h3>
                        <p>Summary of activities and achievements in {{ year }}.</p>
                    </div>
                {% endfor %}
            </div>
        {% else %}
            {% assign year = page.url | remove: '/' | plus: 0 %}
            {% if year >= 2000 and year <= 2025 %}
                {% assign year_page = site.pages | where: 'path', '_pages/years/' | append: year | append: '.md' | first %}
                {% if year_page %}
                    {{ year_page.content | markdownify }}
                {% else %}
                    <h1>{{ year }} - Year in Review</h1>
                    <div class="year-highlights">
                        <p>No content available for {{ year }} yet. Check back soon for updates!</p>
                    </div>
                {% endif %}
            {% else %}
                <h1>Year Not Found</h1>
                <p>The requested year is not available. Please select a year between 2000 and 2025.</p>
            {% endif %}
        {% endif %}
    </div>
</div>
</div>

<style>
.years-container {
    display: flex;
    max-width: 1200px;
    margin: 2rem auto;
    gap: 2rem;
    padding: 0 1rem;
}

.years-sidebar {
    width: 250px;
    flex-shrink: 0;
}

.years-nav ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.years-nav li {
    margin-bottom: 0.5rem;
}

.years-nav a {
    display: flex;
    align-items: center;
    padding: 0.5rem 1rem;
    color: #333;
    text-decoration: none;
    border-radius: 4px;
    transition: background-color 0.2s;
}

.years-nav a:hover,
.years-nav a.active {
    background-color: #f5f5f5;
    color: #000;
}

.years-nav a i {
    margin-right: 0.5rem;
    width: 1.25rem;
    text-align: center;
}

.years-content {
    flex-grow: 1;
    background: #fff;
    padding: 2rem;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.recent-years {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 1.5rem;
    margin-top: 2rem;
}

.year-card {
    background: #f9f9f9;
    padding: 1.5rem;
    border-radius: 8px;
    border-left: 4px solid #4285f4;
    transition: transform 0.2s, box-shadow 0.2s;
}

.year-card:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.year-card h3 {
    margin-top: 0;
    margin-bottom: 0.5rem;
}

.year-card p {
    margin: 0;
    color: #666;
}

/* Responsive styles */
@media (max-width: 768px) {
    .years-container {
        flex-direction: column;
    }
    
    .years-sidebar {
        width: 100%;
        margin-bottom: 1.5rem;
    }
    
    .years-nav ul {
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
    }
    
    .years-nav li {
        margin: 0;
    }
    
    .years-nav a {
        padding: 0.5rem;
    }
}
</style>
