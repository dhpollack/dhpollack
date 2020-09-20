# Install

## Requires

* [zola](https://www.getzola.org) - `yay -S zola`  
* [chromium](https://www.chromium.org/) - `yay -S chromium`  

## Basics

1. Clone the repo and configure the pre-commit hook  

```
git clone --recursive git@github.com:dhpollack/dhpollack.git 
git config --local core.hooksPath hooks/
```

2. Edit the `README.md` file.  
3. Add the file to be committed `git add README.md`.  
4. [Optional] Run the pre-commit hook manually and check site locally  

```
./hooks/pre-commit
cd resume_v2
zola serve
```

5. Push to GitHub `git push origin master`

## Test Locally

```
# see hooks/pre-commit to update README_with_frontmatter.md and generate pdf if needed
cd resume_v2
zola serve
```

## Editing

Just edit the `README.md` file and commit / push changes to github.  The pre-commit hook should do the rest automatically.  

## Files Edited

* `README.md`  
* `resume_v2/config.toml`  
* `resume_v2/content/footer.md`  
* `resume_v2/templates/index.html`  
* `resume_v2/sass/no-print.scss`  
