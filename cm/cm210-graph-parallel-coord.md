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
