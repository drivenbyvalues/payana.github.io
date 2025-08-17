---
layout: resume
title: Skills & Expertise
---

<div class="skills-page">
    <section class="section">
        <h2 class="section-title">Technical Skills</h2>
        
        <div class="skills-category">
            <h3>Programming Languages</h3>
            <div class="skills-container">
                <div class="skill-item">
                    <span class="skill-name">Python</span>
                    <div class="skill-level">
                        <div class="skill-level-bar" style="width: 90%;"></div>
                    </div>
                </div>
                <div class="skill-item">
                    <span class="skill-name">JavaScript/TypeScript</span>
                    <div class="skill-level">
                        <div class="skill-level-bar" style="width: 85%;"></div>
                    </div>
                </div>
                <div class="skill-item">
                    <span class="skill-name">Java</span>
                    <div class="skill-level">
                        <div class="skill-level-bar" style="width: 80%;"></div>
                    </div>
                </div>
                <div class="skill-item">
                    <span class="skill-name">SQL</span>
                    <div class="skill-level">
                        <div class="skill-level-bar" style="width: 88%;"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="skills-category">
            <h3>Frameworks & Technologies</h3>
            <div class="skills-container">
                <div class="skill-tag">React.js</div>
                <div class="skill-tag">Node.js</div>
                <div class="skill-tag">Docker</div>
                <div class="skill-tag">Kubernetes</div>
                <div class="skill-tag">AWS</div>
                <div class="skill-tag">Terraform</div>
                <div class="skill-tag">GraphQL</div>
                <div class="skill-tag">RESTful APIs</div>
            </div>
        </div>

        <div class="skills-category">
            <h3>Data & Analytics</h3>
            <div class="skills-container">
                <div class="skill-tag">Pandas</div>
                <div class="skill-tag">NumPy</div>
                <div class="skill-tag">TensorFlow</div>
                <div class="skill-tag">PyTorch</div>
                <div class="skill-tag">Apache Spark</div>
                <div class="skill-tag">Data Visualization</div>
                <div class="skill-tag">ETL Processes</div>
            </div>
        </div>
    </section>

    <section class="section">
        <h2 class="section-title">Professional Skills</h2>
        
        <div class="skills-category">
            <h3>Project Management</h3>
            <div class="skills-container">
                <div class="skill-tag">Agile/Scrum</div>
                <div class="skill-tag">JIRA</div>
                <div class="skill-tag">Confluence</div>
                <div class="skill-tag">Git</div>
                <div class="skill-tag">CI/CD</div>
            </div>
        </div>

        <div class="skills-category">
            <h3>Soft Skills</h3>
            <div class="skills-container">
                <div class="skill-tag">Leadership</div>
                <div class="skill-tag">Team Collaboration</div>
                <div class="skill-tag">Problem Solving</div>
                <div class="skill-tag">Communication</div>
                <div class="skill-tag">Mentoring</div>
            </div>
        </div>
    </section>
</div>

<style>
.skills-page {
    max-width: 900px;
    margin: 0 auto;
}

.skills-category {
    margin-bottom: 2rem;
}

.skills-category h3 {
    color: var(--primary-color);
    margin-bottom: 1rem;
    font-size: 1.2rem;
    font-weight: 600;
}

.skills-container {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    margin-bottom: 1.5rem;
}

.skill-item {
    width: 100%;
    margin-bottom: 1rem;
}

.skill-name {
    display: block;
    margin-bottom: 0.3rem;
    font-weight: 500;
}

.skill-level {
    height: 8px;
    background-color: #f0f0f0;
    border-radius: 4px;
    overflow: hidden;
}

.skill-level-bar {
    height: 100%;
    background-color: var(--accent-color);
    border-radius: 4px;
}

.skill-tag {
    background-color: #f5f5f5;
    color: var(--primary-color);
    padding: 0.5rem 1rem;
    border-radius: 20px;
    font-size: 0.9rem;
    box-shadow: 0 1px 3px rgba(0,0,0,0.1);
    transition: all 0.2s;
}

.skill-tag:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    background-color: var(--accent-color);
    color: white;
}

@media (max-width: 768px) {
    .skills-container {
        gap: 0.8rem;
    }
    
    .skill-tag {
        padding: 0.4rem 0.8rem;
        font-size: 0.85rem;
    }
}
</style>
