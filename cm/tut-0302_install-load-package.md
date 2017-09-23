install and load packages
================

-   [preparation](#preparation)
-   [install and load a package](#install-and-load-a-package)

preparation
-----------

*Packages* are R modules that you can download and install (like apps for R). Before installing any packages, make sure have done the following:

-   Did you start this session by launching your .Rproj file for the course? If not, select File → Recent projects → me447\_visualizing-data.Rproj.
-   Does your top-level directory for the course include the .Renviron file? If not, revisit the [create top level package library](https://github.com/DSR-RHIT/install-R-and-RStudio/blob/master/pages/setup_Renviron.md) page.

install and load a package
--------------------------

Watch this [1-minute video](https://www.youtube.com/watch?v=ljdfqMfWn_A) to learn how to install an R package.

-   Next, install the `tidyverse` package (by Hadley Wickham). This package encompasses an entire suite of useful packages, including `ggplot2`.

Once a package is installed, you load the package using the `library()` command.

``` r
# to access the functionality of the ggplot2 package 
library(ggplot2)
```

Again, add this line of code to your script and run the script by pressing the *Source* button.

Next tutorial: [create a data frame](tut-0303_create-data-frame.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
