transforming data
================

-   [introduction](#introduction)
-   [filter rows with filter()](#filter-rows-with-filter)
-   [comparison operators](#comparison-operators)
-   [select columns with select()](#select-columns-with-select)
-   [rename a variable with rename()](#rename-a-variable-with-rename)
-   [add new variables with mutate()](#add-new-variables-with-mutate)
-   [group\_by() and summarize()](#group_by-and-summarize)
-   [useful summarizing functions](#useful-summarizing-functions)
-   [exercise](#exercise)
-   [bibliography](#bibliography)

introduction
------------

The examples in this tutorial are borrowed from Chapter 5 of [R for Data Science](http://r4ds.had.co.nz/) (Grolemund & Wickham, 2017). I've trimmed their work to focus on a smaller set of skills, but you are welcome to to go to their website and work through the problems in more detail.

-   Install the `nycflights13` package
-   Start a new R script *tut12\_data-transformation.R* in your *practiceR* directory

``` r
library(nycflights13)
library(tidyverse)
```

The *flights* data frame contains all 336,776 flights that departed from New York City in 2013. The data comes from the [US Bureau of Transportation Statistics](https://www.transtats.bts.gov/DatabaseInfo.asp?DB_ID=120&Link=0).

-   After loading the dataset with `library(nycflights13)`, type `?flights` in your Console to see the data dictionary.

``` r
flights
## # A tibble: 336,776 x 19
##     year month   day dep_time sched_dep_time dep_delay arr_time
##    <int> <int> <int>    <int>          <int>     <dbl>    <int>
##  1  2013     1     1      517            515         2      830
##  2  2013     1     1      533            529         4      850
##  3  2013     1     1      542            540         2      923
##  4  2013     1     1      544            545        -1     1004
##  5  2013     1     1      554            600        -6      812
##  6  2013     1     1      554            558        -4      740
##  7  2013     1     1      555            600        -5      913
##  8  2013     1     1      557            600        -3      709
##  9  2013     1     1      557            600        -3      838
## 10  2013     1     1      558            600        -2      753
## # ... with 336,766 more rows, and 12 more variables: sched_arr_time <int>,
## #   arr_delay <dbl>, carrier <chr>, flight <int>, tailnum <chr>,
## #   origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
## #   minute <dbl>, time_hour <dttm>
```

filter rows with filter()
-------------------------

*filter()* keeps all rows that meet the criteria you set. Columns are unchanged. For example, we select all flights on January 1st with

``` r
jan1 <- filter(flights, month == 1, day == 1)

jan1
## # A tibble: 842 x 19
##     year month   day dep_time sched_dep_time dep_delay arr_time
##    <int> <int> <int>    <int>          <int>     <dbl>    <int>
##  1  2013     1     1      517            515         2      830
##  2  2013     1     1      533            529         4      850
##  3  2013     1     1      542            540         2      923
##  4  2013     1     1      544            545        -1     1004
##  5  2013     1     1      554            600        -6      812
##  6  2013     1     1      554            558        -4      740
##  7  2013     1     1      555            600        -5      913
##  8  2013     1     1      557            600        -3      709
##  9  2013     1     1      557            600        -3      838
## 10  2013     1     1      558            600        -2      753
## # ... with 832 more rows, and 12 more variables: sched_arr_time <int>,
## #   arr_delay <dbl>, carrier <chr>, flight <int>, tailnum <chr>,
## #   origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
## #   minute <dbl>, time_hour <dttm>
```

comparison operators
--------------------

To filter by comparing a variable to something, R uses the standard collection of relational operators `>`, `>=`, `<`, `<=`, `!=` (not equal), and `==` (equal)...note that the *equal* comparison has two equal signs.

Be careful when looking for equlaity between two floating point numbers.

``` r
sqrt(2) ^ 2 == 2
## [1] FALSE

1/49 * 49 == 1
## [1] FALSE
```

Instead of relying on `==`, use `dplyr::near(x, y)` to compare floating point numbers `x` and `y`,

``` r
near(sqrt(2) ^ 2,  2)
## [1] TRUE

near(1 / 49 * 49, 1)
## [1] TRUE
```

R includes the usual set of Boolean operators: AND `&`, OR `|`, XOR `xor()`, and NOT `!`.

The following code finds all flights that departed in November or December:

``` r
filter(flights, month == 11 | month == 12)
## # A tibble: 55,403 x 19
##     year month   day dep_time sched_dep_time dep_delay arr_time
##    <int> <int> <int>    <int>          <int>     <dbl>    <int>
##  1  2013    11     1        5           2359         6      352
##  2  2013    11     1       35           2250       105      123
##  3  2013    11     1      455            500        -5      641
##  4  2013    11     1      539            545        -6      856
##  5  2013    11     1      542            545        -3      831
##  6  2013    11     1      549            600       -11      912
##  7  2013    11     1      550            600       -10      705
##  8  2013    11     1      554            600        -6      659
##  9  2013    11     1      554            600        -6      826
## 10  2013    11     1      554            600        -6      749
## # ... with 55,393 more rows, and 12 more variables: sched_arr_time <int>,
## #   arr_delay <dbl>, carrier <chr>, flight <int>, tailnum <chr>,
## #   origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
## #   minute <dbl>, time_hour <dttm>
```

A useful shorthand is `x %in% y`. This will select every row where x is one of the values in y. We could use it to rewrite the code above:

``` r
nov_dec <- filter(flights, month %in% c(11, 12))
```

Missing values (NA) can be found with `is.na()`, resulting in a logical output TRUE or FALSE.

``` r
x <- NA
y <- 10

is.na(x)
## [1] TRUE

is.na(y)
## [1] FALSE
```

A [tibble](http://r4ds.had.co.nz/tibbles.html) is an "opinionated data frame that makes working in the tidyverse a little easier." Here we'll make a short tibble with an NA data entry.

``` r
# make a data frame that has an NA entry
df <- tibble(x = c(1, NA, 3))
df
## # A tibble: 3 x 1
##       x
##   <dbl>
## 1     1
## 2    NA
## 3     3
```

`filter()` only includes rows where its condition is TRUE; it excludes both FALSE and NA values. If you want to preserve missing values, ask for them explicitly:

``` r
# filter excludes NA values by default
filter(df, x > 1)
## # A tibble: 1 x 1
##       x
##   <dbl>
## 1     3


# filter includes NA values if you so specify
filter(df, is.na(x) | x > 1)
## # A tibble: 2 x 1
##       x
##   <dbl>
## 1    NA
## 2     3
```

For more detail, see [Filter rows with filter()](http://r4ds.had.co.nz/transform.html#filter-rows-with-filter).

select columns with select()
----------------------------

As you saw when we tidied the WHO tuberculosis data, datasets can be found that have hundreds or even thousands of variables (columns). `select()` allows us to narrow that list of variables to the ones we are interested in at the moment. `select()` drops variables not listed.

``` r
# Select columns by name
select(flights, year, month, day)
## # A tibble: 336,776 x 3
##     year month   day
##    <int> <int> <int>
##  1  2013     1     1
##  2  2013     1     1
##  3  2013     1     1
##  4  2013     1     1
##  5  2013     1     1
##  6  2013     1     1
##  7  2013     1     1
##  8  2013     1     1
##  9  2013     1     1
## 10  2013     1     1
## # ... with 336,766 more rows
```

``` r
# Select all columns between year and day (inclusive)
select(flights, year:day)
## # A tibble: 336,776 x 3
##     year month   day
##    <int> <int> <int>
##  1  2013     1     1
##  2  2013     1     1
##  3  2013     1     1
##  4  2013     1     1
##  5  2013     1     1
##  6  2013     1     1
##  7  2013     1     1
##  8  2013     1     1
##  9  2013     1     1
## 10  2013     1     1
## # ... with 336,766 more rows
```

``` r
# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))
## # A tibble: 336,776 x 16
##    dep_time sched_dep_time dep_delay arr_time sched_arr_time arr_delay
##       <int>          <int>     <dbl>    <int>          <int>     <dbl>
##  1      517            515         2      830            819        11
##  2      533            529         4      850            830        20
##  3      542            540         2      923            850        33
##  4      544            545        -1     1004           1022       -18
##  5      554            600        -6      812            837       -25
##  6      554            558        -4      740            728        12
##  7      555            600        -5      913            854        19
##  8      557            600        -3      709            723       -14
##  9      557            600        -3      838            846        -8
## 10      558            600        -2      753            745         8
## # ... with 336,766 more rows, and 10 more variables: carrier <chr>,
## #   flight <int>, tailnum <chr>, origin <chr>, dest <chr>, air_time <dbl>,
## #   distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>
```

There are a number of helper functions you can use within `select()`:

-   `starts_with("abc")`: matches names that begin with “abc”.
-   `ends_with("xyz")`: matches names that end with “xyz”.
-   `contains("ijk")`: matches names that contain “ijk”.

For more detail, see [Select columns with select()](http://r4ds.had.co.nz/transform.html#select-columns-with-select).

rename a variable with rename()
-------------------------------

To rename a variable but keep all other columns, use `rename()`.

``` r
rename(flights, tail_num = tailnum)
## # A tibble: 336,776 x 19
##     year month   day dep_time sched_dep_time dep_delay arr_time
##    <int> <int> <int>    <int>          <int>     <dbl>    <int>
##  1  2013     1     1      517            515         2      830
##  2  2013     1     1      533            529         4      850
##  3  2013     1     1      542            540         2      923
##  4  2013     1     1      544            545        -1     1004
##  5  2013     1     1      554            600        -6      812
##  6  2013     1     1      554            558        -4      740
##  7  2013     1     1      555            600        -5      913
##  8  2013     1     1      557            600        -3      709
##  9  2013     1     1      557            600        -3      838
## 10  2013     1     1      558            600        -2      753
## # ... with 336,766 more rows, and 12 more variables: sched_arr_time <int>,
## #   arr_delay <dbl>, carrier <chr>, flight <int>, tail_num <chr>,
## #   origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
## #   minute <dbl>, time_hour <dttm>
```

add new variables with mutate()
-------------------------------

`mutate()` adds new columns that are functions of existing columns.

``` r
# create a smaller dataset for this example
flights_sml <- select(flights, 
  year:day, 
  ends_with("delay"), 
  distance, 
  air_time
)

flights_sml
## # A tibble: 336,776 x 7
##     year month   day dep_delay arr_delay distance air_time
##    <int> <int> <int>     <dbl>     <dbl>    <dbl>    <dbl>
##  1  2013     1     1         2        11     1400      227
##  2  2013     1     1         4        20     1416      227
##  3  2013     1     1         2        33     1089      160
##  4  2013     1     1        -1       -18     1576      183
##  5  2013     1     1        -6       -25      762      116
##  6  2013     1     1        -4        12      719      150
##  7  2013     1     1        -5        19     1065      158
##  8  2013     1     1        -3       -14      229       53
##  9  2013     1     1        -3        -8      944      140
## 10  2013     1     1        -2         8      733      138
## # ... with 336,766 more rows
```

Create two new variables `gain` and `speed`, new columns added to the end of the dataset.

``` r
# create two new variables gain and speed
mutate(flights_sml,
  gain  = arr_delay - dep_delay,
  speed = distance / air_time * 60
)
## # A tibble: 336,776 x 9
##     year month   day dep_delay arr_delay distance air_time  gain    speed
##    <int> <int> <int>     <dbl>     <dbl>    <dbl>    <dbl> <dbl>    <dbl>
##  1  2013     1     1         2        11     1400      227     9 370.0441
##  2  2013     1     1         4        20     1416      227    16 374.2731
##  3  2013     1     1         2        33     1089      160    31 408.3750
##  4  2013     1     1        -1       -18     1576      183   -17 516.7213
##  5  2013     1     1        -6       -25      762      116   -19 394.1379
##  6  2013     1     1        -4        12      719      150    16 287.6000
##  7  2013     1     1        -5        19     1065      158    24 404.4304
##  8  2013     1     1        -3       -14      229       53   -11 259.2453
##  9  2013     1     1        -3        -8      944      140    -5 404.5714
## 10  2013     1     1        -2         8      733      138    10 318.6957
## # ... with 336,766 more rows
```

If you only want to keep the new variables, use `transmute()` instead of `mutate()`

``` r
transmute(flights_sml,
  gain  = arr_delay - dep_delay,
  speed = distance / air_time * 60
)
## # A tibble: 336,776 x 2
##     gain    speed
##    <dbl>    <dbl>
##  1     9 370.0441
##  2    16 374.2731
##  3    31 408.3750
##  4   -17 516.7213
##  5   -19 394.1379
##  6    16 287.6000
##  7    24 404.4304
##  8   -11 259.2453
##  9    -5 404.5714
## 10    10 318.6957
## # ... with 336,766 more rows
```

For more detail, see [Add new variables with mutate()](http://r4ds.had.co.nz/transform.html#add-new-variables-with-mutate).

group\_by() and summarize()
---------------------------

This pair of functions gives you the ability to summarize datasets by grouping variables, changing the unit of analysis from the complete dataset to individual groups.

For example, if we goup the flights dat by date, we can find the mean delay by date.

``` r
# first we group
by_day <- group_by(flights, year, month, day)

# then summarize
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))
## # A tibble: 365 x 4
## # Groups:   year, month [?]
##     year month   day     delay
##    <int> <int> <int>     <dbl>
##  1  2013     1     1 11.548926
##  2  2013     1     2 13.858824
##  3  2013     1     3 10.987832
##  4  2013     1     4  8.951595
##  5  2013     1     5  5.732218
##  6  2013     1     6  7.148014
##  7  2013     1     7  5.417204
##  8  2013     1     8  2.553073
##  9  2013     1     9  2.276477
## 10  2013     1    10  2.844995
## # ... with 355 more rows
```

`count()` is a special operation inside summarize that simplys counts observtaions (the number of rows) in a group.

``` r
delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist  = mean(distance,  na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>% 
  filter(count > 20, dest != "HNL")

delays
## # A tibble: 96 x 4
##     dest count      dist     delay
##    <chr> <int>     <dbl>     <dbl>
##  1   ABQ   254 1826.0000  4.381890
##  2   ACK   265  199.0000  4.852273
##  3   ALB   439  143.0000 14.397129
##  4   ATL 17215  757.1082 11.300113
##  5   AUS  2439 1514.2530  6.019909
##  6   AVL   275  583.5818  8.003831
##  7   BDL   443  116.0000  7.048544
##  8   BGR   375  378.0000  8.027933
##  9   BHM   297  865.9966 16.877323
## 10   BNA  6333  758.2135 11.812459
## # ... with 86 more rows
```

Can you explain what each line above does?

-   `na.rm` argument removes missing values prior to computation

useful summarizing functions
----------------------------

Along with `count = n()` and `mean(x)`,

-   `median(x)`
-   `sd(x)` standard deviation
-   `IQR(x)` interquartile range
-   `min(x)` and `max(x)`
-   `first(x)`, `nth(x, 2)`, `last(x)` for position
-   `sum(!is.na(x))` number of non-missing values
-   `n_distinct(x)` number of distinct values

For more detail, see [Grouped summaries with summarize()](http://r4ds.had.co.nz/transform.html#grouped-summaries-with-summarise).

exercise
--------

Preparation

-   From the course website, download the *lotr-words-spoken.xlsx* spreadsheet.
-   Create a R script *tut12\_transform-data.R* in your *practiceR* folder.

In your script,

-   read the Excel spreadsheet
-   tidy the LOTR data (Bryan, 2017)
-   group by race and sex
-   determine the total words spoken by group

My answer:

    ## # A tibble: 6 x 3
    ## # Groups:   race [3]
    ##     race    sex words_spoken
    ##    <chr>  <chr>        <dbl>
    ## 1 hobbit   male         8780
    ## 2    man   male         8043
    ## 3    elf   male         1994
    ## 4    elf female         1743
    ## 5    man female          669
    ## 6 hobbit female           16

bibliography
------------

Bryan, Jenny (2017) LOTR repository (<https://github.com/jennybc/lotr/blob/master/lotr_wordsSpoken.tsv>).

Grolemund, Garrett & Hadley Wickham (2017) R for Data Science. O’Reilly (<http://r4ds.had.co.nz/>).

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
