
``` r
library("tidyverse")
```

    ## -- Attaching packages ------------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.0.0.9000     v purrr   0.2.5     
    ## v tibble  1.4.2          v dplyr   0.7.6     
    ## v tidyr   0.8.1          v stringr 1.3.1     
    ## v readr   1.1.1          v forcats 0.3.0

    ## -- Conflicts ---------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library("knitr")
opts_knit$set(root.dir = "../")

df <- read_csv("../data-raw/ACS_17_1YR_S1601_metadata.csv") %>%
    as.data.frame()
```

    ## Parsed with column specification:
    ## cols(
    ##   GEO.id = col_character(),
    ##   Id = col_character()
    ## )

``` r
# filter for totals only
df <- df %>% 
    filter(str_detect(GEO.id, "_EST_")) %>% 
    filter(str_detect(Id, "Total")) %>% 
    filter(!str_detect(Id, "years old")) %>% 
    filter(!str_detect(GEO.id, "VC01")) %>% 
    filter(!str_detect(GEO.id, "VC03"))



search_str <- str_c(df$GEO.id, collapse = "|")

search_str
```

    ## [1] "HC01_EST_VC02|HC01_EST_VC06|HC01_EST_VC10|HC01_EST_VC14|HC01_EST_VC18"

Use this search string from the metadata CSV to filter the data CSV.

``` r
df <- read_csv("data-raw/ACS_17_1YR_S1601_with_ann.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_character()
    ## )

    ## See spec(...) for full column specifications.
