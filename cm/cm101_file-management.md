
<a name="top"></a>

# file management

<img src="../resources/cm101_header.png" width="70%" />

<small> *Files* by Mitch Barrie is licensed under [CC
BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/) </small>

## contents

[directory structure](#directory-structure)  
[file naming](#file-naming)  
[file searching](#file-searching)  
[relative paths](#relative-paths)

## directory structure

The directory structure for the course given below. The purpose of each
file and folder is described in detail in [Basic elements of file
management](../slides/w03-4-file-management.pdf) slides.

<img src="../resources/icon-folder.png" width="2%" /> carpentry  
<img src="../resources/icon-folder.png" width="2%" /> data  
<img src="../resources/icon-folder.png" width="2%" /> data-raw  
<img src="../resources/icon-folder.png" width="2%" /> design  
<img src="../resources/icon-folder.png" width="2%" /> figures  
<img src="../resources/icon-folder.png" width="2%" /> manage  
<img src="../resources/icon-folder.png" width="2%" /> practice  
<img src="../resources/icon-folder.png" width="2%" /> reports  
<img src="../resources/icon-folder.png" width="2%" /> resources  
<img src="../resources/icon-document-40px.png" width="2%" />
.gitignore  
<img src="../resources/icon-document-40px.png" width="2%" /> .Renviron  
<img src="../resources/icon-Rmd.png" width="2%" /> README.Rmd  
<img src="../resources/icon-md.png" width="2%" /> README.md  
<img src="../resources/icon-Rproj.png" width="2%" /> portfolio.Rproj

## file naming

Carefully consider your file naming scheme when you write your first
script. Rough out the expected file names for each directory
contributing to a particular report. For example, suppose for portfolio
display D1, I designed a strip plot to display the `speedski` data. I
might use the file naming scheme: every file starts with the display
number, `d1`, followed by the graph type, `-stripplot`, and the data
set, `-speedski`.

    carpentry/ d1-stripplot-speedski-carpentry.R
    data/      d1-stripplot-speedski.rds
    design/    d1-stripplot-speedski-design.R
    figures/   d1-stripplot-speedski.png 
    reports/   d1-stripplot-speedski.Rmd

I am likely to have at least two R scripts (carpentry and design), so I
add it’s category, `-carpentry.R` or `-design.R`.

If I need more than one script of the same type in a directory, I’ll add
a sequential number to the file name. e.g.,

    carpentry/ d1-stripplot-speedski-carpentry-01.R
    carpentry/ d1-stripplot-speedski-carpentry-02.R

This scheme is a suggestion—you may design your own.

  - You are also likely to change your approach with every project.  
  - But pick a scheme and use it\!

## relative paths

Explicitly link files using relative file paths. For example, report
script

    reports/d1-stripplot-speedski.Rmd

contains the text of the report interleaved with code chunks that run
every R script,

    source("carpentry/d1-stripplot-speedski-carpentry.R")
    source("design/d1-stripplot-speedski-design.R")

import data to print a data table,

    readRDS("data/d1-stripplot-speedski.rds")

and import figures.

    include_graphics("figures/d1-stripplot-speedski.png")

## file searching

The advantage of planning this file naming scheme at the beginning of
the work is that it supports machine readability. For example, I can use
the `list.files()` function to search for all file names that include
`stripplot`

``` r
this_path <- "."
list.files(path = this_path, pattern = "stripplot", recursive = TRUE, ignore.case = TRUE)
#> [1] "carpentry/d1-stripplot-speedski-carpentry.R"
#> [2] "data/d1-stripplot-speedski.rds"             
#> [3] "design/d1-stripplot-speedski-design.R"      
#> [4] "figures/d1-stripplot-speedski.png"          
#> [5] "practice/d1-stripplot-speedski-tutorial.R"  
#> [6] "slides/d1-stripplot-speedski-slides.png"
```

Or for all file names that include
`speedski`

``` r
list.files(path = this_path, pattern = "speedski", recursive = TRUE, ignore.case = TRUE)
#> [1] "carpentry/d1-stripplot-speedski-carpentry.R"
#> [2] "data/d1-stripplot-speedski.rds"             
#> [3] "design/d1-stripplot-speedski-design.R"      
#> [4] "figures/d1-stripplot-speedski.png"          
#> [5] "practice/d1-stripplot-speedski-tutorial.R"  
#> [6] "slides/d1-stripplot-speedski-slides.png"
```

Or for all file names that start with `d1` and end with `.png`

``` r
intersect(
  list.files(path = this_path, pattern = "^d1", recursive = TRUE, ignore.case = TRUE),     
  list.files(path = this_path, pattern = "\\.png$", recursive = TRUE, ignore.case = TRUE)
    )
#> [1] "cm/figures/d1-01-stripchart-speed-ski.png"
#> [2] "figures/d1-boxplot-nontrad.png"           
#> [3] "figures/d1-stripplot-speedski.png"        
#> [4] "slides/d1-boxplot-nontrad-slides.png"     
#> [5] "slides/d1-stripplot-speedski-slides.png"
```

## references

<div id="refs">

</div>

-----

<a href="#top">Top of page</a>  
[Calendar](../README.md#calendar)  
[Index](../README.md#index)
