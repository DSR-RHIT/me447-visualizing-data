data and functions index
================

<img src="../resources/hex-ggplot2.png" width="10%" /><img src="../resources/hex-dplyr.png" width="10%" /><img src="../resources/hex-tidyr.png" width="10%" /><img src="../resources/hex-readr.png" width="10%" /><img src="../resources/hex-tibble.png" width="10%" /><img src="../resources/hex-stringr.png" width="10%" /><img src="../resources/hex-forcats.png" width="10%" />

## contents

[introduction](#introduction)  
[data](#data)  
[functions](#functions)  
[functions by package](#functions-by-package)  
[references](#references)

## introduction

I’ll sometimes recall that I used a particular data set or function in a
tutorial but can’t remember which one. This index is meant to help us
find at least one tutorial in which a function or data set is used.

    #> Loading package: midfielddata 
    #> Loading package: socviz

## data

| item              | package        | tutorials                                                                                                                          | class      | dimension | title                                                    |
| :---------------- | :------------- | :--------------------------------------------------------------------------------------------------------------------------------- | :--------- | :-------- | :------------------------------------------------------- |
| airquality        | datasets       | [strip plot](cm202-graph-strip-plot.md)                                                                                            | data.frame | 153x6     | New York Air Quality Measurements                        |
| Alligator         | vcdExtra       | [multiway](cm204-graph-multiway.md)                                                                                                | data.frame | 80x5      | Alligator Food Choice                                    |
| county\_income    | graphclassmate | [dot plot](cm206-graph-dot-plot.md)                                                                                                | data.frame | 3220x4    | Median income by US county in 2016                       |
| diamonds          | ggplot2        | [boxplot](cm203-graph-boxplot.md)                                                                                                  | data.frame | 53940x10  | Prices of 50,000 round cut diamonds                      |
| gapminder         | gapminder      | [graph basics](cm201-graph-basics.md), [working with factors](cm107-data-working-with-factors.md)                                  | data.frame | 1704x6    | Gapminder data.                                          |
| infant\_mortality | graphclassmate | [dot plot](cm206-graph-dot-plot.md)                                                                                                | data.frame | 12120x6   | Infant mortality in the US, 2007-2016                    |
| metro\_pop        | graphclassmate | [multiway](cm204-graph-multiway.md)                                                                                                | data.frame | 60x3      | Population in the NY metro area                          |
| midfielddegrees   | midfielddata   | [carpentry with joins](cm105-data-joins.md)                                                                                        | data.frame | 97640x5   | Graduation data for 98,000 undergraduates                |
| midfieldstudents  | midfielddata   | [carpentry with joins](cm105-data-joins.md)                                                                                        | data.frame | 97640x15  | Demographic data for 98,000 undergraduates               |
| museum\_exhibits  | graphclassmate | [strip plot](cm202-graph-strip-plot.md)                                                                                            | data.frame | 588x2     | Visit duration at museum exhibitions                     |
| nontraditional    | graphclassmate | [boxplot](cm203-graph-boxplot.md), [dot plot](cm206-graph-dot-plot.md), [working with factors](cm107-data-working-with-factors.md) | data.frame | 269057x5  | Nontraditional and traditional undergraduates            |
| oly12             | VGAMdata       | [scatterplot](cm205-graph-scatterplot.md)                                                                                          | data.frame | 10384x14  | 2012 Summer Olympics: Individuals Data                   |
| SpeedSki          | GDAdata        | [boxplot](cm203-graph-boxplot.md), [strip plot](cm202-graph-strip-plot.md)                                                         | data.frame | 91x10     | World Speed Skiing Competition, Verbier 21st April, 2011 |
| state.x77         | datasets       | [working with factors](cm107-data-working-with-factors.md)                                                                         | matrix     | 50x8      | US State Facts and Figures                               |
| titanic           | socviz         | [R basics](cm903-software-R-basics.md)                                                                                             | data.frame | 4x4       | A table of survival rates from the Titanic               |
| ucb\_admit        | graphclassmate | [multiway](cm204-graph-multiway.md)                                                                                                | data.frame | 12x4      | Student admissions at UC Berkeley                        |

<br> <a href="#top">▲ top of
page</a>

## functions

| item                   | package        | tutorials                                                                                                                                    |
| :--------------------- | :------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| aes()                  | ggplot2        | [graph basics](cm201-graph-basics.md)                                                                                                        |
| all\_equal()           | dplyr          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| arrange()              | dplyr          | [data studio](cm102-data-studio.md)                                                                                                          |
| as\_tibble()           | tibble         | [R basics](cm903-software-R-basics.md)                                                                                                       |
| attributes()           | base           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| blocks\_to\_rowrecs()  | cdata          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| build\_frame()         | wrapr          | [carpentry with joins](cm105-data-joins.md), [reshaping data](cm103-data-reshaping.md)                                                       |
| c()                    | base           | [R basics](cm903-software-R-basics.md)                                                                                                       |
| class()                | base           | [introducing factors](cm106-data-nature-of-factors.md), [R basics](cm903-software-R-basics.md)                                               |
| complete()             | tidyr          | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| complete.cases()       | stats          | [dot plot](cm206-graph-dot-plot.md), [scatterplot](cm205-graph-scatterplot.md)                                                               |
| coord\_flip()          | ggplot2        | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| count()                | dplyr          | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| data()                 | utils          | [data basics](cm101-data-basics.md)                                                                                                          |
| date()                 | lubridate      | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| distinct()             | dplyr          | [carpentry with joins](cm105-data-joins.md), [scatterplot](cm205-graph-scatterplot.md)                                                       |
| drop\_na()             | tidyr          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| everything()           | tidyselect     | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| export()               | rio            | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| facet\_grid()          | ggplot2        | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md)                                                             |
| facet\_wrap()          | ggplot2        | [dot plot](cm206-graph-dot-plot.md), [graph basics](cm201-graph-basics.md)                                                                   |
| factor()               | base           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| fct\_drop()            | forcats        | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| fct\_recode()          | forcats        | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| fct\_reorder()         | forcats        | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md), [working with factors](cm107-data-working-with-factors.md) |
| fct\_rev()             | forcats        | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| filter()               | dplyr          | [data studio](cm102-data-studio.md), [graph basics](cm201-graph-basics.md)                                                                   |
| geom\_boxplot()        | ggplot2        | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| geom\_jitter()         | ggplot2        | [dot plot](cm206-graph-dot-plot.md), [strip plot](cm202-graph-strip-plot.md)                                                                 |
| geom\_point()          | ggplot2        | [graph basics](cm201-graph-basics.md)                                                                                                        |
| geom\_segment()        | ggplot2        | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| geom\_smooth()         | ggplot2        | [graph basics](cm201-graph-basics.md)                                                                                                        |
| geom\_text()           | ggplot2        | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| ggplot()               | ggplot2        | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggsave()               | ggplot2        | [graph basics](cm201-graph-basics.md)                                                                                                        |
| glimpse()              | tibble         | [graph basics](cm201-graph-basics.md)                                                                                                        |
| group\_summarise()     | seplyr         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| group\_summarize()     | seplyr         | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| groupby()              | dplyr          | [data studio](cm102-data-studio.md)                                                                                                          |
| guide\_legend()        | ggplot2        | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| guides()               | ggplot2        | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| if\_else()             | dplyr          | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_annotate()      | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_append()        | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_blank()         | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_border()        | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_colorize()      | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_contrast()      | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_info()          | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_modulate()      | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_noise()         | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_quantize()      | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_read()          | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_scale()         | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| image\_write           | magick         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| import()               | rio            | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| IQR()                  | stats          | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| labs()                 | ggplot2        | [graph basics](cm201-graph-basics.md)                                                                                                        |
| left\_join()           | dplyr          | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md)                                                             |
| levels()               | base           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| ls()                   | base           | [interacting with R](cm101b-interacting-with-R.md)                                                                                           |
| ls.str()               | base           | [interacting with R](cm101b-interacting-with-R.md)                                                                                           |
| mean()                 | base           | [R basics](cm903-software-R-basics.md)                                                                                                       |
| mutate()               | dplyr          | [data studio](cm102-data-studio.md), [graph basics](cm201-graph-basics.md)                                                                   |
| nlevels()              | base           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| pivot\_to\_rowrecs()   | cdata          | [dot plot](cm206-graph-dot-plot.md), [reshaping data](cm103-data-reshaping.md)                                                               |
| rcb()                  | graphclassmate | [multiway](cm204-graph-multiway.md)                                                                                                          |
| read.table()           | utils          | [data basics](cm101-data-basics.md)                                                                                                          |
| read\_csv()            | readr          | [data basics](cm101-data-basics.md)                                                                                                          |
| read\_excel()          | readxl         | [data basics](cm101-data-basics.md)                                                                                                          |
| readRDS()              | base           | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| recode()               | dplyr          | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| rename()               | dplyr          | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md), [strip plot](cm202-graph-strip-plot.md)                    |
| replace\_na()          | tidyr          | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| row.names()            | base           | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| rownames\_to\_column() | tibble         | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| rowrecs\_to\_blocks()  | cdata          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| sample\_n()            | dplyr          | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| sapply()               | base           | [scatterplot](cm205-graph-scatterplot.md), [working with factors](cm107-data-working-with-factors.md)                                        |
| saveRDS()              | base           | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| scale\_color\_manual() | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| scale\_fill\_manual    | ggplot2        | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| scale\_fill\_manual()  | ggplot2        | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| scale\_x\_continuous() | ggplot2        | [multiway](cm204-graph-multiway.md)                                                                                                          |
| scale\_x\_log10()      | ggplot2        | [graph basics](cm201-graph-basics.md)                                                                                                        |
| sd()                   | base           | [R basics](cm903-software-R-basics.md)                                                                                                       |
| select()               | dplyr          | [data studio](cm102-data-studio.md)                                                                                                          |
| select(matches())      | dplyr          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| select\_if()           | dplyr          | [scatterplot](cm205-graph-scatterplot.md)                                                                                                    |
| separate()             | tidyr          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| sort()                 | base           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| str()                  | base           | [R basics](cm903-software-R-basics.md)                                                                                                       |
| str\_c()               | stringr        | [boxplot](cm203-graph-boxplot.md), [carpentry with joins](cm105-data-joins.md)                                                               |
| str\_remove\_all()     | stringr        | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| str\_replace()         | stringr        | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| str\_starts()          | stringr        | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| str\_sub()             | stringr        | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| summarise()            | dplyr          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| summary()              | base           | [graph basics](cm201-graph-basics.md), [R basics](cm903-software-R-basics.md)                                                                |
| table()                | base           | [R basics](cm903-software-R-basics.md)                                                                                                       |
| theme()                | ggplot2        | [dot plot](cm206-graph-dot-plot.md), [strip plot](cm202-graph-strip-plot.md)                                                                 |
| theme\_graphclass()    | graphclassmate | [graph basics](cm201-graph-basics.md)                                                                                                        |
| typeof()               | base           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| unclass()              | base           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| ungroup()              | dplyr          | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| unite()                | tidyr          | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| unpivot\_to\_blocks()  | cdata          | [reshaping data](cm103-data-reshaping.md)                                                                                                    |

<br> <a href="#top">▲ top of
page</a>

## functions by package

| package        | item                   | tutorials                                                                                                                                    |
| :------------- | :--------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| base           | attributes()           | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| base           | c()                    | [R basics](cm903-software-R-basics.md)                                                                                                       |
| base           | class()                | [introducing factors](cm106-data-nature-of-factors.md), [R basics](cm903-software-R-basics.md)                                               |
| base           | factor()               | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| base           | levels()               | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| base           | ls()                   | [interacting with R](cm101b-interacting-with-R.md)                                                                                           |
| base           | ls.str()               | [interacting with R](cm101b-interacting-with-R.md)                                                                                           |
| base           | mean()                 | [R basics](cm903-software-R-basics.md)                                                                                                       |
| base           | nlevels()              | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| base           | readRDS()              | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| base           | row.names()            | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| base           | sapply()               | [scatterplot](cm205-graph-scatterplot.md), [working with factors](cm107-data-working-with-factors.md)                                        |
| base           | saveRDS()              | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| base           | sd()                   | [R basics](cm903-software-R-basics.md)                                                                                                       |
| base           | sort()                 | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| base           | str()                  | [R basics](cm903-software-R-basics.md)                                                                                                       |
| base           | summary()              | [graph basics](cm201-graph-basics.md), [R basics](cm903-software-R-basics.md)                                                                |
| base           | table()                | [R basics](cm903-software-R-basics.md)                                                                                                       |
| base           | typeof()               | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| base           | unclass()              | [introducing factors](cm106-data-nature-of-factors.md)                                                                                       |
| cdata          | blocks\_to\_rowrecs()  | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| cdata          | pivot\_to\_rowrecs()   | [dot plot](cm206-graph-dot-plot.md), [reshaping data](cm103-data-reshaping.md)                                                               |
| cdata          | rowrecs\_to\_blocks()  | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| cdata          | unpivot\_to\_blocks()  | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| dplyr          | all\_equal()           | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| dplyr          | arrange()              | [data studio](cm102-data-studio.md)                                                                                                          |
| dplyr          | count()                | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| dplyr          | distinct()             | [carpentry with joins](cm105-data-joins.md), [scatterplot](cm205-graph-scatterplot.md)                                                       |
| dplyr          | filter()               | [data studio](cm102-data-studio.md), [graph basics](cm201-graph-basics.md)                                                                   |
| dplyr          | groupby()              | [data studio](cm102-data-studio.md)                                                                                                          |
| dplyr          | if\_else()             | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| dplyr          | left\_join()           | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md)                                                             |
| dplyr          | mutate()               | [data studio](cm102-data-studio.md), [graph basics](cm201-graph-basics.md)                                                                   |
| dplyr          | recode()               | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| dplyr          | rename()               | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md), [strip plot](cm202-graph-strip-plot.md)                    |
| dplyr          | sample\_n()            | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| dplyr          | select()               | [data studio](cm102-data-studio.md)                                                                                                          |
| dplyr          | select(matches())      | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| dplyr          | select\_if()           | [scatterplot](cm205-graph-scatterplot.md)                                                                                                    |
| dplyr          | summarise()            | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| dplyr          | ungroup()              | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| forcats        | fct\_drop()            | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| forcats        | fct\_recode()          | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| forcats        | fct\_reorder()         | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md), [working with factors](cm107-data-working-with-factors.md) |
| forcats        | fct\_rev()             | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| ggplot2        | aes()                  | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggplot2        | coord\_flip()          | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| ggplot2        | facet\_grid()          | [carpentry with joins](cm105-data-joins.md), [dot plot](cm206-graph-dot-plot.md)                                                             |
| ggplot2        | facet\_wrap()          | [dot plot](cm206-graph-dot-plot.md), [graph basics](cm201-graph-basics.md)                                                                   |
| ggplot2        | geom\_boxplot()        | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| ggplot2        | geom\_jitter()         | [dot plot](cm206-graph-dot-plot.md), [strip plot](cm202-graph-strip-plot.md)                                                                 |
| ggplot2        | geom\_point()          | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggplot2        | geom\_segment()        | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| ggplot2        | geom\_smooth()         | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggplot2        | geom\_text()           | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| ggplot2        | ggplot()               | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggplot2        | ggsave()               | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggplot2        | guide\_legend()        | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| ggplot2        | guides()               | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| ggplot2        | labs()                 | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggplot2        | scale\_color\_manual() | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| ggplot2        | scale\_fill\_manual    | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| ggplot2        | scale\_fill\_manual()  | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| ggplot2        | scale\_x\_continuous() | [multiway](cm204-graph-multiway.md)                                                                                                          |
| ggplot2        | scale\_x\_log10()      | [graph basics](cm201-graph-basics.md)                                                                                                        |
| ggplot2        | theme()                | [dot plot](cm206-graph-dot-plot.md), [strip plot](cm202-graph-strip-plot.md)                                                                 |
| graphclassmate | rcb()                  | [multiway](cm204-graph-multiway.md)                                                                                                          |
| graphclassmate | theme\_graphclass()    | [graph basics](cm201-graph-basics.md)                                                                                                        |
| lubridate      | date()                 | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| magick         | image\_annotate()      | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_append()        | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_blank()         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_border()        | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_colorize()      | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_contrast()      | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_info()          | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_modulate()      | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_noise()         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_quantize()      | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_read()          | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_scale()         | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| magick         | image\_write           | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| readr          | read\_csv()            | [data basics](cm101-data-basics.md)                                                                                                          |
| readxl         | read\_excel()          | [data basics](cm101-data-basics.md)                                                                                                          |
| rio            | export()               | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| rio            | import()               | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| seplyr         | group\_summarise()     | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| seplyr         | group\_summarize()     | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| stats          | complete.cases()       | [dot plot](cm206-graph-dot-plot.md), [scatterplot](cm205-graph-scatterplot.md)                                                               |
| stats          | IQR()                  | [boxplot](cm203-graph-boxplot.md)                                                                                                            |
| stringr        | str\_c()               | [boxplot](cm203-graph-boxplot.md), [carpentry with joins](cm105-data-joins.md)                                                               |
| stringr        | str\_remove\_all()     | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| stringr        | str\_replace()         | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| stringr        | str\_starts()          | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| stringr        | str\_sub()             | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| tibble         | as\_tibble()           | [R basics](cm903-software-R-basics.md)                                                                                                       |
| tibble         | glimpse()              | [graph basics](cm201-graph-basics.md)                                                                                                        |
| tibble         | rownames\_to\_column() | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| tidyr          | complete()             | [strip plot](cm202-graph-strip-plot.md)                                                                                                      |
| tidyr          | drop\_na()             | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| tidyr          | replace\_na()          | [working with factors](cm107-data-working-with-factors.md)                                                                                   |
| tidyr          | separate()             | [reshaping data](cm103-data-reshaping.md)                                                                                                    |
| tidyr          | unite()                | [carpentry with joins](cm105-data-joins.md)                                                                                                  |
| tidyselect     | everything()           | [dot plot](cm206-graph-dot-plot.md)                                                                                                          |
| utils          | data()                 | [data basics](cm101-data-basics.md)                                                                                                          |
| utils          | read.table()           | [data basics](cm101-data-basics.md)                                                                                                          |
| wrapr          | build\_frame()         | [carpentry with joins](cm105-data-joins.md), [reshaping data](cm103-data-reshaping.md)                                                       |

<br> <a href="#top">▲ top of page</a>

## references

Citations for the packages tabulated above.

Mount and Zumel ([2019](#ref-R-cdata)[a](#ref-R-cdata)), Wickham and
François and others ([2019](#ref-R-dplyr)), Wickham
([2019](#ref-R-forcats)[a](#ref-R-forcats)), Bryan
([2017](#ref-R-gapminder)), Unwin ([2015](#ref-R-GDAdata)), Wickham and
Chang and others ([2019](#ref-R-ggplot2)), Layton
([2019](#ref-R-graphclassmate)), Spinu and others
([2018](#ref-R-lubridate)), Ooms ([2018](#ref-R-magick)), Layton and
others ([2018](#ref-R-midfielddata)), Wickham and others
([2018](#ref-R-readr)), Wickham and Bryan ([2019](#ref-R-readxl)), Chan
and Leeper ([2018](#ref-R-rio)), Mount ([2019](#ref-R-seplyr)), Healy
([2019](#ref-R-socviz)), Wickham
([2019](#ref-R-stringr)[b](#ref-R-stringr)), Müller and Wickham
([2019](#ref-R-tibble)), Wickham and Henry ([2019](#ref-R-tidyr)), Henry
and Wickham ([2018](#ref-R-tidyselect)), Friendly
([2017](#ref-R-vcdExtra)), Yee ([2017](#ref-R-VGAMdata)), Mount and
Zumel ([2019](#ref-R-wrapr)[b](#ref-R-wrapr))

<div id="refs">

<div id="ref-R-gapminder">

Bryan J (2017) *Gapminder: Data from gapminder.*
<https://CRAN.R-project.org/package=gapminder>

</div>

<div id="ref-R-rio">

Chan C-h and Leeper TJ (2018) *Rio: A swiss-army knife for data i/o.*
<https://CRAN.R-project.org/package=rio>

</div>

<div id="ref-R-vcdExtra">

Friendly M (2017) *VcdExtra: ’Vcd’ extensions and additions.*
<https://CRAN.R-project.org/package=vcdExtra>

</div>

<div id="ref-R-socviz">

Healy K (2019) *Socviz: Utility functions and data sets for data
visualization.* <https://github.com/kjhealy/socviz>

</div>

<div id="ref-R-tidyselect">

Henry L and Wickham H (2018) *Tidyselect: Select from a set of strings.*
<https://CRAN.R-project.org/package=tidyselect>

</div>

<div id="ref-R-graphclassmate">

Layton R (2019) *Graphclassmate: Companion materials for a course in
data visualization.* <https://github.com/graphdr/graphclassmate>

</div>

<div id="ref-R-midfielddata">

Layton R, Long R and Ohland M (2018) *Midfielddata: Student record data
for 98,000 undergraduates.* <https://github.com/MIDFIELDR/midfielddata>

</div>

<div id="ref-R-seplyr">

Mount J (2019) *Seplyr: Improved standard evaluation interfaces for
common data manipulation tasks.*
<https://CRAN.R-project.org/package=seplyr>

</div>

<div id="ref-R-cdata">

Mount J and Zumel N (2019a) *Cdata: Fluid data transformations.*
<https://CRAN.R-project.org/package=cdata>

</div>

<div id="ref-R-wrapr">

Mount J and Zumel N (2019b) *Wrapr: Wrap r tools for debugging and
parametric programming.* <https://CRAN.R-project.org/package=wrapr>

</div>

<div id="ref-R-tibble">

Müller K and Wickham H (2019) *Tibble: Simple data frames.*
<https://CRAN.R-project.org/package=tibble>

</div>

<div id="ref-R-magick">

Ooms J (2018) *Magick: Advanced graphics and image-processing in r.*
<https://CRAN.R-project.org/package=magick>

</div>

<div id="ref-R-lubridate">

Spinu V, Grolemund G and Wickham H (2018) *Lubridate: Make dealing with
dates a little easier.* <https://CRAN.R-project.org/package=lubridate>

</div>

<div id="ref-R-GDAdata">

Unwin A (2015) *GDAdata: Datasets for the book graphical data analysis
with r.* <https://CRAN.R-project.org/package=GDAdata>

</div>

<div id="ref-R-forcats">

Wickham H (2019a) *Forcats: Tools for working with categorical variables
(factors).* <https://CRAN.R-project.org/package=forcats>

</div>

<div id="ref-R-stringr">

Wickham H (2019b) *Stringr: Simple, consistent wrappers for common
string operations.* <https://CRAN.R-project.org/package=stringr>

</div>

<div id="ref-R-readxl">

Wickham H and Bryan J (2019) *Readxl: Read excel files.*
<https://CRAN.R-project.org/package=readxl>

</div>

<div id="ref-R-ggplot2">

Wickham H, Chang W, Henry L, Pedersen TL, Takahashi K, Wilke C and Woo K
(2019) *Ggplot2: Create elegant data visualisations using the grammar of
graphics.* <https://CRAN.R-project.org/package=ggplot2>

</div>

<div id="ref-R-dplyr">

Wickham H, François R, Henry L and Müller K (2019) *Dplyr: A grammar of
data manipulation.* <https://CRAN.R-project.org/package=dplyr>

</div>

<div id="ref-R-tidyr">

Wickham H and Henry L (2019) *Tidyr: Easily tidy data with ’spread()’
and ’gather()’ functions.* <https://CRAN.R-project.org/package=tidyr>

</div>

<div id="ref-R-readr">

Wickham H, Hester J and Francois R (2018) *Readr: Read rectangular text
data.* <https://CRAN.R-project.org/package=readr>

</div>

<div id="ref-R-VGAMdata">

Yee T (2017) *VGAMdata: Data supporting the ’vgam’ package.*
<https://CRAN.R-project.org/package=VGAMdata>

</div>

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
