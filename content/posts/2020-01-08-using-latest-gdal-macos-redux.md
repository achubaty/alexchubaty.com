---
author:
- achubaty
date: '2020-01-08'
title: Using the latest GDAL with R packages on macOS - redux
tags:
- R
featured: false
draft: false
image:
  caption: ''
  focal_point: ''
projects: []
aliases:
- /post/2020-01-08-using-latest-gdal-macos-redux/
---

As an update to an [earlier post](/post/2016-12-13-using-latest-gdal-macos), here's how to use the latest versions of GDAL/PROJ with R spatial packages.

## Install GDAL

```bash
brew install pkg-config
brew install gdal
```

## (Re)install R spatial packages

Next, we need to install a few packages from source in order to use the new GDAL libraries:

```r
## (re)install spatial packages from source
install.packages(c("rgeos", "sf", "sp"), type = "source")

## rgdal requires some additional configuration to build correctly:
##   based on http://stackoverflow.com/a/26836125/1380598
install.packages("rgdal", type = "source",
                 configure.args = c("--with-proj-include=/usr/local/include",
                                    "--with-proj-lib=/usr/local/lib"))
library(rgdal) ## confirm the GDAL version being used
```
