# Driven By Values - Personal Website

A Jekyll-based personal website showcasing career journey, skills, certifications, and yearly achievements.

## Prerequisites

- Ruby (version 2.5 or higher)
- Bundler gem
- Git

## Installation

1. Clone the repository:
```bash
git clone https://github.com/drivenbyvalues/drivenbyvalues.github.io.git
cd drivenbyvalues.github.io
```

2. Install dependencies:
```bash
bundle install
```

## Development

### Build the site
```bash
bundle exec jekyll build
```

### Start the development server
```bash
bundle exec jekyll serve
```

The site will be available at `http://127.0.0.1:4000`

### Start with incremental builds (faster)
```bash
bundle exec jekyll serve --incremental
```

### Start with live reload
```bash
bundle exec jekyll serve --livereload
```

### Clean build artifacts
```bash
bundle exec jekyll clean
```

## Deployment

### Deploy to GitHub Pages

1. Commit your changes:
```bash
git add .
git commit -m "Your commit message"
```

2. Push to GitHub:
```bash
git push origin main
```

GitHub Pages will automatically build and deploy your site.

### Manual Build for Deployment

If you need to build the site manually:

```bash
# Clean previous builds
bundle exec jekyll clean

# Build for production
JEKYLL_ENV=production bundle exec jekyll build

# The built site will be in the _site directory
```

## Project Structure

- `_layouts/` - Page layouts (default, resume, year-range)
- `_pages/` - Static pages and year pages
- `_pages/years/` - Individual year content (1998-2025)
- `assets/` - CSS, JavaScript, and images
- `_config.yml` - Jekyll configuration
- `years.md` - Years overview page

## Common Commands

| Command | Description |
|---------|-------------|
| `bundle install` | Install dependencies |
| `bundle exec jekyll serve` | Start development server |
| `bundle exec jekyll build` | Build the site |
| `bundle exec jekyll clean` | Clean build artifacts |
| `bundle exec jekyll serve --incremental` | Start server with incremental builds |
| `bundle exec jekyll serve --livereload` | Start server with live reload |

## Troubleshooting

### Port already in use
If port 4000 is already in use:
```bash
pkill -f jekyll
bundle exec jekyll serve
```

### Clear cache and rebuild
```bash
rm -rf _site .jekyll-cache
bundle exec jekyll clean
bundle exec jekyll serve
```

## License

This project is open source and available under the MIT License.