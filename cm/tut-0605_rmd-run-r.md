
run an R script from the Rmd script
-----------------------------------

Quite often, we will have an R script that does some data carpentry or creates a graph and we want the .Rmd script to execute that code, produce the graph, and embed the figure in the report (or portfolio).

I'll assume that from an earlier tutorial you have a script *tut02\_scatterplot.R* saved in your *practiceR* directory

-   Open the current tutorial script called *practiceR/tut-04\_second-report.Rmd*.
-   Add a code chunk.
-   In the code chunk, add the *source()* function. The argument is the path to the file you want to run.

        source("practiceR/tut02_scatterplot.R")  

-   add the echo argument to the code chunk header to turn on or off printing the code to your output document.
-   Knit HTML to check that everything works as expected.

<!-- -->

    ## 'data.frame':    101 obs. of  2 variables:
    ##  $ time_sec: num  0 0.0628 0.1257 0.1885 0.2513 ...
    ##  $ displ_mm: num  0 0.125 0.249 0.368 0.482 ...

![](tut-06-images/unnamed-chunk-2-1.png)

Next tutorial: [Rmd exercise](tut-0607_rmd-exercise.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
