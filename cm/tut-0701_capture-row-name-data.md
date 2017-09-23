
preparation
-----------

Start by opening your RStudio project:
File → Recent projects → me447\_visualizing-data.Rproj.

> ALWAYS start your work session by launching the .Rproj file you created for this course

Using an R Project sets the working directory to your course folder, making relative file paths easy to use.

Script

-   Open a new R file *tut05\_dotplot-basics.R*
-   Save it to your *practiceR* folder

Start with a header

    #  ------------------------------------------
    #  dot plot basics
    #
    #  your name
    #  date
    #  ------------------------------------------

capture data stored in row names
--------------------------------

We'll start with some (nearly) tidy data.

``` r
# dataset in R, 1973–74 models, Motor Trend
data(mtcars)
head(mtcars)
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

This data set has information stored in the row names of the data frame. So, not quite tidy.

The *dplyr* package (for data manipulation) gives us the "pipe" operator `%>%` and *mutate()* that creates a new variable (column) in the data frame.

``` r
# copy the row names to a new variable "make_model" 
library(dplyr)
my_mtcars <- mtcars %>%
    mutate(make_model = row.names(mtcars))
```

Examine the result. You can see that a new variable *make\_model* has been added to the data frame.

``` r
class(my_mtcars)
## [1] "data.frame"
```

``` r
glimpse(my_mtcars)
## Observations: 32
## Variables: 12
## $ mpg        <dbl> 21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22....
## $ cyl        <dbl> 6, 6, 4, 6, 8, 6, 8, 4, 4, 6, 6, 8, 8, 8, 8, 8, 8, ...
## $ disp       <dbl> 160.0, 160.0, 108.0, 258.0, 360.0, 225.0, 360.0, 14...
## $ hp         <dbl> 110, 110, 93, 110, 175, 105, 245, 62, 95, 123, 123,...
## $ drat       <dbl> 3.90, 3.90, 3.85, 3.08, 3.15, 2.76, 3.21, 3.69, 3.9...
## $ wt         <dbl> 2.620, 2.875, 2.320, 3.215, 3.440, 3.460, 3.570, 3....
## $ qsec       <dbl> 16.46, 17.02, 18.61, 19.44, 17.02, 20.22, 15.84, 20...
## $ vs         <dbl> 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, ...
## $ am         <dbl> 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...
## $ gear       <dbl> 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, ...
## $ carb       <dbl> 4, 4, 1, 1, 2, 1, 4, 2, 2, 4, 4, 3, 3, 3, 4, 4, 4, ...
## $ make_model <chr> "Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet...
```

Next tutorial: [create a dot plot](tut-0702_create-dot-plot.md)<br> Tutorial list: [week 2](week-02_assignments.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
