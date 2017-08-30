
start a script (scatterplot)
----------------------------

Start every session for our course work by launching your *me447\_visualizing-data.Rproj* file,

*File* → *Open Project* → *me447\_visualizing-data.Rproj*

Using an R Project sets the working directory to your course folder, making relative file paths easy to use.

Start a new R script and save it to your *practiceR* directory.

-   *File* → *New File* → *R Script*
-   *File* → *Save As ...* → *03\_tut\_scatterplot.R*

My suggested file naming

-   starts with *03* indicating the class day (40 total) we did the work
-   followed by *tut* indicating a tutorial
-   concludes with *scatterplot* indicating the topic

Begin the file with a header, something like this.

    #  ------------------------------------------
    #  start learning ggplot2 using a scatterplot
    #
    #  Richard Layton
    #  2017-08-29
    #  ------------------------------------------

Clearing variables from your workspace is optional.

``` r
# if you like to start with an empty workspace 
rm(list = (ls()))
```

Style notes:

-   Place spaces around all operators (`=, +, -, <-, *`, etc.).
-   Comments should explain the why, not the what.
-   See Hadley Wickham's [Advanced R](http://adv-r.had.co.nz/Style.html) for more on R coding style guidelines. (Hadley is "Internet famous" in the R community for creating marvelous packages.)

To run the script after adding a new code chunk,

-   Press the *Source* button (in the upper-right corner of the script pane) to run your script.
-   I recommend you acquire this habit to help you identify and debug problems as they occur.
-   After running a script, the Console pane will show a prompt and a cursor, `> |` indicating that your script executed with no errors.

Next tutorial: [install and load a package](tut-0302_install-load-package.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](README-by-topic.md)
