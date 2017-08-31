
starting a practiceR script
---------------------------

Start every session for our course work by launching your *me447\_visualizing-data.Rproj* file,

*File* → *Open Project* → *me447\_visualizing-data.Rproj*

Using an R Project sets the working directory to your course folder, making relative file paths easy to use.

scatterplot
-----------

Start a new R script and save it to your *practiceR* directory.

-   *File* → *New File* → *R Script*
-   *File* → *Save As ...* → \*\*tut02\_scatterplot.R\*

My suggested file naming

-   starts with *tut* indicating a tutorial
-   follows with with *02* indicating chronological order in which the tuitorials are assigned
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

course directory check
----------------------

We added new files to your directory

    me447_visualizing-data
      |- data
      |- design 
      |- portfolio 
      |- practiceR 
      |     |- tut01_first-script.R
      |     `- tut02_scatterplot.R
      |- visuals
      `- me447_visualizing-data.Rproj

------------------------------------------------------------------------

Next tutorial: [install and load a package](tut-0302_install-load-package.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](README-by-topic.md)