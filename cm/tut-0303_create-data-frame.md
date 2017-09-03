
create a data frame
-------------------

Our scatterplot script to this point consists of

``` r
# to access the functionality of the ggplot2 package 
library(ggplot2)
```

Next, we'll create some numerical vectors for plotting.

``` r
# create objects to be assembled in a data frame
time_sec <- seq(0, 2*pi, by = pi/50) # sec
freq     <- 2                        # r/s
displ_mm <- sin(freq * time_sec)     # mm
```

Style notes:

-   Always put a space after a comma, and never before (just like in regular English).
-   Variable and function names should be lowercase. Use an underscore to separate words within a name.
-   Generally, variable names should be nouns and function names should be verbs. Strive for names that are concise and meaningful (this is not easy!)
-   In adjacent lines of code, align the assignment operators `<-` for readability.

------------------------------------------------------------------------

Self-check quiz

1.  Explain the arguments of the `seq()` function.
2.  For each of the three lines of code, identify which objects are scalars and which are vectors.

Confirm your answers by typing the variable name in the Console and viewing the output.

------------------------------------------------------------------------

Please stop a minute. If you didn't take the quiz, please stop and do so.

``` r
# ggplot2 requires data in data frame form
vibr_data <- data.frame(time_sec, displ_mm)
```

Use the `str()` function to examine the structure of `vibr_data`.

``` r
# examine the data frame structure
str(vibr_data)
## 'data.frame':    101 obs. of  2 variables:
##  $ time_sec: num  0 0.0628 0.1257 0.1885 0.2513 ...
##  $ displ_mm: num  0 0.125 0.249 0.368 0.482 ...
```

-   The number of "observations"" is the number of rows.
-   The number of "variables" is the number of columns.
-   The column names and types (`num`) are shown.

To see the first few rows of the data frame, use the `head()` function.

``` r
# control significant digits in printout
options(digits = 3) 

# examine the data frame structure
head(vibr_data)
##   time_sec displ_mm
## 1   0.0000    0.000
## 2   0.0628    0.125
## 3   0.1257    0.249
## 4   0.1885    0.368
## 5   0.2513    0.482
## 6   0.3142    0.588
```

-   The integers are the row numbers of the data frame
-   We'll talk about data frames in more detail soon

Next tutorial: [create a scatterplot](tut-0304_create-scatterplot.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
