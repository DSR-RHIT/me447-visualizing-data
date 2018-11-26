
<!-- csl: "../resources/styles/journal-of-peace-research.csl" -->

<!-- link-citations: yes -->

# portfolio lab

<img src="../resources/images/header-portfolio-lab.png" width="70%" />

<small> *Troy from Mount Ida* (No. 11 of The Hudson River Portfolio) is
licensed under
[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/legalcode/)
</small>

## contents

[media](#media)  
[preparation](#preparation)  
[organize the README file](#organize-the-readme-file)  
[importing images](#importing-images)  
[start a report](#start-a-report)  
[data tables](#data-tables)  
[create the bib file](#create-the-bib-file)  
[YAML bibliography argument](#yaml-bibliography-argument)  
[add a citation](#add-a-citation)  
[add a references heading](#add-a-references-heading)  
[format the citations and
references](#format-the-citations-and-references)  
[presentation prompts](#presentation-prompts)  
[reading prompts](#reading-prompts)

## media

Your portfolio is a website in the form of a GitHub repository. The repo
is private, accessible only to people you invite as collaborators.
However, your intended audience are your professional peers and
prospective employers.

[This sample](https://github.com/graphdr/portfolio-sample) shows the
basic layout of the portfolio website we are about to start building.

## preparation

Using an R Project sets the working directory to your portfolio folder,
making relative file paths easy to use.

  - Always start your work session by launching the `.Rproj` file you
    created for the portfolio.

## organize the README file

The README file is the main page of the website. README introduces the
reader to your portfolio and provides navigation links to your
individual display reports. The introduction and display reports are the
the main elements of a portfolio that you might eventually make public.

The responses to the prompts are essentially research material you use
to write the reports and that I use to assess your progress.

> Write instructions to begin editing the README. Section headings and a
> link to the first report. Some suggestions for editing the
> Introduction.

## importing images

All work is performed within RStudio with your `portfolio.Rproj` file
open.

> Instructions on saving any image to the resources folder. Then as an
> example, import to the README page as a placeholder.

## start a report

All work is performed within RStudio with your `portfolio.Rproj` file
open.

One Rmd report is written per display. Each report describes the data,
the graph design, and elements of visual rhetoric relevant to the story.

> Instructions for creating the first report template, `reports/d1.Rmd`.
> Push to github and test the link from README to the report.

## data tables

All work is performed within RStudio with your `portfolio.Rproj` file
open.

> In the sample report, show how to create a sample data table.
> Typically wide. Brief introduction to principles from Stephen few on
> table layout—adapted to the GitHub environment.

## create the bib file

All work is performed within RStudio with your `portfolio.Rproj` file
open.

The `.bib` file contains the complete list of references used in your
portfolio. It can contain more refences than needed; only those
references actually cited will appear.

Create your bib file

  - RStudio *File \> New File \> Text File*
  - *Save As* `references.bib` in the `resources` directory
  - In `references.bib`, type your references in BiBTeX format, for
    example:

<pre class="r"><code>@book{WickhamGrolemund2017,
  author    = {Hadley Wickham and Garrett Grolemund},
  title     = {{R for Data Science}},
  publisher = {{O'Reilly}},
  year      = {2017},
}</code></pre>

`@book{}` and its enclosing braces denotes the type of reference, e.g.,
a book, an article, a chapter in a book, etc. BiBTeX has numerous
predefined entry types; see [entry
types](https://nwalsh.com/tex/texhelp/bibtx-7.html) by Norm Walsh and
[verbosus](https://verbosus.com/bibtex-style-examples.html) for the most
commonly encountered entry types and their arguments.

`WickhamGrolemund2017` is the unique label I assigned to this reference.
I usually use an `AuthorYYYY` style. You can use any style label as long
as each reference label is unique.

The double braces, for example `title = {{R for Data Science}}` and
`publisher = {{O'Reilly}}` are used to preserve specific capitalization.

## YAML bibliography argument

Open the report Rmd file you started earlier. Edit the YAML header to
specify the path and file name of the `.bib` file you just created.

<pre class="r"><code>---
output: github_document
bibliography: "../resources/references.bib"
---</code></pre>

If the report Rmd script is in the reports directory, the relative path
goes up one level `../`, then down to the `resources/` folder and there
we find the `references.bib` file.

## add a citation

The syntax for a citation is `[@label]`, where the label is the label
you assigned in the `.bib` file.

  - In your report, add a sentence with a citation such
as:

<pre class="r"><code>Visualisation is a great place to start with R programming, because the payoff is 
so clear: you get to make elegant and informative plots that help you understand 
data [@WickhamGrolemund2017]. 
</code></pre>

  - Knit the document. You should see output like this:

> Visualisation is a great place to start with R programming, because
> the payoff is so clear: you get to make elegant and informative plots
> that help you understand data (Wickham and Grolemund 2017).

The software has found the reference in your `.bib` file and formatted
the citation using its default author-date format.

You will find the reference itself at the bottom of your document.

## add a references heading

At the end of the Rmd script, add a references section heading.

    ## References

Knit the document. The reference now appears after this heading.

To place the references section other than at the end of the document,
we use some HTML scripting as follows. Type the references heading where
you want the references to appear followed by the HTML`<div>` markup,

    ## References
    
    <div id="refs"></div>

## format the citations and references

<!-- You don't have to do this step right away, but you might want to later in the term. -->

<!-- Quite often a publisher or organization requires that citations and references be formatted in a specific way, for example, IEEE requires a numbered citation and numbered references while an APA style uses an author-date citation and an alphabetically-ordered bibliography.  -->

<!-- We use a CSL file to override the default Rmd citation/reference style.   -->

<!-- - Find a format you like at the [Zotero Style Repository](https://www.zotero.org/styles) or at the official   [CSL Repository](https://github.com/citation-style-language/styles) that suits your needs, for example `chicago-author-date.csl` or `ieee.csl`  -->

<!-- - Download the CSL file and save it to the same directory as the portfolio   -->

<!-- - Edit the YAML header to designate the CSL style file you wish to use.   -->

<!-- <pre class="r"><code>--- -->

<!-- title: "Portfolio" -->

<!-- author: "name" -->

<!-- date: "date" -->

<!-- output: word_document -->

<!-- bibliography: "portfolio.bib" -->

<!-- csl: "chicago-author-date.csl" -->

<!-- ---</code></pre> -->

<!-- Knit your document and both the citation formatting and the references formatting will change throughout the document.  -->

## presentation prompts

All work is performed within RStudio with your `portfolio.Rproj` file
open.

Complete the prompts before the start of class on the day of the
presentation.

  - These points guide the small-group discussions.
  - Much of this work will be part of your portfolio critiques.

> Instructions on using the template file

## reading prompts

All work is performed within RStudio with your `portfolio.Rproj` file
open.

Complete the prompts before the start of class on the day of the reading
discussion.

Visual design and rhetorical decisions are expected to be supported by
evidence from our readings.

> Instructions on using the template file

<!-- portfolio checklist (revise)  -->

<!-- describe, discuss, and critique  -->

<!-- sample portfolio entries  -->

<!-- commit-pull-push  -->

<!-- ## references -->

<!-- <div id="refs"></div> -->

-----

[Calendar](../README.md#calendar)  
[Index](../README.md#index)

<div id="refs" class="references">

<div id="ref-WickhamGrolemund2017">

Wickham, Hadley, and Garrett Grolemund. 2017. *R for Data Science*.
O’Reilly.

</div>

</div>
