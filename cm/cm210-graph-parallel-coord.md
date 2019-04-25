parallel coordinate
================

Notes: introduce the idea of using a separate data frame to add lines,
with a data argument and aes() argument in the geom layer instead of the
plot layer.

## contents

[introduction](#introduction)  
[prerequisites](#prerequisites)  
[explore](#explore)  
[carpentry](#carpentry)  
[design](#design)  
[report](#report)  
[exercises](#exercises)  
[references](#references)

## introduction

intro

Data characteristics

  - x quantitative variables  
  - x or more categorical variables (optional or not)  
  - A key variable if data are not coordinatized

Graph characteristics

  - x
  - x

[Dx graph type](link) data and graph requirements

<br> <a href="#top">▲ top of page</a>

## prerequisites

Project setup

  - Start every work session by launching the RStudio Project file for
    the course, e.g., `portfolio.Rproj`  
  - Ensure your [project directory
    structure](cm501-proj-m-manage-files.md#planning-the-directory-structure)
    satisfies the course requirements

Ensure you have installed the following packages. See [install
packages](cm902-software-studio.md#install-packages) for instructions if
needed.

  - tidyverse  
  - graphclassmate

Scripts to initialize

    explore/     0xxx-graphtype-dataname-explore.R  
    carpentry/   0xxx-graphtype-dataname-data.R   
    design/      0xxx-graphtype-dataname.R 

And start each file with a minimal header

``` r
# your name
# date

# load packages
library("tidyverse")
```

Duplicate the lines of code in the session one chunk at a time. Save,
Source, and compare your results to the results shown.

<br> <a href="#top">▲ top of page</a>

## explore

Open the explore script you initialized earlier. Load the package that
has the data.

Made with GGally, <http://ggobi.github.io/ggally/index.html>

``` r
library(GGally)
data(diamonds, package = "ggplot2")
diamonds.samp <- diamonds[sample(1:dim(diamonds)[1], 100), ]
glimpse(diamonds.samp)
#> Observations: 100
#> Variables: 10
#> $ carat   <dbl> 0.31, 0.40, 0.70, 0.31, 1.01, 1.06, 0.51, 1.33, 0.50, ...
#> $ cut     <ord> Premium, Premium, Very Good, Very Good, Ideal, Good, I...
#> $ color   <ord> G, H, I, H, G, G, E, I, D, G, D, J, H, J, G, H, E, H, ...
#> $ clarity <ord> VVS1, VVS1, SI1, VS1, SI2, VS2, VS2, SI2, SI1, VS1, VS...
#> $ depth   <dbl> 59.9, 61.8, 63.8, 62.4, 60.5, 63.1, 62.8, 59.7, 63.8, ...
#> $ table   <dbl> 62.0, 58.0, 59.0, 58.0, 58.0, 59.0, 56.0, 59.0, 60.0, ...
#> $ price   <int> 1046, 1017, 1890, 544, 4327, 6212, 1733, 5094, 1433, 2...
#> $ x       <dbl> 4.37, 4.69, 5.56, 4.28, 6.52, 6.45, 5.14, 7.21, 5.03, ...
#> $ y       <dbl> 4.35, 4.72, 5.60, 4.34, 6.48, 6.48, 5.11, 7.15, 5.00, ...
#> $ z       <dbl> 2.61, 2.91, 3.56, 2.69, 3.93, 4.08, 3.22, 4.29, 3.20, ...
```

``` r
ggparcoord(data = diamonds.samp, columns = c(1, 5:10))
```

<img src="images/cm208-unnamed-chunk-5-1.png" width="70%" />

<br> <a href="#top">▲ top of page</a>

## carpentry

Open the carpentry script you initialized earlier.

A data carpentry file typically begins by reading the source data file.

``` r
library("tidyverse")
```

A data carpentry file typically concludes by saving the data frame.

``` r
saveRDS(df, "data/0xxx-graphtype-dataname-data.rds")
```

<br> <a href="#top">▲ top of page</a>

## design

Open the design script you initialized earlier.

A design file typically begins by reading the data prepared by the
carpentry script.

``` r
library("tidyverse")
```

And write to file.

``` r
# ggsave(filename = "0xxx-graphtype-dataname.png",
#         path    = "figures",
#         width   = 8,
#         height  = 16,
#         units   = "in",
#         dpi     = 300)
```

<br> <a href="#top">▲ top of page</a>

## report

If we were to include this graph in a report, we would insert the
following code chunk in the Rmd script.

    ```{r}
    library("knitr")
    include_graphics("../figures/0xxx-graphtype-dataname.png")
    ```

<br> <a href="#top">▲ top of page</a>

## exercises

**1. xxx**

Script: `explore/wwdd-graphtype-dataname-explore.R`

Data: name from source

  - Explore: Identify the number of observations and the number and type
    and class of variables. Determine the type of date variable.

  - Carpentry: something

  - Design: Graph something

*Answer*

## references

<div id="refs">

<div id="ref-Wickham+Grolemund:2017">

Wickham H and Grolemund G (2017) *R for Data Science.* O’Reilly Media,
Inc., Sebastopol, CA <https://r4ds.had.co.nz/>

</div>

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
