
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

Next tutorial: [basic R markdown markup tags](tut-0603_rmd-basic-tags.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
