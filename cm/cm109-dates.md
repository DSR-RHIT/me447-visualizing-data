dates
================

<img src="../resources/cm109-header.png" width="49%" /><img src="../resources/cm109b-header.png" width="49%" />
<small> <br> <i>Time Adjustments</i> by Bill Smith is licensed under
<a href="https://creativecommons.org/licenses/by/2.0/legalcode">CC BY
2.0</a> <br> </small>

## contents

[introduction](#introduction)  
[prerequisites](#prerequisites)  
[class Date](#class-date)  
[class POSIXct](#class-posixct)  
[class ts](#class-ts)  
[creating dates](#creating-dates)  
[references](#references)

## introduction

Dealing with time and dates is important becuase so much data is
collected with date or time variables, for example, economic indicators,
climate data, medical data, etc.

However, dates and times are hard “because they have to reconcile two
physical phenomena (the rotation of the Earth and its orbit around the
sun) with a whole raft of geopolitical phenomena including months, time
zones, and Daylight Savings Time” (Wickham and Grolemund,
[2017](#ref-Wickham+Grolemund:2017),
[Ch. 16](https://r4ds.had.co.nz/dates-and-times.html)). Adding to these
inherent difficulties, data are often mssing, intervals may be
irregular, and different organizations use different formats, e.g.,
“2019-04-16”, “16 Apr 2019”, “04/16/2019”

To add to our confusion, R includes [more than one class of time series
variables](https://cran.r-project.org/web/views/TimeSeries.html). We
will generally use class `Date`, but we will sometimes encounter class
`POSIXct` ([POSIX](https://en.wikipedia.org/wiki/POSIX) calendar time)
and class `ts` (time series).

  - class `Date` represents calendar dates and can be a character
    string  
  - class `POSIXct` implements the POSIX standard for date plus time
  - class `ts` is a numeric time-series object with equi-spaced
    intervals

<br> <a href="#top">▲ top of page</a>

## prerequisites

  - lubridate

<!-- end list -->

``` r
library("tidyverse")
library("lubridate")
```

<br> <a href="#top">▲ top of page</a>

## class Date

Like factors, the `Date` class are displayed as character strings but
are encoded as numeric values. In this example, I start with a character
vector,

``` r
x <- c("2019-03-01", "2019-06-01", "2019-09-01", "2019-12-01")
typeof(x)
#> [1] "character"
```

Convert it to a `Date` class using `lubridate::ymd()`,

``` r
x_date <- ymd(x)
attributes(x_date)
#> $class
#> [1] "Date"
```

And though the variable appears to be a character vector,

``` r
x_date
#> [1] "2019-03-01" "2019-06-01" "2019-09-01" "2019-12-01"
```

Dates are encoded numerically,

``` r
typeof(x_date)
#> [1] "double"
```

If we `unclass()` the variable, we reveal the hidden numbers. The Date
class is internally stored as the *number of days* since 1970-01-01,

``` r
unclass(x_date)
#> [1] 17956 18048 18140 18231
```

To confirm that 1970-01-01 is the zero date, try this

``` r
x_date <- ymd("1969-12-01", "1970-01-01", "1970-02-01")

unclass(x_date)
#> [1] -31   0  31
```

<br> <a href="#top">▲ top of page</a>

## class POSIXct

Different classes encode dates and times differently. For example, the
POSIXct class stores dates and times as the *number of seconds* since
1970-01-01 00:00:00 GMT. The `lubridate::now()` function returns the
current date and time in your time zone as a POSIXct object. Run
`OlsonNames()` for a list of time zone names.

``` r
x_date <- now(tzone = "US/Eastern")

x_date
#> [1] "2019-04-16 14:52:15 EDT"

attributes(x_date)
#> $class
#> [1] "POSIXct" "POSIXt" 
#> 
#> $tzone
#> [1] "US/Eastern"

typeof(x_date)
#> [1] "double"

unclass(x_date)
#> [1] 1555440736
#> attr(,"tzone")
#> [1] "US/Eastern"
```

## class ts

Class `ts` creates a `Time-Series` object, a vector or (sometimes) a
matrix of numeric oberved values. The time series object associates the
values with specific dates at constant intervals, e.g., days, weeks,
months, etc.

For illustrating the `ts` class, I’ll create a vector of nymbers
representing income receipots.

``` r
# vector of random number representing income 
receipts <- round(runif(36, 1000, 9999), 0)
```

Next, I create a `ts` object that has a one-day interval. Printing the
`ts` object includes the output `Frequency = 365`.

``` r
# day interval 
x_date <- ts(receipts, start = c(1959, 2), frequency = 365)

print(x_date)
#> Time Series:
#> Start = c(1959, 2) 
#> End = c(1959, 37) 
#> Frequency = 365 
#>  [1] 3182 3394 2036 8946 9863 6463 4408 1615 7242 7711 9055 9816 3838 6933
#> [15] 9523 6505 6603 4873 7280 3425 1303 5448 7051 8941 3609 9483 3913 8926
#> [29] 4078 6873 2588 1014 9595 8924 4947 3449

str(x_date) 
#>  Time-Series [1:36] from 1959 to 1959: 3182 3394 2036 8946 9863 ...

attributes(x_date)
#> $tsp
#> [1] 1959.003 1959.099  365.000
#> 
#> $class
#> [1] "ts"

typeof(x_date)
#> [1] "double"
```

For a week interval, frequency = 52.

``` r
# week interval
x_date <- ts(receipts, start = c(1959, 2), frequency = 52)
x_date
#> Time Series:
#> Start = c(1959, 2) 
#> End = c(1959, 37) 
#> Frequency = 52 
#>  [1] 3182 3394 2036 8946 9863 6463 4408 1615 7242 7711 9055 9816 3838 6933
#> [15] 9523 6505 6603 4873 7280 3425 1303 5448 7051 8941 3609 9483 3913 8926
#> [29] 4078 6873 2588 1014 9595 8924 4947 3449

str(x_date)
#>  Time-Series [1:36] from 1959 to 1960: 3182 3394 2036 8946 9863 ...
```

For a month interval, frequency = 12.

``` r
# month interval
x_date <- ts(receipts, start = c(1959, 2), frequency = 12)
x_date
#>       Jan  Feb  Mar  Apr  May  Jun  Jul  Aug  Sep  Oct  Nov  Dec
#> 1959      3182 3394 2036 8946 9863 6463 4408 1615 7242 7711 9055
#> 1960 9816 3838 6933 9523 6505 6603 4873 7280 3425 1303 5448 7051
#> 1961 8941 3609 9483 3913 8926 4078 6873 2588 1014 9595 8924 4947
#> 1962 3449

str(x_date)
#>  Time-Series [1:36] from 1959 to 1962: 3182 3394 2036 8946 9863 ...
```

For a quarterly interval, frequency = 4.

``` r
# quarter interval  
x_date <- ts(receipts, start = c(1959, 2), frequency = 4)
x_date
#>      Qtr1 Qtr2 Qtr3 Qtr4
#> 1959      3182 3394 2036
#> 1960 8946 9863 6463 4408
#> 1961 1615 7242 7711 9055
#> 1962 9816 3838 6933 9523
#> 1963 6505 6603 4873 7280
#> 1964 3425 1303 5448 7051
#> 1965 8941 3609 9483 3913
#> 1966 8926 4078 6873 2588
#> 1967 1014 9595 8924 4947
#> 1968 3449

str(x_date)
#>  Time-Series [1:36] from 1959 to 1968: 3182 3394 2036 8946 9863 ...
```

For a annual interval, delta-t is 1.

``` r
# year interval  
x_date <- ts(receipts, start = c(1959, 2), deltat = 1)
x_date
#> Time Series:
#> Start = 1960 
#> End = 1995 
#> Frequency = 1 
#>  [1] 3182 3394 2036 8946 9863 6463 4408 1615 7242 7711 9055 9816 3838 6933
#> [15] 9523 6505 6603 4873 7280 3425 1303 5448 7051 8941 3609 9483 3913 8926
#> [29] 4078 6873 2588 1014 9595 8924 4947 3449

str(x_date)
#>  Time-Series [1:36] from 1960 to 1995: 3182 3394 2036 8946 9863 ...
```

For a decade interval, delta-t is 10.

``` r
# decade interval 
x_date <- ts(receipts, start = c(1959, 2), deltat = 10)
x_date
#> Time Series:
#> Start = 1969 
#> End = 2319 
#> Frequency = 0.1 
#>  [1] 3182 3394 2036 8946 9863 6463 4408 1615 7242 7711 9055 9816 3838 6933
#> [15] 9523 6505 6603 4873 7280 3425 1303 5448 7051 8941 3609 9483 3913 8926
#> [29] 4078 6873 2588 1014 9595 8924 4947 3449

str(x_date)
#>  Time-Series [1:36] from 1969 to 2319: 3182 3394 2036 8946 9863 ...
```

## creating dates

Lubridate has some simple functions for converting the most common date
strings into `Date` objects.

  - `ymd()` for a string “2017-01-31”

<!-- end list -->

``` r
(x <- "2017-01-31")
#> [1] "2017-01-31"
(z <- ymd(x))
#> [1] "2017-01-31"

class(z)
#> [1] "Date"
attributes(z)
#> $class
#> [1] "Date"
unclass(z)
#> [1] 17197
```

  - `mdy()` for a string “January 31st, 2017” or “01/31/17”

<!-- end list -->

``` r
x <- "January 31st, 2017"
mdy(x)
#> [1] "2017-01-31"

class(x)
#> [1] "character"
class(ymd(x))
#> [1] "Date"


x <- "01/31/2017"
mdy(x)
#> [1] "2017-01-31"

class(x)
#> [1] "character"
class(mdy(x))
#> [1] "Date"
```

  - `dmy()` for a string “31-Jan-2017”

<!-- end list -->

``` r
x <- "31-Jan-2017"
dmy(x)
#> [1] "2017-01-31"

class(x)
#> [1] "character"
class(dmy(x))
#> [1] "Date"
```

  - `make_date()` when the year, month, and day are separate variables,
    like you might find in a data frame. The variables can be character
    or numeric.

<!-- end list -->

``` r
yyyy <- "2017" 
mm   <- "1"
dd   <- "31" 
z    <- make_date(year = yyyy, month = mm, day = dd)
z
#> [1] "2017-01-31"
class(z)
#> [1] "Date"

yyyy <- 2017 
mm   <- 1
dd   <- 31 
z    <- make_date(year = yyyy, month = mm, day = dd)
z
#> [1] "2017-01-31"
class(z)
#> [1] "Date"
```

For more on creating dates, read [16.2 Creating
date/times](https://r4ds.had.co.nz/dates-and-times.html#creating-datetimes)
in the text.

``` r
z <- ymd("1969-01-01")
attributes(z)
#> $class
#> [1] "Date"
unclass(z)
#> [1] -365
```

<br> <a href="#top">▲ top of page</a>

## references

<div id="refs">

<div id="ref-Wickham+Grolemund:2017">

Wickham H and Grolemund G (2017) *R for Data Science.* O’Reilly Media,
Inc., Sebastopol, CA <https://r4ds.had.co.nz/>

</div>

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
