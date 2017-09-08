
create an R markdown file
-------------------------

Launch your RStudio project.

From RStudio, create a new R Markdown file:

-   *File &gt; New File &gt; R Markdown...*

In the dialog box:

-   Use the default HTML settings for now.

An untitled R Markdown file is created with some default text and R code. Save the file:

-   *File &gt; Save As...*
-   Save it to your *practiceR* directory
-   With the file name *tut04\_first-report.Rmd*

To "render" the document, use the *Knit* pulldown menu:

-   *Knit &gt; Knit to HTML*

<img src="../images/start-rmd-knit-icon.png" width="335" />

The report appears in your RStudio viewer.

<img src="../images/start-rmd-default-report.png" width="850" />

The HTML output is convenient when you are drafting a report. We'll switch to Word output later.

edit the R markdown output format
---------------------------------

The header or front matter is in YAML (YAML Ain't Markup Language) syntax. The YAML header specifies how the file is rendered.

<pre class="r"><code>---
title: "Untitled"
author: "Richard Layton"
date: "August 14, 2015"
output: html_document
---</code></pre>
Let's change the title to *Test Report*.

<pre class="r"><code>title: "Test Report"
</code></pre>
The `output:` option recognizes three document types:

-   html\_document
-   pdf\_document
-   word\_document

You can type these directly in the Rmd YAML header or you can use the RStudio `Knit` pull-down menu

<img src="../visuals/knit-to-pdf.PNG" width="250">

`Knit HTML` produces

<img src="../visuals/output-html.png" width="600">

`Knit PDF` (only if TeX is installed on your machine) produces

<img src="../visuals/output-pdf.png" width="600">

`Knit WORD` (only if Word is installed on your machine) produces

<img src="../visuals/output-word.png" width="600">

basic R markdown markup tags
----------------------------

See the [R Markdown cheat sheet](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) for a more extensive summary of R Markdown.

#### section headings

<img src="../visuals/markup-output-sections.PNG" width="600">

#### emphasis

<img src="../visuals/markup-output-emphasis.PNG" width="600">

#### itemize

Every line ends with two spaces.
Sub-items begin with 4 spaces.

<img src="../visuals/markup-output-itemize.PNG" width="600">

#### enumerate

Every line ends with two spaces.
Sub-items begin with 4 spaces.

<img src="../visuals/markup-output-enumerate.PNG" width="600">

#### links

Use a plain URL or add a link to a phrase:

<pre class="markdown"><code>http://example.com

[linked phrase](http://example.com)</code></pre>
#### images

Local files

The relative path for images starts in the directory of the Rmd file, in this case, the *practiceR* directory. The path states: go up one level "../", down one level "visuals/", and import the image "an\_image.png".

<pre class="markdown"><code>![alt text](../visuals/an_image.png)
</code></pre>
Images on the web

<pre class="markdown"><code>![alt text](http://example.com/logo.png)
</code></pre>
start your portfolio
--------------------

Initialize the .Rmd file

-   Open a new Rmd file.
-   Save it in your *portfolio* directory with filename *your-last-name\_data-graphics-portfolio\_v01.Rmd*.
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

run an R script from the Rmd script
-----------------------------------

In your portfolio .Rmd script, add a heading, for example,

<pre class="markdown"><code># D1 Scatterplot</code></pre>
Knit HTML to check that everything works as expected.

Add an R code chunk. Use the *source()* function to execute an R file that creates a graph. Here, the relative path shown assumes the .R script is saved in the *design* directory.

<pre class="r"><code>```{r D1, echo=FALSE}
source("design/name-of-file.R")
<code>```</code>
</code></pre>
-   `echo=FALSE` because the reader of your portfolio is generally not interested in the code
-   the *design* folder is where you should save all the R scripts that create the graphs in your portfolio. We'll discuss file management soon.
-   Knit HTML (or Word) to check that everything works as expected.

For drafting stages I prefer HTML output. Later we will cover how to manage Word Styles to customize the design of Word output documents.

adding prose to your portfolio
------------------------------

Most of your prose will be in plain text in the .Rmd script.

-   To the portfolio .Rmd script, write your critique in plain text.
-   Use markup tags for heading levels, emphasis, etc.
-   Knit HTML (or Word) to check that everything works as expected.

For drafting stages I prefer HTML output. Later we will cover how to manage Word Styles to customize the design of Word output documents.

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
