#!/usr/bin/env ruby
# This script generates sample yearly content based on a structured timeline

require 'yaml'
require 'date'

# Define the timeline data
timeline = {
  2000 => {
    title: "Computer Lab Experience",
    subtitle: "Early Education & Exploration",
    content: <<~CONTENT
      ## Early Education
      - Spent time exploring computer labs and developing an interest in technology
      - Started learning basic computer operations and programming concepts
      - Participated in school science fairs with technology projects
    CONTENT
  },
  2001 => {
    title: "First Programming Steps",
    subtitle: "Learning the Basics",
    content: "## Academic Year 2000-2001\n- Continued exploring computer science fundamentals\n- Worked on basic programming projects\n- Developed problem-solving skills through logical puzzles and games"
  },
  2002 => {
    title: "Mathematics & Logic",
    subtitle: "Building Analytical Skills",
    content: "## Academic Focus\n- Deepened understanding of mathematical concepts\n- Participated in math competitions\n- Started learning more advanced programming concepts"
  },
  2003 => {
    title: "High School Journey",
    subtitle: "Academic Excellence",
    content: "## High School Years\n- Excelled in science and mathematics\n- Participated in computer club activities\n- Developed leadership skills through various school activities"
  },
  2004 => {
    title: "Advanced Studies",
    subtitle: "Preparing for Higher Education",
    content: "## Academic Progress\n- Took advanced courses in mathematics and science\n- Started preparing for college entrance exams\n- Explored different fields of computer science"
  },
  2005 => {
    title: "College Preparation",
    subtitle: "Transition to Higher Education",
    content: "## College Applications\n- Researched and applied to top engineering colleges\n- Prepared for competitive examinations\n- Developed a strong foundation in computer science fundamentals"
  },
  2006 => {
    title: "Freshman Year",
    subtitle: "Beginning of Engineering Education",
    content: "## First Year of College\n- Started Bachelor's degree in Computer Science\n- Took introductory courses in programming and algorithms\n- Joined technical clubs and organizations"
  },
  2007 => {
    title: "Sophomore Year",
    subtitle: "Deepening Technical Knowledge",
    content: "## Second Year of College\n- Studied data structures and algorithms\n- Worked on academic projects\n- Participated in coding competitions"
  },
  2008 => {
    title: "Internship Experience",
    subtitle: "First Industry Exposure",
    content: "## Summer Internship\n- Completed first professional internship\n- Gained practical software development experience\n- Worked on real-world projects"
  },
  2009 => {
    title: "Senior Year",
    subtitle: "Final Year Projects",
    content: "## Final Year of College\n- Worked on capstone project\n- Specialized in software engineering\n- Prepared for career opportunities"
  },
  2010 => {
    title: "Graduation & First Job",
    subtitle: "Beginning Professional Career",
    content: "## Career Beginnings\n- Graduated with Bachelor's degree in Computer Science\n- Started first full-time position as Software Engineer\n- Worked on enterprise applications"
  },
  2011 => {
    title: "Professional Growth",
    subtitle: "Expanding Technical Skills",
    content: "## Early Career\n- Gained experience in full-stack development\n- Worked on scalable web applications\n- Developed expertise in multiple programming languages"
  },
  2012 => {
    title: "Technical Leadership",
    subtitle: "Taking on More Responsibility",
    content: "## Career Progression\n- Promoted to Senior Software Engineer\n- Led development teams\n- Architected complex systems"
  },
  2013 => {
    title: "Cloud Technologies",
    subtitle: "Embracing Modern Infrastructure",
    content: "## Technology Focus\n- Worked with cloud platforms (AWS/Azure/GCP)\n- Implemented DevOps practices\n- Designed distributed systems"
  },
  2014 => {
    title: "Product Development",
    subtitle: "Building Scalable Solutions",
    content: "## Product Engineering\n- Led development of key product features\n- Improved system performance and reliability\n- Mentored junior engineers"
  },
  2015 => {
    title: "Technical Leadership",
    subtitle: "Architecture & Strategy",
    content: "## Leadership Role\n- Promoted to Technical Lead/Architect\n- Defined technical direction\n- Led cross-functional initiatives"
  },
  2016 => {
    title: "Management Track",
    subtitle: "People & Technology",
    content: "## Management Role\n- Transitioned to Engineering Manager\n- Built and led high-performing teams\n- Balanced technical and people leadership"
  },
  2017 => {
    title: "Product Strategy",
    subtitle: "Bridging Business & Technology",
    content: "## Product Focus\n- Worked closely with product management\n- Drove technical roadmap\n- Focused on user experience"
  },
  2018 => {
    title: "Scaling Teams",
    subtitle: "Organizational Growth",
    content: "## Team Expansion\n- Scaled engineering organization\n- Established best practices\n- Fostered engineering culture"
  },
  2019 => {
    title: "Executive Leadership",
    subtitle: "Driving Vision",
    content: "## Executive Role\n- Promoted to Director/VP of Engineering\n- Set technical vision and strategy\n- Led multiple teams and initiatives"
  },
  2020 => {
    title: "Pandemic Response",
    subtitle: "Leading Through Change",
    content: "## Adapting to New Realities\n- Led remote work transition\n- Maintained team productivity\n- Focused on employee well-being"
  },
  2021 => {
    title: "Digital Transformation",
    subtitle: "Innovation & Growth",
    content: "## Digital Initiatives\n- Drove digital transformation\n- Implemented modern development practices\n- Focused on scalability and security"
  },
  2022 => {
    title: "Industry Recognition",
    subtitle: "Thought Leadership",
    content: "## Professional Impact\n- Published articles/papers\n- Spoke at conferences\n- Contributed to open source"
  },
  2023 => {
    title: "Current Role",
    subtitle: "Technology Leadership",
    content: "## Present Focus\n- Leading technology strategy\n- Mentoring next-gen leaders\n- Driving innovation"
  },
  2024 => {
    title: "Future Vision",
    subtitle: "Looking Ahead",
    content: "## Current Year\n- Exploring emerging technologies\n- Expanding professional network\n- Continuous learning and growth"
  },
  2025 => {
    title: "Future Aspirations",
    subtitle: "Next Chapter",
    content: "## Looking Forward\n- Pursuing new challenges\n- Continuing to make an impact\n- Mentoring the next generation"
  }
}

# Generate the markdown files
timeline.each do |year, data|
  filename = "_pages/years/#{year}.md"
  
  content = <<~CONTENT
    ---
    layout: year-range
    title: #{year} - #{data[:title]}
    subtitle: #{data[:subtitle]}
    permalink: /#{year}/
    nav_order: 1
    ---
    
    #{data[:content]}
    
    <div class="year-navigation">
      <div class="nav-links">
        #{year > 2000 ? '<a href="/' + (year - 1).to_s + '" class="button"><i class="fas fa-chevron-left"></i> ' + (year - 1).to_s + '</a>' : '<span></span>'}
        <a href="/years" class="button"><i class="fas fa-calendar-alt"></i> All Years</a>
        #{year < 2025 ? '<a href="/' + (year + 1).to_s + '" class="button">' + (year + 1).to_s + ' <i class="fas fa-chevron-right"></i></a>' : '<span></span>'}
      </div>
    </div>
  CONTENT
  
  File.write(filename, content)
  puts "Generated: #{filename}"
end

puts "\nAll year files have been generated successfully!"
