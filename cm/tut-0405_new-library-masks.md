
when a new library masks a function
-----------------------------------

In the previous tutorial, we loaded the *VIM* package and a message was printed indicating that an object is "masked." The message indicates that the *VIM* package defines functions *between()*, *first()*, and *last()* that are also functions in the *dplyr* package. Because *VIM* was loaded last, its functions "mask" the *dplyr* functions of the same name.

``` r
# load the package
library(VIM)
## Loading required package: colorspace
## Loading required package: grid
## Loading required package: data.table
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
##  [1] ".GlobalEnv"         "package:VIM"        "package:data.table"
##  [4] "package:grid"       "package:colorspace" "package:rmarkdown" 
##  [7] "package:readxl"     "package:dplyr"      "package:purrr"     
## [10] "package:readr"      "package:tidyr"      "package:tibble"    
## [13] "package:ggplot2"    "package:tidyverse"  "package:stats"     
## [16] "package:graphics"   "package:grDevices"  "package:utils"     
## [19] "package:datasets"   "package:methods"    "Autoloads"         
## [22] "package:base"
```

Next tutorial: [add a regression line to a plot](tut-0406_add-regression.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
