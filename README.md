# docker-slidify
A dockerized slidify.

## Slidify

[Slidify](https://github.com/ramnathv/slidify) is a framework to generate HTML slides using [RMarkdown](https://rmarkdown.rstudio.com/).


## How to use
How to use:

```bash
RMD_FILE="xyz.Rmd"
docker run -it \
	-v $(PWD):$(PWD) \
	-w $(PWD) \
	lchenn/slidify-docker \
	Rscript -e "slidify::slidify('$(RMD_FILE)')" 
```

## Example slidify

```
---
title       : Title
subtitle    : 
author      : The Author
job         :
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : zenburn      # {twitter-bootstrap}
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, selfcontained, draft}
knit        : slidify::knit2slides

---
## Title
```
