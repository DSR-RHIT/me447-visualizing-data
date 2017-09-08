
initializing an Rmd script
--------------------------

Initialize the .Rmd file

-   Open a new Rmd file.
-   Save it in your *practiceR* directory with filename *tut-04\_second-report.Rmd*.
-   Delete everything below the YAML header.
-   Edit the title and name in the header.

If you want the document date to auto-update, edit the YAML header date field to read:

<pre class="r"><code>date: "<code>`</code>r format(Sys.time(), "%Y-%m-%d")<code>`</code>"</code></pre>
The single backticks delimit executable in-line R code.

The next entry is the following code chunk.

-   *Insert &gt; R* in the menu bar just above the file pane. This creates the R code chunk delimiters for you.

<pre class="markdown"><code>```{r}

<code>```</code></code></pre>
Inside the code chunk, add the following.

    # set the working directory for knitr one level up
    library(knitr) 
    opts_knit$set(root.dir="../") 

These lines of code ensure that when you knit an .Rmd file in your *portfolio* directory, *knitr* treats the directory one level up (the main course directory) as the working directory.

This behavior then matches how the various R scripts you have been writing work. They all treat the main RStudio project directory (your course folder) as the working directory.

-   Knit HTML (or Word) to check that everything works as expected.

For drafting stages I prefer HTML output. Later we will cover how to manage Word Styles to customize the design of Word output documents.

Next tutorial: [run an R script from the Rmd script](tut-0605_rmd-run-r.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
