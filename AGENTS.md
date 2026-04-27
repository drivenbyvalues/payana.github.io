# Repository Guidelines

## Project Structure & Module Organization
- `_pages/` holds primary site content; individual year narratives live in `_pages/years/####.md`.
- `_layouts/` and `_includes/` define Jekyll Liquid templates; reuse existing layouts (`default`, `resume`, `year-range`) instead of duplicating markup.
- `_sass/` and `assets/css/` manage styles; keep new partials under `_sass` and import them via `assets/css/style.scss`.
- `assets/img/` and `assets/js/` store media and scripts. Favor descriptive, kebab-case filenames.
- `_site/` is the generated output; never edit or commit changes there. Run `ruby generate_year_pages.rb 2026` to scaffold the next year when needed.

## Build, Test, and Development Commands
- `bundle install` — install Ruby gems defined in `Gemfile`.
- `bundle exec jekyll serve --livereload` — start the local server with automatic browser refresh at `http://127.0.0.1:4000`.
- `bundle exec jekyll serve --incremental` — faster rebuilds during heavy content edits.
- `bundle exec jekyll build` — produce a production-ready site in `_site/`.
- `bundle exec jekyll clean` — clear `_site/` and `.jekyll-cache/` when builds feel stale.
- `JEKYLL_ENV=production bundle exec jekyll build` — mirror GitHub Pages’ production build locally.

## Coding Style & Naming Conventions
- Use YAML front matter with `title`, `layout`, and `permalink`; keep the current field order.
- Write Markdown with sentence-case headings and ~80-character wraps for readability.
- Liquid blocks and includes use two-space indentation; keep template logic thin.
- Prefer kebab-case filenames (`career-highlights.md`) and SCSS variables/mixins instead of inline styles.

## Testing Guidelines
- Before opening a PR, run `bundle exec jekyll build`; the build must complete cleanly.
- Review the rendered pages via `bundle exec jekyll serve --livereload` and spot-check edited routes.
- For new Liquid logic, inspect `_site/` output for correct navigation and metadata.

## Commit & Pull Request Guidelines
- Write focused commits in present tense (“Add 2024 year summary”); avoid batching unrelated content and asset updates.
- Reference related issues in commit bodies (e.g., `Refs #42`) when applicable.
- PRs should include: purpose summary, key sections touched (e.g., `_pages/years/2024.md`), screenshots for visual tweaks, and deployment notes when manual steps are needed.
- Confirm checks by pasting the latest `bundle exec jekyll build` output snippet in the PR description when notable.

## Content Update Tips
- For new yearly entries, copy an existing file in `_pages/years/`, adjust front matter dates, and update timeline links if required.
- Store large media in an optimized format under `assets/img/`; document attribution in the Markdown front matter when needed.
