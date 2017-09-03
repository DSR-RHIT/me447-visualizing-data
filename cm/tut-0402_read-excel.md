
examine the sample Excel file
-----------------------------

On your local machine

-   Open *pressure-calibration.xlsx* in Excel.
-   Take a look at the two worksheets (tabs). Note how they differ.

One worksheet shows the data in *wide form*, great for human readability; the other shows the data in *long form*, what we want for making graphs. In this activity we'll use the long form.

-   Close the Excel file

read tidy data from an Excel file
---------------------------------

From the *readxl* package, use *read\_excel()*.

If the Excel file has column names in the first row and data in the remaining rows, then we need only specify the path to the file and the name of the worksheet (tab).

``` r
# read data from an excel file
press_calibr <- read_excel(
    path = "data/pressure-calibration.xlsx"
    , sheet = "long form"
    )
```

Determine the *class* of the *press\_calibr* R object we made.

``` r
# examine the data
print(class(press_calibr))
## [1] "tbl_df"     "tbl"        "data.frame"
```

Among the classes listed is *data.frame*, which is what we want for most of our data manipulation and graph tasks. If *press\_calibr* were not a data frame, we would want to coerce it to one using *y &lt;- as.data.frame(x)*.

From the *tidyverse* package, use *glimpse()* to see the elements of the data frame.

``` r
glimpse(press_calibr)
## Observations: 81
## Variables: 5
## $ observN    <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, ...
## $ cycleN     <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, ...
## $ direction  <chr> "up", "up", "up", "up", "up", "dn", "dn", "dn", "dn...
## $ inputPSI   <dbl> 15, 18, 21, 24, 27, 24, 21, 18, 15, 12, 9, 6, 3, 6,...
## $ readingPSI <dbl> 15.75, 19.00, 23.50, 27.50, 32.50, 29.75, 25.25, 21...
```

read slightly untidy Excel data
-------------------------------

The spreadsheet tab *wide form* contains the same calibration in wide form. If we read this tab like we did the other tab, we get the following,

``` r
# when the form is not tidy
wide_data <- read_excel(
    path = "data/pressure-calibration.xlsx"
    , sheet = "wide form"
    )

# examine the result
glimpse(wide_data)
## Observations: 17
## Variables: 8
## $ X__1       <chr> "inputPSI", "6", "9", "12", "15", "18", "21", "24",...
## $ X__2       <chr> "direction", "up", "up", "up", "up", "up", "up", "u...
## $ readingPSI <chr> "cycle1", NA, NA, NA, "15.75", "19", "23.5", "27.5"...
## $ X__3       <chr> "cycle2", "4.25", "7", "10.75", "15", "19", "23", "...
## $ X__4       <chr> "cycle3", "4.75", "7.5", "11.5", "14.75", "19.5", "...
## $ X__5       <chr> "cycle4", "3.75", "7.5", "10.75", "14.75", "19.75",...
## $ X__6       <chr> "cycle5", "3.75", "7.5", "11.5", "15.5", "18.75", "...
## $ X__7       <chr> "cycle6", "4.25", "7.5", "11.25", "15.25", NA, NA, ...
```

Note that variable names *X\_1*, *X\_2*, etc., were created by *read\_excel* because the first row of the spreadsheet was blank except for column 3, *readingPSI*. Consequently the column names we would like to use were assigned to the first row of data and that meant that all the data were coerced to be character data, not numerical.

We use the *skip* argument to skip the first row of the spreadsheet, then the second row is treated as if it held the variable names, and row 3 is the first row of data.

``` r
# read it again, skip row 1
wide_data <- read_excel(
    path = "data/pressure-calibration.xlsx"
    , sheet = "wide form"
    , skip = 1
    )

# examine the result
glimpse(wide_data)
## Observations: 16
## Variables: 8
## $ inputPSI  <dbl> 6, 9, 12, 15, 18, 21, 24, 27, 24, 21, 18, 15, 12, 9,...
## $ direction <chr> "up", "up", "up", "up", "up", "up", "up", "up", "dn"...
## $ cycle1    <dbl> NA, NA, NA, 15.8, 19.0, 23.5, 27.5, 32.5, 29.8, 25.2...
## $ cycle2    <dbl> 4.25, 7.00, 10.75, 15.00, 19.00, 23.00, 28.25, 32.00...
## $ cycle3    <dbl> 4.75, 7.50, 11.50, 14.75, 19.50, 23.25, 27.75, 33.00...
## $ cycle4    <dbl> 3.75, 7.50, 10.75, 14.75, 19.75, 23.75, 27.50, 32.75...
## $ cycle5    <dbl> 3.75, 7.50, 11.50, 15.50, 18.75, 23.75, 27.50, 32.25...
## $ cycle6    <dbl> 4.25, 7.50, 11.25, 15.25, NA, NA, NA, NA, NA, NA, NA...
```

These data are still in wide form, but are ready for further data carpentry.

Next tutorial: [read and write CSV files](tut-0403_read-write-csv.md)

------------------------------------------------------------------------

[main page](../README.md)<br> \[topics page\]../(README-by-topic.md)
