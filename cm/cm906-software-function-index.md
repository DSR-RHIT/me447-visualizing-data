data and functions index
================

<img src="../resources/hex-ggplot2.png" width="10%" /><img src="../resources/hex-dplyr.png" width="10%" /><img src="../resources/hex-tidyr.png" width="10%" /><img src="../resources/hex-readr.png" width="10%" /><img src="../resources/hex-tibble.png" width="10%" /><img src="../resources/hex-stringr.png" width="10%" /><img src="../resources/hex-forcats.png" width="10%" />

## contents

[introduction](#introduction)  
[functions by name](#functions-by-name)  
[functions by package](#functions-by-package)  
[datasets by name](#datasets-by-name)  
[datasets by package](#datasets-by-package)  
[references](#references)

## introduction

I’ll sometimes recall that I used a particular data set or function in a
tutorial but can’t remember which one. This index is meant to help us
find at least the first instance in which a function or data set is
introduced.

    #> Observations: 11
    #> Variables: 2
    #> $ name_tutorial <chr> "data basics", "interacting with R", "data studi...
    #> $ link          <chr> "[data basics](cm101-data-basics.md)", "[interac...
    #> Observations: 10
    #> Variables: 2
    #> $ dataset <chr> "SpeedSki", "oly12", "gapminder", "state.x77", "nontra...
    #> $ package <chr> "GDAdata", "VGAMdata", "gapminder", "datasets", "graph...
    #> Observations: 14
    #> Variables: 3
    #> $ rowid         <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14
    #> $ dataset       <chr> "SpeedSki", "SpeedSki", "oly12", "gapminder", "g...
    #> $ name_tutorial <chr> "strip plot", "boxplot", "scatterplot", "working...

| name\_tutorial       | link                                                       |
| :------------------- | :--------------------------------------------------------- |
| data basics          | [data basics](cm101-data-basics.md)                        |
| interacting with R   | [interacting with R](cm101b-interacting-with-R.md)         |
| data studio          | [data studio](cm102-data-studio.md)                        |
| reshaping data       | [reshaping data](cm103-data-reshaping.md)                  |
| introducing factors  | [introducing factors](cm106-data-nature-of-factors.md)     |
| working with factors | [working with factors](cm107-data-working-with-factors.md) |
| graph basics         | [graph basics](cm201-graph-basics.md)                      |
| strip plot           | [strip plot](cm202-graph-strip-plot.md)                    |
| boxplot              | [boxplot](cm203-graph-boxplot.md)                          |
| multiway             | [multiway](cm204-graph-multiway.md)                        |
| scatterplot          | [scatterplot](cm205-graph-scatterplot.md)                  |

| dataset          | package        |
| :--------------- | :------------- |
| SpeedSki         | GDAdata        |
| oly12            | VGAMdata       |
| gapminder        | gapminder      |
| state.x77        | datasets       |
| nontraditional   | graphclassmate |
| metro\_pop       | graphclassmate |
| Alligator        | vcdExtra       |
| museum\_exhibits | graphclassmate |
| airquality       | datasets       |
| diamonds         | ggplot2        |

| rowid | dataset          | name\_tutorial       |
| ----: | :--------------- | :------------------- |
|     1 | SpeedSki         | strip plot           |
|     2 | SpeedSki         | boxplot              |
|     3 | oly12            | scatterplot          |
|     4 | gapminder        | working with factors |
|     5 | gapminder        | graph basics         |
|     6 | state.x77        | working with factors |
|     7 | nontraditional   | working with factors |
|     8 | nontraditional   | boxplot              |
|     9 | metro\_pop       | multiway             |
|    10 | ucb\_admit       | multiway             |
|    11 | Alligator        | multiway             |
|    12 | museum\_exhibits | strip plot           |
|    13 | airquality       | strip plot           |
|    14 | diamonds         | boxplot              |

| dataset          | links to tutorials                                                                                |
| :--------------- | :------------------------------------------------------------------------------------------------ |
| airquality       | [strip plot](cm202-graph-strip-plot.md)                                                           |
| Alligator        | [multiway](cm204-graph-multiway.md)                                                               |
| diamonds         | [boxplot](cm203-graph-boxplot.md)                                                                 |
| gapminder        | [working with factors](cm107-data-working-with-factors.md), [graph basics](cm201-graph-basics.md) |
| metro\_pop       | [multiway](cm204-graph-multiway.md)                                                               |
| museum\_exhibits | [strip plot](cm202-graph-strip-plot.md)                                                           |
| nontraditional   | [working with factors](cm107-data-working-with-factors.md), [boxplot](cm203-graph-boxplot.md)     |
| oly12            | [scatterplot](cm205-graph-scatterplot.md)                                                         |
| SpeedSki         | [strip plot](cm202-graph-strip-plot.md), [boxplot](cm203-graph-boxplot.md)                        |
| state.x77        | [working with factors](cm107-data-working-with-factors.md)                                        |
| ucb\_admit       | [multiway](cm204-graph-multiway.md)                                                               |

## functions by name

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

| package        | functions              | tutorial                                                   |
| :------------- | :--------------------- | :--------------------------------------------------------- |
| base           | attributes()           | [introducing factors](cm106-data-nature-of-factors.md)     |
| base           | class()                | [introducing factors](cm106-data-nature-of-factors.md)     |
| base           | factor()               | [introducing factors](cm106-data-nature-of-factors.md)     |
| base           | levels()               | [introducing factors](cm106-data-nature-of-factors.md)     |
| base           | ls()                   | [interacting with R](cm101b-interacting-with-R.md)         |
| base           | ls.str()               | [interacting with R](cm101b-interacting-with-R.md)         |
| base           | nlevels()              | [introducing factors](cm106-data-nature-of-factors.md)     |
| base           | readRDS()              | [strip plot](cm202-graph-strip-plot.md)                    |
| base           | row.names()            | [reshaping data](cm103-data-reshaping.md)                  |
| base           | sapply()               | [scatterplot](cm205-graph-scatterplot.md)                  |
| base           | sapply()               | [working with factors](cm107-data-working-with-factors.md) |
| base           | saveRDS()              | [strip plot](cm202-graph-strip-plot.md)                    |
| base           | sort()                 | [introducing factors](cm106-data-nature-of-factors.md)     |
| base           | summary()              | [graph basics](cm201-graph-basics.md)                      |
| base           | typeof()               | [introducing factors](cm106-data-nature-of-factors.md)     |
| base           | unclass()              | [introducing factors](cm106-data-nature-of-factors.md)     |
| cdata          | blocks\_to\_rowrecs()  | [reshaping data](cm103-data-reshaping.md)                  |
| cdata          | pivot\_to\_rowrecs()   | [reshaping data](cm103-data-reshaping.md)                  |
| cdata          | rowrecs\_to\_blocks()  | [reshaping data](cm103-data-reshaping.md)                  |
| cdata          | unpivot\_to\_blocks()  | [reshaping data](cm103-data-reshaping.md)                  |
| dplyr          | all\_equal()           | [reshaping data](cm103-data-reshaping.md)                  |
| dplyr          | arrange()              | [data studio](cm102-data-studio.md)                        |
| dplyr          | distinct()             | [scatterplot](cm205-graph-scatterplot.md)                  |
| dplyr          | filter()               | [data studio](cm102-data-studio.md)                        |
| dplyr          | filter()               | [graph basics](cm201-graph-basics.md)                      |
| dplyr          | groupby()              | [data studio](cm102-data-studio.md)                        |
| dplyr          | mutate()               | [data studio](cm102-data-studio.md)                        |
| dplyr          | mutate()               | [graph basics](cm201-graph-basics.md)                      |
| dplyr          | rename()               | [strip plot](cm202-graph-strip-plot.md)                    |
| dplyr          | select()               | [data studio](cm102-data-studio.md)                        |
| dplyr          | select(matches())      | [reshaping data](cm103-data-reshaping.md)                  |
| dplyr          | select\_if()           | [scatterplot](cm205-graph-scatterplot.md)                  |
| dplyr          | summarise()            | [reshaping data](cm103-data-reshaping.md)                  |
| dplyr          | ungroup()              | [boxplot](cm203-graph-boxplot.md)                          |
| forcats        | fct\_drop()            | [working with factors](cm107-data-working-with-factors.md) |
| forcats        | fct\_recode()          | [working with factors](cm107-data-working-with-factors.md) |
| forcats        | fct\_reorder()         | [working with factors](cm107-data-working-with-factors.md) |
| forcats        | fct\_rev()             | [working with factors](cm107-data-working-with-factors.md) |
| ggplot2        | aes()                  | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | coord\_flip()          | [boxplot](cm203-graph-boxplot.md)                          |
| ggplot2        | facet\_wrap()          | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | geom\_boxplot()        | [boxplot](cm203-graph-boxplot.md)                          |
| ggplot2        | geom\_jitter()         | [strip plot](cm202-graph-strip-plot.md)                    |
| ggplot2        | geom\_point()          | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | geom\_segment()        | [working with factors](cm107-data-working-with-factors.md) |
| ggplot2        | geom\_smooth()         | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | ggplot()               | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | ggsave()               | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | guide\_legend()        | [boxplot](cm203-graph-boxplot.md)                          |
| ggplot2        | guides()               | [boxplot](cm203-graph-boxplot.md)                          |
| ggplot2        | labs()                 | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | scale\_color\_manual() | [strip plot](cm202-graph-strip-plot.md)                    |
| ggplot2        | scale\_fill\_manual    | [strip plot](cm202-graph-strip-plot.md)                    |
| ggplot2        | scale\_x\_continuous() | [multiway](cm204-graph-multiway.md)                        |
| ggplot2        | scale\_x\_log10()      | [graph basics](cm201-graph-basics.md)                      |
| ggplot2        | theme()                | [strip plot](cm202-graph-strip-plot.md)                    |
| graphclassmate | rcb()                  | [multiway](cm204-graph-multiway.md)                        |
| graphclassmate | theme\_graphclass()    | [graph basics](cm201-graph-basics.md)                      |
| lubridate      | date()                 | [working with factors](cm107-data-working-with-factors.md) |
| readr          | read\_csv()            | [data basics](cm101-data-basics.md)                        |
| readxl         | read\_excel()          | [data basics](cm101-data-basics.md)                        |
| rio            | export()               | [reshaping data](cm103-data-reshaping.md)                  |
| rio            | import()               | [reshaping data](cm103-data-reshaping.md)                  |
| seplyr         | group\_summarize()     | [working with factors](cm107-data-working-with-factors.md) |
| stats          | complete.cases()       | [scatterplot](cm205-graph-scatterplot.md)                  |
| stats          | IQR()                  | [boxplot](cm203-graph-boxplot.md)                          |
| stringr        | str\_c()               | [boxplot](cm203-graph-boxplot.md)                          |
| stringr        | str\_replace()         | [reshaping data](cm103-data-reshaping.md)                  |
| tibble         | glimpse()              | [graph basics](cm201-graph-basics.md)                      |
| tibble         | rownames\_to\_column() | [reshaping data](cm103-data-reshaping.md)                  |
| tidyr          | complete()             | [strip plot](cm202-graph-strip-plot.md)                    |
| tidyr          | drop\_na()             | [reshaping data](cm103-data-reshaping.md)                  |
| tidyr          | replace\_na()          | [working with factors](cm107-data-working-with-factors.md) |
| tidyr          | separate()             | [reshaping data](cm103-data-reshaping.md)                  |
| utils          | data()                 | [data basics](cm101-data-basics.md)                        |
| utils          | read.table()           | [data basics](cm101-data-basics.md)                        |
| wrapr          | build\_frame()         | [reshaping data](cm103-data-reshaping.md)                  |
| </font>        |                        |                                                            |

## datasets by name

<font size="2">

| dataset          | package        | tutorial                                                                                          |
| :--------------- | :------------- | :------------------------------------------------------------------------------------------------ |
| airquality       | datasets       | [strip plot](cm202-graph-strip-plot.md)                                                           |
| Alligator        | vcdExtra       | [multiway](cm204-graph-multiway.md)                                                               |
| diamonds         | ggplot2        | [boxplot](cm203-graph-boxplot.md)                                                                 |
| gapminder        | gapminder      | [graph basics](cm201-graph-basics.md), [working with factors](cm107-data-working-with-factors.md) |
| metro\_pop       | graphclassmate | [multiway](cm204-graph-multiway.md)                                                               |
| museum\_exhibits | graphclassmate | [strip plot](cm202-graph-strip-plot.md)                                                           |
| nontraditional   | graphclassmate | [boxplot](cm203-graph-boxplot.md), [working with factors](cm107-data-working-with-factors.md)     |
| oly12            | VGAMdata       | [scatterplot](cm205-graph-scatterplot.md)                                                         |
| SpeedSki         | GDAdata        | [boxplot](cm203-graph-boxplot.md), [strip plot](cm202-graph-strip-plot.md)                        |
| state.x77        | datasets       | [working with factors](cm107-data-working-with-factors.md)                                        |
| ucb\_admit       | graphclassmate | [multiway](cm204-graph-multiway.md)                                                               |
| </font>          |                |                                                                                                   |

## datasets by package

<font size="2">

| package        | dataset          | tutorial                                                                                          |
| :------------- | :--------------- | :------------------------------------------------------------------------------------------------ |
| datasets       | airquality       | [strip plot](cm202-graph-strip-plot.md)                                                           |
| datasets       | state.x77        | [working with factors](cm107-data-working-with-factors.md)                                        |
| gapminder      | gapminder        | [graph basics](cm201-graph-basics.md), [working with factors](cm107-data-working-with-factors.md) |
| GDAdata        | SpeedSki         | [boxplot](cm203-graph-boxplot.md), [strip plot](cm202-graph-strip-plot.md)                        |
| ggplot2        | diamonds         | [boxplot](cm203-graph-boxplot.md)                                                                 |
| graphclassmate | metro\_pop       | [multiway](cm204-graph-multiway.md)                                                               |
| graphclassmate | museum\_exhibits | [strip plot](cm202-graph-strip-plot.md)                                                           |
| graphclassmate | nontraditional   | [boxplot](cm203-graph-boxplot.md), [working with factors](cm107-data-working-with-factors.md)     |
| graphclassmate | ucb\_admit       | [multiway](cm204-graph-multiway.md)                                                               |
| vcdExtra       | Alligator        | [multiway](cm204-graph-multiway.md)                                                               |
| VGAMdata       | oly12            | [scatterplot](cm205-graph-scatterplot.md)                                                         |
| </font>        |                  |                                                                                                   |

## references

<div id="refs">

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
