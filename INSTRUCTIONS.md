# Install

## Basics

```
git clone --recursive git@github.com:dhpollack/dhpollack.git 
git config --local core.hooksPath hooks/
```

## Build

```
cd resume_v2
zola build
zola serve
./generate-pdfs.sh
```
