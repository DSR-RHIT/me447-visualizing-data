
<a name="top"></a>

# name of plot

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

A *name of plot* is

Data characteristics in tidy form

  - n quantitative variable in n column, values are numerical,
    continuous or discrete  
  - n categorical variable (if any) per column, values are the category
    levels, nominal or ordinal

Graph characteristics

  - item
  - item

Reading an xxx plot.

## prerequisites

  - [directory structure](cm101_data-lab.md#file-management) has been
    set up  
  - tidyverse package installed
  - graphclassmate package installed

## explore

Create the R file `practice/dx-graphtype-data-tutorial.R`.

``` r
library("tidyverse")
library("graphclassmate")
```

We will use the `xxx` data set from xxx. Run `? xxx` to open the help
page for the data set.

For exploring the data, I assign it a new name, leaving the original
data frame unaltered.

``` r
# examine data 
# explore <- xxx
# glimpse(explore)
```

Summarize data and discuss

Explore graph and discuss

<a href="#top">Top of page</a>

## carpentry

A data carpentry file typically begins by reading the source data file.
In this case, the data are loaded with the graphclassmate package.

From the exploration, I’ll be using what quantitative, what categorical

``` r
# carpentry
```

A data carpentry file typically concludes by saving the data frame.

``` r
# saveRDS(xxx, "data/dx-plot-data.rds")
```

<a href="#top">Top of page</a>

## design

A graph design file typically starts by reading the tidy data file.

``` r
# xxx <- readRDS("data/dx-plot-data.rds") %>%  
#   glimpse()
```

Create the graph design

And the figure is ready to save, using width and height to control the
aspect ratio.

``` r
# ggsave(filename = "dx-plot-data.png",
#            path     = "figures",
#            device   = "png",
#            width    = 8,
#            height   = 2.5,
#            units    = "in",
#            dpi      = 600
# )
```

<a name="completed-boxplot"></a>

## report

In an Rmd report document, we include a code chunk to run the carpentry
file and the design file using `source()`. (These commands are shown to
illustrate the process only—we did not create these files for the
tutorial.)

``` r
# do not run this code chunk
# source("carpentry/dx-plot-data-carpentry.R")
# source("design/dx-plot-data-design.R")
```

We import the final figure into the report using
`knitr::include_graphics()`.

``` r
# include_graphics("../figures/dx-plot-data.png")
```

<a href="#top">Top of page</a>

## exercises

**1. exercise**

Create `practice/dx-plot-data-exercise.R`

  - After tidying the data, save it to `data/dx-plot-data-exercise.rds`
  - When the graph is complete, save it to
    `figures/dx-plot-data-exercise.png`

<a href="#top">Top of page</a>

## references

<div id="refs">

</div>

-----

<a href="#top">Top of page</a>  
[Calendar](../README.md#calendar)  
[Index](../README.md#index)

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
