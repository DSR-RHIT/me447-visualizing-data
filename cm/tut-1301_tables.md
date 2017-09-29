tables
================

-   [preparation](#preparation)
-   [tabulate some data](#tabulate-some-data)
-   [tables with *kable()*](#tables-with-kable)
-   [use `<br>` for an extra empty line](#use-br-for-an-extra-empty-line)
-   [tables with *pander()*](#tables-with-pander)
-   [auto-numbering tables](#auto-numbering-tables)

preparation
-----------

-   Open a new Rmd script called *tut13\_tables.Rmd*
-   Save it to your *practiceR* folder
-   Edit YAML header
-   Delete the remaining default contents

Add the usual knitr code chunk

    library(knitr)
    opts_knit$set(root.dir = "../")
    opts_chunk$set(echo = TRUE, messages = FALSE)

Load the libraries (you may have to install *pander* first.)

    library(tidyverse)
    library(pander)

Knit to Word.

tabulate some data
------------------

``` r
# create a subset of the mtcars data
df <- mtcars %>%
  mutate(make_model = row.names(mtcars)) %>%
  filter(near(cyl, 4)) %>%    
  select(make_model, mpg, wt) %>%
  mutate(wt = wt*1000) %>%
  arrange(desc(wt)) 
```

The simplest approach to printing a table is to just print the data frame as-is. Not particularly readable, but easy.

Add this sentence to your Rmd as prose.

> Here is a data frame printed with no additional formatting.

Then add this code chunk.

``` r
# just the data frame as is
print(df)
```

The output:

    ##        make_model  mpg   wt
    ## 1       Merc 240D 24.4 3190
    ## 2        Merc 230 22.8 3150
    ## 3      Volvo 142E 21.4 2780
    ## 4   Toyota Corona 21.5 2465
    ## 5      Datsun 710 22.8 2320
    ## 6        Fiat 128 32.4 2200
    ## 7   Porsche 914-2 26.0 2140
    ## 8       Fiat X1-9 27.3 1935
    ## 9  Toyota Corolla 33.9 1835
    ## 10    Honda Civic 30.4 1615
    ## 11   Lotus Europa 30.4 1513

Knit to Word.

tables with *kable()*
---------------------

The next approach is to use the *knitr* function *kable()*. We've used it before. First type a new sentence into your Rmd script, for example,

> Here is a paragraph just before a table by kable().

Add the code chunk.

``` r
# use knitr::kable() to print a data frame as a table 
kable(df) 
```

The output:

| make\_model    |   mpg|    wt|
|:---------------|-----:|-----:|
| Merc 240D      |  24.4|  3190|
| Merc 230       |  22.8|  3150|
| Volvo 142E     |  21.4|  2780|
| Toyota Corona  |  21.5|  2465|
| Datsun 710     |  22.8|  2320|
| Fiat 128       |  32.4|  2200|
| Porsche 914-2  |  26.0|  2140|
| Fiat X1-9      |  27.3|  1935|
| Toyota Corolla |  33.9|  1835|
| Honda Civic    |  30.4|  1615|
| Lotus Europa   |  30.4|  1513|

Knit to Word.

The default alignment agrees with our basic principles. For data shared within your working group, *kable()* is pretty good. For professional publication, we'll need something else.

use `<br>` for an extra empty line
----------------------------------

I notice that I need some white space to separate text from the code chunks and from the table. We can use the HTML line break tag `<br>` on its own line to create the extra white space.

Add the `<br>` markup on its own line, followed by a blank line before and after the sentence "Here is a paragraph just before a table by kable()."

Your markup in Rmd should look like this

    <br>

    Here is a paragraph just before a table.

    <br>

Knit to Word.

You should see that the `<br>` markup placed an extra line break on either side of he prose paragraph, giving you some additional white space before the table. I use this regularly when I want a single extra line.

tables with *pander()*
----------------------

I usually place initializing code chunks like this at the top of a script. The *right* and *left* arguments in the function will align text data left and numeric data right.

``` r
# set pander table-layout options
library(pander)
panderOptions('table.alignment.default', function(df)
    ifelse(sapply(df, is.numeric), 'right', 'left'))
panderOptions('table.split.table', Inf)
panderOptions('big.mark', ",")
panderOptions('keep.trailing.zeros', TRUE)
```

Type a new sentence into your Rmd script, for example,

> Here is a paragraph just before a table by pander().

Add the code chunk.

``` r
# use pander() to print a data frame as a table 
pander(df) 
```

The output:

<table style="width:43%;">
<colgroup>
<col width="23%" />
<col width="9%" />
<col width="9%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">make_model</th>
<th align="right">mpg</th>
<th align="right">wt</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Merc 240D</td>
<td align="right">24.4</td>
<td align="right">3,190</td>
</tr>
<tr class="even">
<td align="left">Merc 230</td>
<td align="right">22.8</td>
<td align="right">3,150</td>
</tr>
<tr class="odd">
<td align="left">Volvo 142E</td>
<td align="right">21.4</td>
<td align="right">2,780</td>
</tr>
<tr class="even">
<td align="left">Toyota Corona</td>
<td align="right">21.5</td>
<td align="right">2,465</td>
</tr>
<tr class="odd">
<td align="left">Datsun 710</td>
<td align="right">22.8</td>
<td align="right">2,320</td>
</tr>
<tr class="even">
<td align="left">Fiat 128</td>
<td align="right">32.4</td>
<td align="right">2,200</td>
</tr>
<tr class="odd">
<td align="left">Porsche 914-2</td>
<td align="right">26.0</td>
<td align="right">2,140</td>
</tr>
<tr class="even">
<td align="left">Fiat X1-9</td>
<td align="right">27.3</td>
<td align="right">1,935</td>
</tr>
<tr class="odd">
<td align="left">Toyota Corolla</td>
<td align="right">33.9</td>
<td align="right">1,835</td>
</tr>
<tr class="even">
<td align="left">Honda Civic</td>
<td align="right">30.4</td>
<td align="right">1,615</td>
</tr>
<tr class="odd">
<td align="left">Lotus Europa</td>
<td align="right">30.4</td>
<td align="right">1,513</td>
</tr>
</tbody>
</table>

Knit to Word. What we gained here is the ability to

-   the thousands separator (`big.mark`) is a comma
-   to keep training zeros
-   and still align text left and numbers right

auto-numbering tables
---------------------

As Norbert Köhler says, "R Markdown has no native method to number and reference table and figure captions". The `captioner` packages gives us a method for auto-numbering figures and tables and automatically updating the in-text reference numbers as well.

This tutorial is adapted from Norbert Köhler's [blog post](http://datascienceplus.com/r-markdown-how-to-number-and-reference-tables/) plus Andrew Dolman's [comments](https://onedrive.live.com/?authkey=%21AApYWBGHNR06Y5I&cid=FCFCD3FD042AF7F1&id=FCFCD3FD042AF7F1%2118306&parId=FCFCD3FD042AF7F1%21322&action=locate) on that post.

When complete, your output document should have two additional tables with automatically-generated table numbers.

-   Install the `captioner` package

Add the code chunk to your Rmd script

``` r
library(captioner)
```

Edit the output portion of the YAML header.

    output:
      word_document:
        fig_caption: yes
        reference_docx: '../resources/word-styles-reference-01.docx'

### assign prefixes

Use `captioner()` to set the prefixes we want to use for our tables and figures. Add this code chunk to your Rmd script.

``` r
# assign the prefix
auto_tab_ID <- captioner(prefix = "Table")
```

The function names on the left, `auto_tab_ID` and `auto_fig_ID`, are arbitrary.

We create a table captions using the `auto_tab_ID()` function we created above. The `name` argument is a unique identification string that we assign and the `caption` argument is a string with your actual caption.

``` r
# assign the table prefix, number, and caption 
auto_tab_ID(name = "a_table", caption = "A descriptive caption for the table.")
```

In the code chunk above---add `include = FALSE` to the code chunk header.

### refer to the table inline

In a typical technical report, the paragraph just before a table includes an inline reference to the table. For example, add this prose to your Rmd script,

<pre><code>An excerpt of data from our fabulous experiment is shown in 
<code>`</code>r auto_tab_ID("a_table", display = "cite")<code>`</code>. 
</code></pre>
Knit Word and you should see that "Table 1" has been inserted in your sentence for you.

The single tick marks delineate an inline R code chunk; the `auto_tab()` function uses the identifier string we created above and will print the caption with a table number. The argument `display = "cite"` prints the table number inline but not the caption.

### print the table with caption

The next code chunk, using kable(), prints the Table number, the caption, and the table.

``` r
# print the table with caption
kable(df, caption = auto_tab_ID("a_table"))
```

In docx output, table captions are formatted with the *Table Caption* style. The style can be edited using the methods for controlling Word Styles we've used earlier.

### make a second table

I'm going to create another table to demonstrate that the next table is indeed assigned the number "2".

``` r
# create a caption for a second table 
auto_tab_ID("another_table", "A boring table.")
```

Having created another caption, I can make an inline reference to the next table.

> More amazing results are shown in Table 2.

Created using this Rmd script:

<pre><code>More amazing results are shown in 
<code>`</code>r auto_tab_ID("another_table", display = "cite")<code>`</code>. 
</code></pre>
New table:

``` r
# get some data
df2 <- tail(cars, n = 5L)

# print the table with caption
kable(df2, caption = auto_tab_ID("another_table"), row.names = FALSE)
```

All tables are automatically renumbered if tables are added or deleted.
