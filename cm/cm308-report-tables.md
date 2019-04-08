tables
================

<img src="../resources/cm308-header.png" width="100%" /> <small> <br>
<i>Mom’s Table</i> by Sara Shuman is licensed under
<a href="https://creativecommons.org/licenses/by/2.0//">CC BY 2.0</a>
<br> </small>

## contents

[introduction](#introduction)  
[start with a data frame](#start-with-a-data-frame)  
[reshape for readability](#reshape-for-readability)  
[select an output type](#select-an-output-type)  
[cells with multiple entries](#cells-with-multiple-entries)  
[cells with links](#cells-with-links)  
[cells with images](#cells-with-images)  
[references](#references)

## introduction

We use tables to organize information for the benefit of our audience.
On the course repo, for example, I use tables to organize the [course
calendar](../README.md#calendar) and the [tutorial data
index](cm906-software-function-index.md#data). We can also use tables to
display the data underlying a graph or to display a statistical summary
of the data.

The RStudio [cheat sheet for R
Markdown](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf)
suggests three possible packages for creating tables: knitr, stargazer,
and xtable. Both knitr and stargazer produce table markups compatible
with `github_document` output; xtable produces nice tables in LaTeX or
HTML but its HTML output is not rendered particularly well by GitHub.

<br> <a href="#top">▲ top of page</a>

## start with a data frame

``` r
library("xtable")
data(tli)
df <- tli[1:10, ] %>% 
    as.data.frame()
```

<br> <a href="#top">▲ top of page</a>

## reshape for readability

  - representative sample
  - multiway
  - summary statistics

<br> <a href="#top">▲ top of page</a>

## select an output type

Tables

  - kable()
  - stargazer()

<!-- end list -->

``` r
knitr::kable(df, caption = "Table with kable()")
```

| grade | sex | disadvg | ethnicty | tlimth |
| ----: | :-- | :------ | :------- | -----: |
|     6 | M   | YES     | HISPANIC |     43 |
|     7 | M   | NO      | BLACK    |     88 |
|     5 | F   | YES     | HISPANIC |     34 |
|     3 | M   | YES     | HISPANIC |     65 |
|     8 | M   | YES     | WHITE    |     75 |
|     5 | M   | NO      | BLACK    |     74 |
|     8 | F   | YES     | HISPANIC |     72 |
|     4 | M   | YES     | BLACK    |     79 |
|     6 | M   | NO      | WHITE    |     88 |
|     7 | M   | YES     | HISPANIC |     87 |

Table with kable()

``` r
library("stargazer")
stargazer(df, 
                    type = "html",
                    title = "Table with stargazer", 
                    summary = FALSE, 
                    rownames = FALSE)
```

<table style="text-align:center">

<caption>

<strong>Table with stargazer</strong>

</caption>

<tr>

<td colspan="5" style="border-bottom: 1px solid black">

</td>

</tr>

<tr>

<td style="text-align:left">

grade

</td>

<td>

sex

</td>

<td>

disadvg

</td>

<td>

ethnicty

</td>

<td>

tlimth

</td>

</tr>

<tr>

<td colspan="5" style="border-bottom: 1px solid black">

</td>

</tr>

<tr>

<td style="text-align:left">

6

</td>

<td>

M

</td>

<td>

YES

</td>

<td>

HISPANIC

</td>

<td>

43

</td>

</tr>

<tr>

<td style="text-align:left">

7

</td>

<td>

M

</td>

<td>

NO

</td>

<td>

BLACK

</td>

<td>

88

</td>

</tr>

<tr>

<td style="text-align:left">

5

</td>

<td>

F

</td>

<td>

YES

</td>

<td>

HISPANIC

</td>

<td>

34

</td>

</tr>

<tr>

<td style="text-align:left">

3

</td>

<td>

M

</td>

<td>

YES

</td>

<td>

HISPANIC

</td>

<td>

65

</td>

</tr>

<tr>

<td style="text-align:left">

8

</td>

<td>

M

</td>

<td>

YES

</td>

<td>

WHITE

</td>

<td>

75

</td>

</tr>

<tr>

<td style="text-align:left">

5

</td>

<td>

M

</td>

<td>

NO

</td>

<td>

BLACK

</td>

<td>

74

</td>

</tr>

<tr>

<td style="text-align:left">

8

</td>

<td>

F

</td>

<td>

YES

</td>

<td>

HISPANIC

</td>

<td>

72

</td>

</tr>

<tr>

<td style="text-align:left">

4

</td>

<td>

M

</td>

<td>

YES

</td>

<td>

BLACK

</td>

<td>

79

</td>

</tr>

<tr>

<td style="text-align:left">

6

</td>

<td>

M

</td>

<td>

NO

</td>

<td>

WHITE

</td>

<td>

88

</td>

</tr>

<tr>

<td style="text-align:left">

7

</td>

<td>

M

</td>

<td>

YES

</td>

<td>

HISPANIC

</td>

<td>

87

</td>

</tr>

<tr>

<td colspan="5" style="border-bottom: 1px solid black">

</td>

</tr>

</table>

``` r
data(metro_pop, package = "graphclassmate")

stargazer(metro_pop,
                    type     = "html", 
                    summary  = FALSE, 
                    rownames = FALSE)
```

<table style="text-align:center">

<tr>

<td colspan="3" style="border-bottom: 1px solid black">

</td>

</tr>

<tr>

<td style="text-align:left">

race

</td>

<td>

county

</td>

<td>

population

</td>

</tr>

<tr>

<td colspan="3" style="border-bottom: 1px solid black">

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Bronx

</td>

<td>

194000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Bronx

</td>

<td>

645000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Bronx

</td>

<td>

415000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Bronx

</td>

<td>

38000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Bronx

</td>

<td>

40000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Kings

</td>

<td>

855000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Kings

</td>

<td>

488000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Kings

</td>

<td>

845000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Kings

</td>

<td>

184000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Kings

</td>

<td>

93000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

New York

</td>

<td>

703000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

New York

</td>

<td>

418000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

New York

</td>

<td>

233000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

New York

</td>

<td>

143000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

New York

</td>

<td>

39000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Queens

</td>

<td>

733000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Queens

</td>

<td>

556000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Queens

</td>

<td>

420000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Queens

</td>

<td>

392000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Queens

</td>

<td>

128000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Richmond

</td>

<td>

317000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Richmond

</td>

<td>

54000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Richmond

</td>

<td>

40000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Richmond

</td>

<td>

24000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Richmond

</td>

<td>

9000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Nassau

</td>

<td>

986000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Nassau

</td>

<td>

133000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Nassau

</td>

<td>

129000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Nassau

</td>

<td>

62000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Nassau

</td>

<td>

24000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Suffolk

</td>

<td>

1118000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Suffolk

</td>

<td>

149000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Suffolk

</td>

<td>

92000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Suffolk

</td>

<td>

34000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Suffolk

</td>

<td>

26000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Westchester

</td>

<td>

592000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Westchester

</td>

<td>

145000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Westchester

</td>

<td>

123000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Westchester

</td>

<td>

41000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Westchester

</td>

<td>

23000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Rockland

</td>

<td>

205000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Rockland

</td>

<td>

29000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Rockland

</td>

<td>

30000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Rockland

</td>

<td>

16000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Rockland

</td>

<td>

6000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Bergen

</td>

<td>

638000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Bergen

</td>

<td>

91000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Bergen

</td>

<td>

43000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Bergen

</td>

<td>

94000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Bergen

</td>

<td>

18000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Hudson

</td>

<td>

215000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Hudson

</td>

<td>

242000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Hudson

</td>

<td>

73000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Hudson

</td>

<td>

57000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Hudson

</td>

<td>

22000

</td>

</tr>

<tr>

<td style="text-align:left">

White

</td>

<td>

Passiac

</td>

<td>

252000

</td>

</tr>

<tr>

<td style="text-align:left">

Latino

</td>

<td>

Passiac

</td>

<td>

147000

</td>

</tr>

<tr>

<td style="text-align:left">

Black

</td>

<td>

Passiac

</td>

<td>

60000

</td>

</tr>

<tr>

<td style="text-align:left">

Asian

</td>

<td>

Passiac

</td>

<td>

18000

</td>

</tr>

<tr>

<td style="text-align:left">

Others

</td>

<td>

Passiac

</td>

<td>

12000

</td>

</tr>

<tr>

<td colspan="3" style="border-bottom: 1px solid black">

</td>

</tr>

</table>

``` r
pop <- as.data.frame(metro_pop) %>% 
    select(population)

stargazer(pop,
          type     = "html", 
          summary  = TRUE, 
          summary.stat = c("n", "max", "p75", "median", "p25", "min"), 
          rownames = TRUE, 
          digits   = 0, 
          flip     = TRUE, 
          align    = FALSE)
```

<table style="text-align:center">

<tr>

<td colspan="2" style="border-bottom: 1px solid black">

</td>

</tr>

<tr>

<td style="text-align:left">

Statistic

</td>

<td>

population

</td>

</tr>

<tr>

<td colspan="2" style="border-bottom: 1px solid black">

</td>

</tr>

<tr>

<td style="text-align:left">

N

</td>

<td>

60

</td>

</tr>

<tr>

<td style="text-align:left">

Max

</td>

<td>

1,118,000

</td>

</tr>

<tr>

<td style="text-align:left">

Pctl(75)

</td>

<td>

335,750

</td>

</tr>

<tr>

<td style="text-align:left">

Median

</td>

<td>

125,500

</td>

</tr>

<tr>

<td style="text-align:left">

Pctl(25)

</td>

<td>

38,750

</td>

</tr>

<tr>

<td style="text-align:left">

Min

</td>

<td>

6,000

</td>

</tr>

<tr>

<td colspan="2" style="border-bottom: 1px solid black">

</td>

</tr>

</table>

Informal

  - print()
  - glimpse()
  - summary()

<br> <a href="#top">▲ top of page</a>

## cells with multiple entries

Like the table that indexes data sets used in tutorials

<br> <a href="#top">▲ top of page</a>

## cells with links

Like the table that indexes data sets used in tutorials and links to the
tutoprials

<br> <a href="#top">▲ top of page</a>

## cells with images

``` r
dat <- data.frame(
  country = c('Canada', 'United Kindom'),
  abbr = c('ca', 'gb'),
  var1 = c(1, 2),
  var2 = rnorm(2)
)
dat$flag <- sprintf('![](http://flagpedia.net/data/flags/mini/%s.png)', dat$abbr)
library(knitr)
kable(dat)
```

| country       | abbr | var1 |        var2 | flag                                             |
| :------------ | :--- | ---: | ----------: | :----------------------------------------------- |
| Canada        | ca   |    1 | \-1.0760425 | ![](http://flagpedia.net/data/flags/mini/ca.png) |
| United Kindom | gb   |    2 | \-0.4167928 | ![](http://flagpedia.net/data/flags/mini/gb.png) |

<br> <a href="#top">▲ top of page</a>

## references

<div id="refs">

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
