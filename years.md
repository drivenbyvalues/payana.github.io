---
layout: resume
title: Years (2000-2025)
---

<div class="years-container">
    <div class="years-sidebar">
        <h2>Years</h2>
        <nav class="years-nav">
            {% assign years = "2025,2024,2023,2022,2021,2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000" | split: "," %}
            <ul>
                {% for year in years %}
                    <li>
                        <a href="{{ '/' | append: year | relative_url }}" class="{% if forloop.first %}active{% endif %}" data-year="{{ year }}">
                            <i class="fas fa-calendar-day"></i> {{ year }}
                        </a>
                    </li>
                {% endfor %}
            </ul>
        </nav>
    </div>
    
    <div class="years-content">
        {% assign current_year = site.time | date: "%Y" %}
        {% assign year_page = site.pages | where: 'path', '_pages/years/' | append: current_year | append: '.md' | first %}
        
        {% if year_page %}
            {{ year_page.content | markdownify }}
        {% else %}
            <h1>{{ current_year }} - Year in Review</h1>
            <div class="year-highlights">
                <p>No content available for {{ current_year }} yet. Check back soon for updates!</p>
            </div>
        {% endif %}
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
    width: 200px;
    flex-shrink: 0;
}

.years-sidebar h2 {
    font-size: 1.25rem;
    margin-bottom: 1rem;
    color: #2c3e50;
    padding-bottom: 0.5rem;
    border-bottom: 1px solid #f0f0f0;
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
    padding: 0.5rem 0.75rem;
    color: #2c3e50;
    text-decoration: none;
    border-radius: 4px;
    transition: all 0.2s ease;
    font-size: 0.95rem;
}

.years-nav a:hover {
    background-color: #f5f7fa;
    color: #3498db;
}

.years-nav a.active {
    background-color: #3498db;
    color: white;
    font-weight: 500;
}

.years-nav a i {
    margin-right: 0.5rem;
    width: 1rem;
    text-align: center;
    font-size: 0.9rem;
}

.years-content {
    flex: 1;
    background: white;
    border-radius: 8px;
    padding: 2rem;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
}

.years-content h1 {
    color: #2c3e50;
    margin-top: 0;
    padding-bottom: 1rem;
    border-bottom: 1px solid #eee;
}

.year-highlights {
    margin-top: 1.5rem;
    line-height: 1.6;
}

/* Responsive styles */
@media (max-width: 768px) {
    .years-container {
        flex-direction: column;
    }
    
    .years-sidebar {
        width: 100%;
        margin-bottom: 2rem;
    }
    
    .years-nav ul {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
        gap: 0.5rem;
    }
    
    .years-content {
        padding: 1.5rem;
    }
}

/* Animation for year switching */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Add smooth scrolling to the page */
html {
    scroll-behavior: smooth;
}

.loading {
    text-align: center;
    padding: 2rem;
    font-style: italic;
    color: #666;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Get all year links and content container
    const yearLinks = document.querySelectorAll('.years-nav a');
    const yearsContent = document.querySelector('.years-content');
    
    // Function to update active state
    function updateActiveYear(year) {
        yearLinks.forEach(link => {
            if (link.getAttribute('data-year') === year) {
                link.classList.add('active');
            } else {
                link.classList.remove('active');
            }
        });
    }
    
    // Function to load year content
    async function loadYearContent(year) {
        try {
            // Show loading state
            yearsContent.innerHTML = '<div class="loading">Loading...</div>';
            
            // Fetch the year page
            const response = await fetch(`/${year}/`);
            if (!response.ok) throw new Error('Year not found');
            
            const html = await response.text();
            const parser = new DOMParser();
            const doc = parser.parseFromString(html, 'text/html');
            
            // Extract the main content
            const mainContent = doc.querySelector('main');
            if (mainContent) {
                yearsContent.innerHTML = mainContent.innerHTML;
            } else {
                throw new Error('Content not found');
            }
            
            // Update active state
            updateActiveYear(year);
            
            // Update URL without page reload
            history.pushState({ year }, '', `/${year}/`);
            
            // Scroll to top
            window.scrollTo({ top: 0, behavior: 'smooth' });
            
        } catch (error) {
            console.error('Error loading year:', error);
            yearsContent.innerHTML = `
                <h1>${year} - Year in Review</h1>
                <div class="year-highlights">
                    <p>No content available for ${year} yet. Check back soon for updates!</p>
                </div>
            `;
        }
    }
    
    // Handle click on year links
    yearLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const year = this.getAttribute('data-year');
            loadYearContent(year);
        });
    });
    
    // Handle browser back/forward buttons
    window.addEventListener('popstate', function(e) {
        const currentPath = window.location.pathname;
        const yearMatch = currentPath.match(/\/(\d{4})\/?/);
        
        if (yearMatch && yearMatch[1]) {
            loadYearContent(yearMatch[1]);
        } else {
            // If no year in URL, load the current year
            const currentYear = new Date().getFullYear().toString();
            loadYearContent(currentYear);
        }
    });
    
    // Load content based on current URL
    const currentPath = window.location.pathname;
    const yearMatch = currentPath.match(/\/(\d{4})\/?/);
    
    if (yearMatch && yearMatch[1]) {
        loadYearContent(yearMatch[1]);
    } else {
        // If no year in URL, load the current year
        const currentYear = new Date().getFullYear().toString();
        loadYearContent(currentYear);
    }
});
</script>
