#!/usr/bin/env ruby

# Generate year pages from 2000 to 2025
(2000..2025).each do |year|
  filename = "#{year}.md"
  
  # Skip if file already exists
  next if File.exist?(filename)
  
  content = <<~CONTENT
    ---
    layout: year-range
    title: "#{year} - Year in Review"
    subtitle: "Professional Journey and Achievements"
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
  
  File.write(filename, content)
  puts "Generated: #{filename}"
end

puts "\nAll year pages have been generated!"
