module Jekyll
  class YearPagesGenerator < Generator
    safe true

    def generate(site)
      # Get configuration or use defaults
      config = site.config['year_pages'] || {}
      enabled = config.fetch('enabled', true)
      
      return unless enabled
      
      years_range = (config.dig('years', 'start') || 2000)..(config.dig('years', 'end') || 2025)

      # Create the /years directory if it doesn't exist
      years_dir = File.join(site.source, 'years')
      FileUtils.mkdir_p(years_dir) unless File.directory?(years_dir)

      # For each year in the specified range
      years_range.each do |year|
        # Skip if a specific year page already exists
        next if site.pages.any? { |page| page.name == "#{year}.md" && page.dir == 'years/' }
        
        # Create a new page for the year
        year_page = PageWithoutAFile.new(site, site.source, 'years', "#{year}.md")
        
        # Set default content and front matter
        default_content = <<~CONTENT
          ---
          layout: year-range
          title: #{year} - Year in Review
          subtitle: Professional Journey and Achievements
          permalink: /#{year}/
          nav_order: 1
          ---
          
          ## #{year} - Year in Review
          
          This page contains a summary of professional activities, achievements, and milestones from #{year}.
          
          ### Key Highlights
          - [Add key highlights or achievements for this year]
          - [Include major projects or milestones]
          - [Note any significant career developments]
          
          ### Technologies and Skills
          - [List any new technologies or skills developed]
          - [Mention any certifications or training completed]
          
          ### Professional Growth
          - [Describe professional development activities]
          - [Mentions of talks, publications, or contributions]
          
          <div class="back-link">
              <a href="{{ '/years' | relative_url }}" class="button">← Back to Years</a>
          </div>
        CONTENT
        
        year_page.content = default_content
        
        # Add the page to the site
        site.pages << year_page
      end
    end
  end
end
