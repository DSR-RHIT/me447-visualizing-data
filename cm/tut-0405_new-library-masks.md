
when a new library masks a function
-----------------------------------

In the previous tutorial, we loaded the *VIM* package and a message was printed indicating that an object is "masked." The message indicates that the *VIM* package defines functions *between()*, *first()*, and *last()* that are also functions in the *dplyr* package. Because *VIM* was loaded last, its functions "mask" the *dplyr* functions of the same name.

``` r
# load the package
library(VIM)
## Loading required package: colorspace
## Loading required package: grid
## Loading required package: data.table
## data.table 1.10.4
##   The fastest way to learn (by data.table authors): https://www.datacamp.com/courses/data-analysis-the-data-table-way
##   Documentation: ?data.table, example(data.table) and browseVignettes("data.table")
##   Release notes, videos and slides: http://r-datatable.com
## 
## Attaching package: 'data.table'
## The following objects are masked from 'package:dplyr':
## 
##     between, first, last
## The following object is masked from 'package:purrr':
## 
##     transpose
## VIM is ready to use. 
##  Since version 4.0.0 the GUI is in its own package VIMGUI.
## 
##           Please use the package to use the new (and old) GUI.
## Suggestions and bug-reports can be submitted at: https://github.com/alexkowa/VIM/issues
## 
## Attaching package: 'VIM'
## The following object is masked from 'package:datasets':
## 
##     sleep
```

This issue arises because people are constantly writing new packages and there is inevitably some overlap in naming functions.

Since I use *dplyr* a lot but *VIM* only ocassionally, I can "unload" *VIM* once I'm done with it using the *unloadNamespace()* function: the opposite of the *library()* function.

``` r
# unload a package
unloadNamespace("VIM")
```

Use *search()* to confirm that *VIM* is no longer loaded.

``` r
# list packages currently loaded
search()
##  [1] ".GlobalEnv"         "package:data.table" "package:grid"      
##  [4] "package:colorspace" "package:rmarkdown"  "package:readxl"    
##  [7] "package:dplyr"      "package:purrr"      "package:readr"     
## [10] "package:tidyr"      "package:tibble"     "package:ggplot2"   
## [13] "package:tidyverse"  "tools:rstudio"      "package:stats"     
## [16] "package:graphics"   "package:grDevices"  "package:utils"     
## [19] "package:datasets"   "package:methods"    "Autoloads"         
## [22] "package:base"
```

Next tutorial: [add a regression line to a plot](tut-0406_add-regression.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
