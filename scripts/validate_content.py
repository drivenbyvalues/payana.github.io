#!/usr/bin/env python3
"""Lightweight content validator for the Jekyll site.

Checks every Markdown page for:
  - parseable YAML front matter
  - required fields per layout
  - balanced Liquid braces ({% %} and {{ }})
  - internal article links that resolve to a real permalink

Run: python3 scripts/validate_content.py
Exit non-zero on any failure so CI can gate on it.
"""
from __future__ import annotations

import glob
import os
import re
import sys
from typing import Optional

try:
    import yaml
except ImportError:
    sys.stderr.write("PyYAML is required. Install with: pip install pyyaml\n")
    sys.exit(2)

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Files to scan: all _pages/**/*.md plus top-level page md files.
PAGES = sorted(
    glob.glob(os.path.join(ROOT, "_pages", "**", "*.md"), recursive=True)
    + [os.path.join(ROOT, p) for p in ("index.md", "timeline.md", "skills.md",
                                       "learning.md", "certifications.md",
                                       "another-page.md", "years.md")]
)
PAGES = [p for p in PAGES if os.path.exists(p)]

# Layout → required front-matter fields.
REQUIRED_FIELDS = {
    "year-range": {"layout", "title", "permalink"},
    "default": {"layout"},
    "resume": {"layout", "title"},
    "timeline": {"layout", "title"},
    "years": {"layout", "title"},
}

FRONT_RE = re.compile(r"^---\n(.*?)\n---", re.DOTALL)


def parse_front_matter(text: str) -> Optional[dict]:
    m = FRONT_RE.match(text)
    if not m:
        return None
    return yaml.safe_load(m.group(1)) or {}


def check_liquid_balance(path: str, text: str) -> list[str]:
    errors: list[str] = []
    if text.count("{%") != text.count("%}"):
        errors.append(f"{path}: unbalanced {{% %}} ({text.count('{%')} vs {text.count('%}')})")
    if text.count("{{") != text.count("}}"):
        errors.append(f"{path}: unbalanced {{{{ }}}} ({text.count('{{')} vs {text.count('}}')})")
    return errors


def collect_permalinks() -> set[str]:
    permalinks: set[str] = set()
    for p in PAGES:
        with open(p) as fh:
            fm = parse_front_matter(fh.read()) or {}
        link = fm.get("permalink")
        if link:
            permalinks.add(link.rstrip("/"))
    return permalinks


def check_internal_article_links(path: str, text: str, permalinks: set[str]) -> list[str]:
    """Verify markdown-style internal links to /articles/* and /20xx/* resolve."""
    errors: list[str] = []
    for href in re.findall(r"\]\((/[A-Za-z0-9_\-/]+)\)", text):
        target = href.rstrip("/")
        # Only police internal links we own (article + year pages).
        if target.startswith("/articles/") or re.match(r"^/\d{4}(-deep-dive)?$", target):
            if target not in permalinks:
                errors.append(f"{path}: dangling internal link → {href}")
    return errors


def main() -> int:
    errors: list[str] = []
    permalinks = collect_permalinks()

    for path in PAGES:
        with open(path) as fh:
            text = fh.read()

        fm = parse_front_matter(text)
        if fm is None:
            errors.append(f"{path}: missing or malformed YAML front matter")
            continue

        layout = fm.get("layout")
        required = REQUIRED_FIELDS.get(layout)
        if required:
            missing = required - fm.keys()
            if missing:
                errors.append(f"{path}: missing required fields {sorted(missing)}")

        errors.extend(check_liquid_balance(path, text))
        errors.extend(check_internal_article_links(path, text, permalinks))

    if errors:
        sys.stderr.write("\n".join(errors) + "\n")
        sys.stderr.write(f"\nFAILED: {len(errors)} issue(s) across {len(PAGES)} files\n")
        return 1

    print(f"OK: {len(PAGES)} files validated; {len(permalinks)} permalinks indexed")
    return 0


if __name__ == "__main__":
    sys.exit(main())
