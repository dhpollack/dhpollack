# Default recipe: list available recipes
default:
    just -l -u --list-submodules

# Import resume_v2 justfile as a module
mod resume "resume_v2"

# Initialize git submodules
setup:
    git submodule update --init --recursive

# Build the site: update README, build site, generate PDFs
build:
    #!/usr/bin/env bash
    set -e

    # Update README_with_frontmatter.md
    cat <(echo -e "+++\nrender = false\n+++") README.md > resume_v2/content/README_with_frontmatter.md

    # Build site and generate PDFs
    just resume build
