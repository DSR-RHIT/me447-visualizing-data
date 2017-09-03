
data basics
-----------

After working through this tutorial, you should be able to

-   Read data from an Excel file
-   Write data to a CSV file
-   Read data from a CSV file
-   Convert wide form data to long form
-   Access data sets included with R and R packages

preparation
-----------

Launch your RStudio project for the course, *me447-visualizing-data.Rproj*.

Packages

-   Install *tidyverse*
-   Install *readxl*
-   Install *fivethirtyeight*

The tidyverse is a set of packages that includes: ggplot2 (for data visualisation), dplyr (for data manipulation), tidyr (for data tidying), and readr (for data import).

Data

-   Manually download *pressure-calibration.xlsx* file from the *data* folder on our website.
-   Manually download *lotr-words-spoken.xlsx* file from the *data* folder on our website.
-   Save both files to your *data* directory in your course folder.

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

``` r
# if you like to start with an empty workspace
rm(list = (ls()))

# libraries we use in this tutorial
suppressPackageStartupMessages(library(tidyverse))
library(readxl)
library(fivethirtyeight)
```

importing data from an Excel file
---------------------------------

On your local machine

-   Open *pressure-calibration.xlsx* in Excel.
-   Take a look at the two worksheets (tabs). Note how they differ.

One worksheet shows the data in *wide form*, great for human readability; the other shows the data in *long form*, what we want for making graphs

-   Close the Excel file

<!-- 18 places to look for data set for data science projects  -->
<!-- https://www.dataquest.io/blog/free-datasets-for-projects/ -->
<!-- 30 places  -->
<!-- https://visual.ly/blog/data-sources/ -->
exercises
---------

1.  From our course website, in the data folder, download the Excel spreadsheet *lotr-words-spoken.xlsx*. This file contains the numbers of words spoken in eacj film disaggregated by race and sex. Read the Excel file, convert the data from wide form to long form; write the final file as a CSV file.

2.  From the 538 package, use the *fandango* data set. Draw two scatterplots: one showing the `rottentomatoes` ratings as a function of the `metacritic` ratings; the second showing the `fandango_ratingvalue` as a fucntion of the `metacritic` data. What conclusions do you draw?
