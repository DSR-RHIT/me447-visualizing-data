data basics
================

After working through this tutorial, you should be able to

-   Describe a "tidy" dataset
-   Read data from an Excel file
-   Read and write CSV data files
-   Access data sets included with R and R packages

preparation
-----------

Start by opening your RStudio project:
File → Recent projects → me447\_visualizing-data.Rproj.

> ALWAYS start your work session by launching the .Rproj file you created for this course

Using an R Project sets the working directory to your course folder, making relative file paths easy to use.

getting started
---------------

Packages

-   Install *tidyverse*
-   Install *readxl*

The tidyverse is a set of packages that includes: ggplot2 (for data visualization), dplyr (for data manipulation), tidyr (for data tidying), and readr (for data import).

Data

-   Manually download *pressure-calibration.xlsx* file from the *data* folder on our website.
-   Save the file to your *data* directory in your course folder.

Script

-   Open a new R file *tut03\_data-basics.R*
-   Save it to your *practiceR* folder

Start with a header

    #  ------------------------------------------
    #  data basics
    #
    #  your name
    #  date
    #  ------------------------------------------

Initialize

    # if you like to start with an empty workspace
    rm(list = (ls()))

    # libraries we use in this tutorial
    library(tidyverse)
    library(readxl)

Next tutorial: [read data from an Excel file](tut-0402_read-excel.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
