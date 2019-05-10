learn a display
================

<img src="../resources/cm211-header.png" width="100%" /> <small> <br>
<i>Moon, Earth-rise, Earth from the moon,</i> courtesy NASA.  
<br> </small>

## contents

[introduction](#introduction)  
[cycle plot](#cycle-plot)  
[multivariate bar](#multivariate-bar)  
[financial (OHLC) plot](#financial-ohlc-plot)  
[diverging stacked bar](#diverging-stacked-bar)  
[micromaps](#micromaps)  
[proportional symbol map](#proportional-symbol-map)  
[dot density map](#dot-density-map)  
[references](#references)

## introduction

We’ve arrived at the final graphical challenge: to learn on your own to
construct a graph type that we haven’t covered in detail. You may find
that you have to learn the syntax of a graphics system other than
ggplot2. The structure of the R graphics system is illustrated in the
figure.

<img src="../resources/cm211-00.png" width="70%" /> <small><br><i>Figure
1.14 The structure of the R graphics system</i> by Paul Murrell
([2011](#ref-Murrell:2011))<br></small>

Working at a lower level—grid, graphics, or grDevices—can be quite a
challenge. I would expect that if you have to learn a new graphics
syntax it would be in the top layers, e.g., lattice, vcd, maps, etc.

You are required to select at least one of the following graph types and
create a display for your portfolio. Unlike our earlier display types,
this page is not a tutorial because you must learn how to create the
data graphic on your own. Instead, we show some representative graphs
and some references to get you started.

<br> <a href="#top">▲ top of page</a>

## cycle plot

Resources

  - [Data requirements](cm301-report-display-reqts.md#cycle-plot)  
  - [monthplot()](https://www.rdocumentation.org/packages/stats/versions/3.6.0/topics/monthplot)
    in base R  
  - [plotMonth()](ttps://CRAN.R-project.org/package=season) in the
    **season** package

Example

<img src="../resources/cm211-cycle-plot-01.png" width="70%" />

Example

<img src="../resources/cm211-cycle-plot-02.png" width="70%" />

<!-- <br> -->

<!-- Example of cyclic data  -->

<!-- ```{r} -->

<!-- include_graphics("../resources/cm211-cycle-plot-03.png") -->

<!-- ``` -->

<br> <a href="#top">▲ top of page</a>

## multivariate bar

Stephen Few argues that a mulitvariate bar graph is suoperior to a
mosaic chart for understanding multivariate categorical data. A good
source for raw material for creating a multivariate bar graph,
therefore, is any mosaic chart.

Resources

  - [Data
    requirements](cm301-report-display-reqts.md#multivariate-bar)  
  - [geom\_bar() and
    geom\_col()](https://ggplot2.tidyverse.org/reference/geom_bar.html)
    in **ggplot2**  
  - Stephen Few ([2014](#ref-Few:2014))

Example

<img src="../resources/cm211-multivariate-bar.png" width="50%" />

<br> <a href="#top">▲ top of page</a>

## financial (OHLC) plot

A financial plot, or OHLC (open-high-low-close) plot, represents a time
series of market behavior.

The categorical variable is the date.

The quantitative variables are the opening value, high value, low value,
and closing value of a financial metric, e.g., the Dow Jones Industrial
Average (DJIA).

Resources

  - [Data
    requirements](cm301-report-display-reqts.md#financial-\(OHLC\)-plot)  
  - [Open-high-low-close
    Chart](https://datavizcatalogue.com/methods/OHLC_chart.html) in the
    Data Visualization Catalog

Example

<img src="../resources/cm211-financial-plot-01.png" width="70%" />

Example

<img src="../resources/cm211-financial-plot-04.png" width="70%" />

<br> <a href="#top">▲ top of page</a>

## diverging stacked bar

Diverging stacked bar charts are the primary graphical display technique
for reporting survey data. Respondents are typically asked to choose one
response from a discrete number of options such as Strongly Disagree,
Disagree, No Opinion, Agree, Strongly Agree.

Resources

  - [Data
    requirements](cm301-report-display-reqts.md#diverging-stacked-bar)  
  - [likert()](https://cran.r-project.org/web/packages/HH/index.html) in
    the **HH** package  
  - Heiberger and Robbins ([2014](#ref-Heiberger+Robbins:2014))  
  - ![](../resources/icon-blog.png) [Likert-plots and grouped
    Likert-plots](https://strengejacke.wordpress.com/2019/05/08/likert-plots-and-grouped-likert-plots-rstats/)
    an introduction to the [sjPlot
    package](https://strengejacke.github.io/sjPlot/)

Example

<img src="../resources/cm211-diverging-stacked-bar-01.png" width="70%" />

Example

<img src="../resources/cm211-diverging-stacked-bar-03.png" width="70%" />

Example

<img src="../resources/cm211-diverging-stacked-bar-04.png" width="70%" />

<br> <a href="#top">▲ top of page</a>

## micromaps

Resources

  - [Data requirements](cm301-report-display-reqts.md#micromap)  
  - [mmplot()](https://CRAN.R-project.org/package=micromap) in the
    **micromap** package  
  - [Linked
    micromaps](https://cran.r-project.org/web/packages/micromap/vignettes/Introduction_Guide.pdf)
    Introduction to the **micromap** package  
  - [ggmap()](https://github.com/dkahle/ggmap) in the **ggmap**
    package  
  - [Background maps](https://www.r-graph-gallery.com/map/) in the R
    Graph Gallery

Example

<img src="../resources/cm211-micromap-03.png" width="50%" />

Example. These are chloropleth maps which generally are not as good as
proportional symbol maps or dot density maps. I include these in the
micromaps section because the maps are a small-multiple design.

However, the data should be presented as proportional symbols or dot
densities.

<img src="../resources/cm211-micromap-02.png" width="70%" />

<br> <a href="#top">▲ top of page</a>

## proportional symbol map

Resources

  - [Data
    requirements](cm301-report-display-reqts.md#proportional-symbol-map)  
  - [ggmap package](https://github.com/dkahle/ggmap)  
  - [Background maps](https://www.r-graph-gallery.com/map/) in the R
    Graph Gallery  
  - [Bubblemap with
    ggplot2](https://www.r-graph-gallery.com/330-bubble-map-with-ggplot2/)
    in the R Graph Gallery

Example

<img src="../resources/cm211-proportional-symbol-map-01.png" width="70%" />

Example

<img src="../resources/cm211-proportional-symbol-map-02.png" width="70%" />

Example

<img src="../resources/cm211-proportional-symbol-map-03.png" width="70%" />

<br> <a href="#top">▲ top of page</a>

## dot density map

Resources

  - [Data requirements](cm301-report-display-reqts.md#dot-density-map)  
  - [ggmap package](https://github.com/dkahle/ggmap)  
  - [Background maps](https://www.r-graph-gallery.com/map/) in the R
    Graph Gallery  
  - [sf
    package](https://www.cultureofinsight.com/blog/2018/05/02/2018-04-08-multivariate-dot-density-maps-in-r-with-sf-ggplot2/)
    Multivariate dot-density maps with sf and ggplot2

Example

<img src="../resources/cm211-dot-density-map-01.png" width="70%" />

Example

<img src="../resources/cm211-dot-density-map-02.png" width="70%" />

<br> <a href="#top">▲ top of page</a>

## references

<div id="refs">

<div id="ref-Few:2014">

Few S (2014) Are mosaic plots worthwhile? <https://tinyurl.com/y23majn2>

</div>

<div id="ref-Heiberger+Robbins:2014">

Heiberger RM and Robbins NB (2014) Design of diverging stacked bar
charts for Likert scales and other applications. *Journal of Statistical
Software* **57**(5) <http://tinyurl.com/y5yg2pze>

</div>

<div id="ref-Murrell:2011">

Murrell P (2011) *R Graphics.*, 2nd edn. CRC Press, Boca Raton, FL
<https://www.stat.auckland.ac.nz/~paul/RG2e/>

</div>

<div id="ref-Wickham+Grolemund:2017">

Wickham H and Grolemund G (2017) *R for Data Science.* O’Reilly Media,
Inc., Sebastopol, CA <https://r4ds.had.co.nz/>

</div>

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
