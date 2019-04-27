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
#> $ carat   <dbl> 0.81, 0.56, 1.00, 0.83, 1.14, 0.33, 0.70, 1.08, 1.02, ...
#> $ cut     <ord> Premium, Very Good, Ideal, Good, Ideal, Ideal, Ideal, ...
#> $ color   <ord> F, E, G, J, G, G, I, H, H, E, G, G, E, H, D, H, E, H, ...
#> $ clarity <ord> SI1, SI1, VVS1, SI1, VS1, VVS2, VVS1, SI1, SI1, VVS1, ...
#> $ depth   <dbl> 61.3, 62.8, 61.9, 63.8, 61.8, 61.7, 61.8, 63.4, 61.1, ...
#> $ table   <dbl> 60.0, 57.6, 57.0, 58.0, 55.0, 55.0, 56.0, 57.0, 58.0, ...
#> $ price   <int> 2926, 1659, 8366, 2311, 8121, 752, 2492, 5286, 5084, 1...
#> $ x       <dbl> 6.00, 5.26, 6.43, 5.97, 6.71, 4.42, 5.72, 6.54, 6.51, ...
#> $ y       <dbl> 5.94, 5.31, 6.39, 5.95, 6.76, 4.46, 5.74, 6.51, 6.46, ...
#> $ z       <dbl> 3.66, 3.32, 3.97, 3.80, 4.16, 2.74, 3.54, 4.14, 3.96, ...
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
