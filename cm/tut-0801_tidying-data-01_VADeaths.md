tidying data
================

-   [preparation](#preparation)
-   [first look](#first-look)
-   [matrix to data frame](#matrix-to-data-frame)
-   [gather()](#gather)
-   [separate()](#separate)

preparation
-----------

Start by opening your RStudio project:
File → Recent projects → me447\_visualizing-data.Rproj.

> ALWAYS start your work session by launching the .Rproj file you created for this course

Using an R Project sets the working directory to your course folder, making relative file paths easy to use.

Preparation

-   Start a new script in your *practiceR* directory called *tut06\_tidying-data-01\_VADeaths.R*
-   Start with your usual header

        #  ---------------------------------------  
        #  tidying data
        #  VADeaths: 1940 death rates in Virginia
        #  
        #  name  
        #  date  
        #  ---------------------------------------  

-   Remember to install any packages you haven't used before

``` r
# housekeeping
rm(list = ls())

# packages
library(plyr)     # for round_any
library(dplyr)    # for %>%, select(), mutate(), filter()
library(tibble)   # rownames_to_column()
library(tidyr)    # for gather(), spread()
library(stringr)  # for str_split_fixed()
library(ggplot2)  # for graphs
library(readr)    # for read_csv()
```

Whenever you want to use both *plyr* and *dplyr* packages, make sure you load *plyr* first. (And then do not load *plyr* again in the same session.)

first look
----------

We'll revisit the *VADeaths* dataset, part of the base R installation.

``` r
# load the data
data(VADeaths)

# what nature of R object is it? 
class(VADeaths)
## [1] "matrix"

# print it
print(VADeaths)
##       Rural Male Rural Female Urban Male Urban Female
## 50-54       11.7          8.7       15.4          8.4
## 55-59       18.1         11.7       24.3         13.6
## 60-64       26.9         20.3       37.0         19.3
## 65-69       41.0         30.9       54.6         35.1
## 70-74       66.0         54.3       71.1         50.0
```

The data are in a matrix (not a data frame) and it looks like the age groups are in the row names. To check, use *row.names()*.

``` r
row.names(VADeaths)
## [1] "50-54" "55-59" "60-64" "65-69" "70-74"
```

matrix to data frame
--------------------

Convert the matrix to a data frame.

``` r
VA_wide <- data.frame(VADeaths)
kable(VA_wide)
```

|       |  Rural.Male|  Rural.Female|  Urban.Male|  Urban.Female|
|-------|-----------:|-------------:|-----------:|-------------:|
| 50-54 |        11.7|           8.7|        15.4|           8.4|
| 55-59 |        18.1|          11.7|        24.3|          13.6|
| 60-64 |        26.9|          20.3|        37.0|          19.3|
| 65-69 |        41.0|          30.9|        54.6|          35.1|
| 70-74 |        66.0|          54.3|        71.1|          50.0|

First, let's copy the age group variable from the row names to a new variable column in the data frame.

``` r
VA_wide <- VA_wide %>% 
    rownames_to_column("age_group")

# result
kable(VA_wide)
```

| age\_group |  Rural.Male|  Rural.Female|  Urban.Male|  Urban.Female|
|:-----------|-----------:|-------------:|-----------:|-------------:|
| 50-54      |        11.7|           8.7|        15.4|           8.4|
| 55-59      |        18.1|          11.7|        24.3|          13.6|
| 60-64      |        26.9|          20.3|        37.0|          19.3|
| 65-69      |        41.0|          30.9|        54.6|          35.1|
| 70-74      |        66.0|          54.3|        71.1|          50.0|

``` r

print(VA_wide)
##   age_group Rural.Male Rural.Female Urban.Male Urban.Female
## 1     50-54       11.7          8.7       15.4          8.4
## 2     55-59       18.1         11.7       24.3         13.6
## 3     60-64       26.9         20.3       37.0         19.3
## 4     65-69       41.0         30.9       54.6         35.1
## 5     70-74       66.0         54.3       71.1         50.0
```

Note that after using *rownames\_to\_column()* the row names are now the usual consecutive integers.

gather()
--------

We see that two categories are aggregated in the column names

-   location: rural or urban
-   sex: male or female

``` r
VA_wide %>% 
    gather(location_sex
                 , death_rate
                 , Rural.Male:Urban.Female
                 ) -> VA_long1






# result
print(VA_long1)
##    age_group location_sex death_rate
## 1      50-54   Rural.Male       11.7
## 2      55-59   Rural.Male       18.1
## 3      60-64   Rural.Male       26.9
## 4      65-69   Rural.Male       41.0
## 5      70-74   Rural.Male       66.0
## 6      50-54 Rural.Female        8.7
## 7      55-59 Rural.Female       11.7
## 8      60-64 Rural.Female       20.3
## 9      65-69 Rural.Female       30.9
## 10     70-74 Rural.Female       54.3
## 11     50-54   Urban.Male       15.4
## 12     55-59   Urban.Male       24.3
## 13     60-64   Urban.Male       37.0
## 14     65-69   Urban.Male       54.6
## 15     70-74   Urban.Male       71.1
## 16     50-54 Urban.Female        8.4
## 17     55-59 Urban.Female       13.6
## 18     60-64 Urban.Female       19.3
## 19     65-69 Urban.Female       35.1
## 20     70-74 Urban.Female       50.0

kable(VA_long1)
```

| age\_group | location\_sex |  death\_rate|
|:-----------|:--------------|------------:|
| 50-54      | Rural.Male    |         11.7|
| 55-59      | Rural.Male    |         18.1|
| 60-64      | Rural.Male    |         26.9|
| 65-69      | Rural.Male    |         41.0|
| 70-74      | Rural.Male    |         66.0|
| 50-54      | Rural.Female  |          8.7|
| 55-59      | Rural.Female  |         11.7|
| 60-64      | Rural.Female  |         20.3|
| 65-69      | Rural.Female  |         30.9|
| 70-74      | Rural.Female  |         54.3|
| 50-54      | Urban.Male    |         15.4|
| 55-59      | Urban.Male    |         24.3|
| 60-64      | Urban.Male    |         37.0|
| 65-69      | Urban.Male    |         54.6|
| 70-74      | Urban.Male    |         71.1|
| 50-54      | Urban.Female  |          8.4|
| 55-59      | Urban.Female  |         13.6|
| 60-64      | Urban.Female  |         19.3|
| 65-69      | Urban.Female  |         35.1|
| 70-74      | Urban.Female  |         50.0|

``` r

# examine
glimpse(VA_long1)
## Observations: 20
## Variables: 3
## $ age_group    <chr> "50-54", "55-59", "60-64", "65-69", "70-74", "50-...
## $ location_sex <chr> "Rural.Male", "Rural.Male", "Rural.Male", "Rural....
## $ death_rate   <dbl> 11.7, 18.1, 26.9, 41.0, 66.0, 8.7, 11.7, 20.3, 30...
```

separate()
----------

Two variables are recorded in the same column: location and sex.

This is a string variable so we can split the column into two columns using the *tidyr::separate()*

``` r
VA_long2 <- separate(VA_long1, location_sex, into = c("location", "sex"))

# result
glimpse(VA_long2)
## Observations: 20
## Variables: 4
## $ age_group  <chr> "50-54", "55-59", "60-64", "65-69", "70-74", "50-54...
## $ location   <chr> "Rural", "Rural", "Rural", "Rural", "Rural", "Rural...
## $ sex        <chr> "Male", "Male", "Male", "Male", "Male", "Female", "...
## $ death_rate <dbl> 11.7, 18.1, 26.9, 41.0, 66.0, 8.7, 11.7, 20.3, 30.9...
```

Awesome! The dataset is tidy. Let's rearrange the order of the columns with *select()* and the order of rows with *arrange()*.

``` r
# rearrange the order of columns and rows
VA_long2 <- VA_long2 %>% 
    select(sex, location, age_group, death_rate) %>% 
    arrange(sex, location, age_group) 
```

Print out to confirm.

``` r
kable(VA_long2)
```

| sex    | location | age\_group |  death\_rate|
|:-------|:---------|:-----------|------------:|
| Female | Rural    | 50-54      |          8.7|
| Female | Rural    | 55-59      |         11.7|
| Female | Rural    | 60-64      |         20.3|
| Female | Rural    | 65-69      |         30.9|
| Female | Rural    | 70-74      |         54.3|
| Female | Urban    | 50-54      |          8.4|
| Female | Urban    | 55-59      |         13.6|
| Female | Urban    | 60-64      |         19.3|
| Female | Urban    | 65-69      |         35.1|
| Female | Urban    | 70-74      |         50.0|
| Male   | Rural    | 50-54      |         11.7|
| Male   | Rural    | 55-59      |         18.1|
| Male   | Rural    | 60-64      |         26.9|
| Male   | Rural    | 65-69      |         41.0|
| Male   | Rural    | 70-74      |         66.0|
| Male   | Urban    | 50-54      |         15.4|
| Male   | Urban    | 55-59      |         24.3|
| Male   | Urban    | 60-64      |         37.0|
| Male   | Urban    | 65-69      |         54.6|
| Male   | Urban    | 70-74      |         71.1|

On to the next data tidying tutorial

-[Tidying data case study: World Health Organization tuberculosis data](tut-0802_tidying-data-02_who-TB.md)
