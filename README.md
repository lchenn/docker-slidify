# docker-slidify
A dockerized slidify.

(Slidify)[https://github.com/ramnathv/slidify] is a framework to generate HTML slides using (RMarkdown)[https://rmarkdown.rstudio.com/].

How to use:

```bash
RMD_FILE="xyz.Rmd"
docker run -it \
	-v $(PWD):$(PWD) \
	-w $(PWD) \
	lchenn/slidify-docker \
	Rscript -e "slidify::slidify('$(RMD_FILE)')" 
```
