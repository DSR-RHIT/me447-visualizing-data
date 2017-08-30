
create a scatterplot
--------------------

Our scatterplot script to this point consists of

``` r
library(ggplot2)

time_sec  <- seq(0, 2*pi, by = pi/50) # sec
freq      <- 2                        # r/s
displ_mm  <- sin(freq * time_sec)     # mm
vibr_data <- data.frame(time_sec, displ_mm)
```

The structure of our *ggplot2* scatterplot begins with identifying the data frame, the columns assigned as *x* and *y* variables, and using *points* as data markers.

``` r
# basic scatterplot
f1 <- ggplot(data = vibr_data, aes(x = time_sec, y = displ_mm)) +
    geom_point()

print(f1)
```

![](tut-0304_create-scatterplot_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-3-1.png)

What the commands mean

-   `ggplot()` initializes a ggplot object
-   `data =` assigns the data frame with our data
-   `aes()` describes the "aesthetic mapping" from data to visual properties
-   `geom_point()` draws points on a scatterplot
-   `print()` prints the graph onscreen in the RStudio *Plots* pane.

Previous tutorial: [start a script for a scatterplot](tut-0303_create-data-frame.md)<br> Next tutorial: [create a data frame](tut-0305_edit-data-markers.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](README-by-topic.md)
