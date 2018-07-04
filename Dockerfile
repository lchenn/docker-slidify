FROM rocker/tidyverse:3.4.0

RUN Rscript -e "library("devtools"); install_github(c('ramnathv/slidify', 'ramnathv/slidifyLibraries'))"

CMD ["R"]
