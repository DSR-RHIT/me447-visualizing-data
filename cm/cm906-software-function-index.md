data and functions index
================

<img src="../resources/hex-ggplot2.png" width="10%" /><img src="../resources/hex-dplyr.png" width="10%" /><img src="../resources/hex-tidyr.png" width="10%" /><img src="../resources/hex-readr.png" width="10%" /><img src="../resources/hex-tibble.png" width="10%" /><img src="../resources/hex-stringr.png" width="10%" /><img src="../resources/hex-forcats.png" width="10%" />

## contents

[introduction](#introduction)  
[functions](#functions)  
[functions by package](#functions-by-package)  
[data sets](#data-sets)  
[data sets by package](#data-sets-by-package)  
[references](#references)

## introduction

I’ll sometimes recall that I used a particular data set or function in a
tutorial but can’t remember which one. This index is meant to help us
find at least the first instance in which a function or data set is
introduced.

## functions

<font size="2">

| functions              | package        | tutorial                                                   |
| :--------------------- | :------------- | :--------------------------------------------------------- |
| aes()                  | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| all\_equal()           | dplyr          | [reshaping data](cm103-data-reshaping.md)                  |
| arrange()              | dplyr          | [data studio](cm102-data-studio.md)                        |
| attributes()           | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| blocks\_to\_rowrecs()  | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| build\_frame()         | wrapr          | [reshaping data](cm103-data-reshaping.md)                  |
| class()                | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| complete()             | tidyr          | [strip plot](cm202-graph-strip-plot.md)                    |
| complete.cases()       | stats          | [scatterplot](cm205-graph-scatterplot.md)                  |
| coord\_flip()          | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| data()                 | utils          | [data basics](cm101-data-basics.md)                        |
| date()                 | lubridate      | [working with factors](cm107-data-working-with-factors.md) |
| distinct()             | dplyr          | [scatterplot](cm205-graph-scatterplot.md)                  |
| drop\_na()             | tidyr          | [reshaping data](cm103-data-reshaping.md)                  |
| export()               | rio            | [reshaping data](cm103-data-reshaping.md)                  |
| facet\_wrap()          | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| factor()               | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| fct\_drop()            | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| fct\_recode()          | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| fct\_reorder()         | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| fct\_rev()             | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| filter()               | dplyr          | [data studio](cm102-data-studio.md)                        |
| filter()               | dplyr          | [graph basics](cm201-graph-basics.md)                      |
| geom\_boxplot()        | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| geom\_jitter()         | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| geom\_point()          | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| geom\_segment()        | ggplot2        | [working with factors](cm107-data-working-with-factors.md) |
| geom\_smooth()         | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| ggplot()               | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| ggsave()               | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| glimpse()              | tibble         | [graph basics](cm201-graph-basics.md)                      |
| group\_summarize()     | seplyr         | [working with factors](cm107-data-working-with-factors.md) |
| groupby()              | dplyr          | [data studio](cm102-data-studio.md)                        |
| guide\_legend()        | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| guides()               | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| import()               | rio            | [reshaping data](cm103-data-reshaping.md)                  |
| IQR()                  | stats          | [boxplot](cm203-graph-boxplot.md)                          |
| labs()                 | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| levels()               | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| ls()                   | base           | [interacting with R](cm101b-interacting-with-R.md)         |
| ls.str()               | base           | [interacting with R](cm101b-interacting-with-R.md)         |
| mutate()               | dplyr          | [data studio](cm102-data-studio.md)                        |
| mutate()               | dplyr          | [graph basics](cm201-graph-basics.md)                      |
| nlevels()              | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| pivot\_to\_rowrecs()   | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| rcb()                  | graphclassmate | [multiway](cm204-graph-multiway.md)                        |
| read.table()           | utils          | [data basics](cm101-data-basics.md)                        |
| read\_csv()            | readr          | [data basics](cm101-data-basics.md)                        |
| read\_excel()          | readxl         | [data basics](cm101-data-basics.md)                        |
| readRDS()              | base           | [strip plot](cm202-graph-strip-plot.md)                    |
| rename()               | dplyr          | [strip plot](cm202-graph-strip-plot.md)                    |
| replace\_na()          | tidyr          | [working with factors](cm107-data-working-with-factors.md) |
| row.names()            | base           | [reshaping data](cm103-data-reshaping.md)                  |
| rownames\_to\_column() | tibble         | [reshaping data](cm103-data-reshaping.md)                  |
| rowrecs\_to\_blocks()  | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| sapply()               | base           | [scatterplot](cm205-graph-scatterplot.md)                  |
| sapply()               | base           | [working with factors](cm107-data-working-with-factors.md) |
| saveRDS()              | base           | [strip plot](cm202-graph-strip-plot.md)                    |
| scale\_color\_manual() | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| scale\_fill\_manual    | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| scale\_x\_continuous() | ggplot2        | [multiway](cm204-graph-multiway.md)                        |
| scale\_x\_log10()      | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| select()               | dplyr          | [data studio](cm102-data-studio.md)                        |
| select(matches())      | dplyr          | [reshaping data](cm103-data-reshaping.md)                  |
| select\_if()           | dplyr          | [scatterplot](cm205-graph-scatterplot.md)                  |
| separate()             | tidyr          | [reshaping data](cm103-data-reshaping.md)                  |
| sort()                 | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| str\_c()               | stringr        | [boxplot](cm203-graph-boxplot.md)                          |
| str\_replace()         | stringr        | [reshaping data](cm103-data-reshaping.md)                  |
| summarise()            | dplyr          | [reshaping data](cm103-data-reshaping.md)                  |
| summary()              | base           | [graph basics](cm201-graph-basics.md)                      |
| theme()                | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| theme\_graphclass()    | graphclassmate | [graph basics](cm201-graph-basics.md)                      |
| typeof()               | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| unclass()              | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| ungroup()              | dplyr          | [boxplot](cm203-graph-boxplot.md)                          |
| unpivot\_to\_blocks()  | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| </font>                |                |                                                            |

## functions by package

<font size="2">

| functions              | package        | tutorial                                                   |
| :--------------------- | :------------- | :--------------------------------------------------------- |
| attributes()           | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| class()                | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| factor()               | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| levels()               | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| ls()                   | base           | [interacting with R](cm101b-interacting-with-R.md)         |
| ls.str()               | base           | [interacting with R](cm101b-interacting-with-R.md)         |
| nlevels()              | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| readRDS()              | base           | [strip plot](cm202-graph-strip-plot.md)                    |
| row.names()            | base           | [reshaping data](cm103-data-reshaping.md)                  |
| sapply()               | base           | [scatterplot](cm205-graph-scatterplot.md)                  |
| sapply()               | base           | [working with factors](cm107-data-working-with-factors.md) |
| saveRDS()              | base           | [strip plot](cm202-graph-strip-plot.md)                    |
| sort()                 | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| summary()              | base           | [graph basics](cm201-graph-basics.md)                      |
| typeof()               | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| unclass()              | base           | [introducing factors](cm106-data-nature-of-factors.md)     |
| blocks\_to\_rowrecs()  | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| pivot\_to\_rowrecs()   | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| rowrecs\_to\_blocks()  | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| unpivot\_to\_blocks()  | cdata          | [reshaping data](cm103-data-reshaping.md)                  |
| all\_equal()           | dplyr          | [reshaping data](cm103-data-reshaping.md)                  |
| arrange()              | dplyr          | [data studio](cm102-data-studio.md)                        |
| distinct()             | dplyr          | [scatterplot](cm205-graph-scatterplot.md)                  |
| filter()               | dplyr          | [data studio](cm102-data-studio.md)                        |
| filter()               | dplyr          | [graph basics](cm201-graph-basics.md)                      |
| groupby()              | dplyr          | [data studio](cm102-data-studio.md)                        |
| mutate()               | dplyr          | [data studio](cm102-data-studio.md)                        |
| mutate()               | dplyr          | [graph basics](cm201-graph-basics.md)                      |
| rename()               | dplyr          | [strip plot](cm202-graph-strip-plot.md)                    |
| select()               | dplyr          | [data studio](cm102-data-studio.md)                        |
| select(matches())      | dplyr          | [reshaping data](cm103-data-reshaping.md)                  |
| select\_if()           | dplyr          | [scatterplot](cm205-graph-scatterplot.md)                  |
| summarise()            | dplyr          | [reshaping data](cm103-data-reshaping.md)                  |
| ungroup()              | dplyr          | [boxplot](cm203-graph-boxplot.md)                          |
| fct\_drop()            | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| fct\_recode()          | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| fct\_reorder()         | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| fct\_rev()             | forcats        | [working with factors](cm107-data-working-with-factors.md) |
| aes()                  | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| coord\_flip()          | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| facet\_wrap()          | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| geom\_boxplot()        | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| geom\_jitter()         | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| geom\_point()          | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| geom\_segment()        | ggplot2        | [working with factors](cm107-data-working-with-factors.md) |
| geom\_smooth()         | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| ggplot()               | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| ggsave()               | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| guide\_legend()        | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| guides()               | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| labs()                 | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| scale\_color\_manual() | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| scale\_fill\_manual    | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| scale\_x\_continuous() | ggplot2        | [multiway](cm204-graph-multiway.md)                        |
| scale\_x\_log10()      | ggplot2        | [graph basics](cm201-graph-basics.md)                      |
| theme()                | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                    |
| rcb()                  | graphclassmate | [multiway](cm204-graph-multiway.md)                        |
| theme\_graphclass()    | graphclassmate | [graph basics](cm201-graph-basics.md)                      |
| date()                 | lubridate      | [working with factors](cm107-data-working-with-factors.md) |
| read\_csv()            | readr          | [data basics](cm101-data-basics.md)                        |
| read\_excel()          | readxl         | [data basics](cm101-data-basics.md)                        |
| export()               | rio            | [reshaping data](cm103-data-reshaping.md)                  |
| import()               | rio            | [reshaping data](cm103-data-reshaping.md)                  |
| group\_summarize()     | seplyr         | [working with factors](cm107-data-working-with-factors.md) |
| complete.cases()       | stats          | [scatterplot](cm205-graph-scatterplot.md)                  |
| IQR()                  | stats          | [boxplot](cm203-graph-boxplot.md)                          |
| str\_c()               | stringr        | [boxplot](cm203-graph-boxplot.md)                          |
| str\_replace()         | stringr        | [reshaping data](cm103-data-reshaping.md)                  |
| glimpse()              | tibble         | [graph basics](cm201-graph-basics.md)                      |
| rownames\_to\_column() | tibble         | [reshaping data](cm103-data-reshaping.md)                  |
| complete()             | tidyr          | [strip plot](cm202-graph-strip-plot.md)                    |
| drop\_na()             | tidyr          | [reshaping data](cm103-data-reshaping.md)                  |
| replace\_na()          | tidyr          | [working with factors](cm107-data-working-with-factors.md) |
| separate()             | tidyr          | [reshaping data](cm103-data-reshaping.md)                  |
| data()                 | utils          | [data basics](cm101-data-basics.md)                        |
| read.table()           | utils          | [data basics](cm101-data-basics.md)                        |
| build\_frame()         | wrapr          | [reshaping data](cm103-data-reshaping.md)                  |
| </font>                |                |                                                            |

## data sets

<font size="2">

| dataset          | package        | tutorial                                                   |
| :--------------- | :------------- | :--------------------------------------------------------- |
| airquality       | datasets       | [strip plot](cm202-graph-strip-plot.md)                    |
| Alligator        | vcdExtra       | [multiway](cm204-graph-multiway.md)                        |
| diamonds         | ggplot2        | [boxplot](cm203-graph-boxplot.md)                          |
| gapminder        | gapminder      | [graph basics](cm201-graph-basics.md)                      |
| gapminder        | gapminder      | [working with factors](cm107-data-working-with-factors.md) |
| metro\_pop       | graphclassmate | [multiway](cm204-graph-multiway.md)                        |
| museum\_exhibits | graphclassmate | [strip plot](cm202-graph-strip-plot.md)                    |
| nontraditional   | graphclassmate | [boxplot](cm203-graph-boxplot.md)                          |
| nontraditional   | graphclassmate | [working with factors](cm107-data-working-with-factors.md) |
| oly12            | VGAMdata       | [scatterplot](cm205-graph-scatterplot.md)                  |
| SpeedSki         | GDAdata        | [boxplot](cm203-graph-boxplot.md)                          |
| SpeedSki         | GDAdata        | [strip plot](cm202-graph-strip-plot.md)                    |
| state.x77        | datasets       | [working with factors](cm107-data-working-with-factors.md) |
| ucb\_admit       | graphclassmate | [multiway](cm204-graph-multiway.md)                        |
| </font>          |                |                                                            |

## data sets by package

<font size="2">

| dataset          | package        | tutorial                                                                                          |
| :--------------- | :------------- | :------------------------------------------------------------------------------------------------ |
| airquality       | datasets       | [strip plot](cm202-graph-strip-plot.md)                                                           |
| state.x77        | datasets       | [working with factors](cm107-data-working-with-factors.md)                                        |
| gapminder        | gapminder      | [graph basics](cm201-graph-basics.md), [working with factors](cm107-data-working-with-factors.md) |
| SpeedSki         | GDAdata        | [boxplot](cm203-graph-boxplot.md), [strip plot](cm202-graph-strip-plot.md)                        |
| diamonds         | ggplot2        | [boxplot](cm203-graph-boxplot.md)                                                                 |
| metro\_pop       | graphclassmate | [multiway](cm204-graph-multiway.md)                                                               |
| museum\_exhibits | graphclassmate | [strip plot](cm202-graph-strip-plot.md)                                                           |
| nontraditional   | graphclassmate | [boxplot](cm203-graph-boxplot.md), [working with factors](cm107-data-working-with-factors.md)     |
| ucb\_admit       | graphclassmate | [multiway](cm204-graph-multiway.md)                                                               |
| Alligator        | vcdExtra       | [multiway](cm204-graph-multiway.md)                                                               |
| oly12            | VGAMdata       | [scatterplot](cm205-graph-scatterplot.md)                                                         |
| </font>          |                |                                                                                                   |

## references

<div id="refs">

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
