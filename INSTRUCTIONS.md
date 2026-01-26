# Install

## Requires

* [Docker](https://www.docker.com/) - For building the site and generating PDFs
* (Optional) [just](https://github.com/casey/just) - For running commands (can also use bash directly)

## Basics

1. Clone the repo and set up the project:

```
git clone --recursive git@github.com:dhpollack/dhpollack.git
cd dhpollack
just setup
```

2. Edit the `README.md` file.
3. Build the site and generate PDFs:

```
just build
```

4. Commit changes and push to GitHub:

```
git add README.md resume_v2/content/README_with_frontmatter.md resume_v2/static/david-pollack-resume.pdf
git commit -m "Update resume"
git push origin master
```

## Test Locally

```
# Build the site and serve locally
just build
just resume serve
```

## Editing

Edit the `README.md` file, then run `just build` to update the site and generate PDFs. Commit the changed files (`README.md`, `resume_v2/content/README_with_frontmatter.md`, and `resume_v2/static/david-pollack-resume.pdf`) and push to GitHub.

## Files Edited

* `README.md`  
* `resume_v2/config.toml`  
* `resume_v2/content/footer.md`  
* `resume_v2/templates/index.html`  
* `resume_v2/sass/no-print.scss` 

## Troubleshooting

The site is build with a github action that requires a github personal token, which is only valid for one year.  If the action fails, create a new token and re-run the action.
