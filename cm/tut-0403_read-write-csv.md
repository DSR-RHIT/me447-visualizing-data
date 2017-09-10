
write a CSV file
----------------

From the previous tutorial, you will have the data frames *press\_calibr* and *wide\_data* in your workspace.

From the *readr* package in the tidyverse, we use *write\_csv()*.

``` r
# write the data frames to CSV files
write_csv(press_calibr, "data/press-calibr-long.csv")
write_csv(wide_data, "data/press-calibr-wide.csv")
```

read a csv file
---------------

First, we'll clear the workspace of all variables.

``` r
# clear the workspace
rm(list = (ls()))

# confirm that all variables are removed
ls()
## character(0)
```

See also the Environment tab in the RStudio pane; it should be empty.

From the *readr* package in the tidyverse, we use *read\_csv()* to read the CSV file we just created.

``` r
# read a CSV file
press_calibr <- read_csv("data/press-calibr-long.csv")
```

The message printed in the output tells us how *read\_csv* parsed the data, in this case, as integers, characters, and double-precision numbers.

This data frame is now the only object in our workspace. See also the Environment tab in the RStudio pane.

``` r
# check the workspace
ls()
## [1] "press_calibr"
```

Next tutorial: [examine a new data set](tut-0404_examine-new-data.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
