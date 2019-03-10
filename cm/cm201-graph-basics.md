graph basics
================

An introduction to R and `ggplot()`, adapted from Chapters 2 and 3 from
(Healy, [2019](#ref-Healy:2019)). Because this is our first R tutorial,
we’ll start by saying just a little bit about R.

## contents

[prerequisites](#prerequisites)  
[everything has a name](#everything-has-a-name)  
[everything is an object](#everything-is-an-object)  
[do things using functions](#do-things-using-functions)  
[functions come in packages](#functions-come-in-packages)  
[ask for its class](#ask-for-its-class)  
[ask for its structure](#ask-for-its-structure)  
\[\]  
\[\]  
\[\]  
[references](#references)

## prerequisites

  - Start every work session by launching `portfolio.Rproj`  
  - Your [project directory
    structure](cm501-proj-m-manage-files.md#plan-the-directory-structure)
    satisfies the course requirements

If any of these packages have not yet been installed, they can be
installed using these commands,

    install.packages("tidyverse")
    install.packages("gapminder")
    devtools::install_github("graphdr/graphclassmate")
    devtools::install_github("kjhealy/socviz")

Use *File \> New File \> R Script* to create a new R script in your
`explore` directory

``` 
explore/graph-basics-tutorial.R  
```

## everything has a name

In R, every object has a name.

  - named entities, like `x` or `y`  
  - data you have loaded, like `my_data`
  - functions you use, like `sin()`

Some names are forbidden

  - reserved words, like `TRUE` or `FALSE`  
  - programming words, like `Inf`, `for`, `else`, and `function`  
  - special entities, like `NA` and `NaN`

Some names should not be used because they name commonly used functions

  - `q()` quit
  - `c()` combine or concatenate
  - `mean()`
  - `range()`
  - `var()` variance

Names in R are case-sensitive

  - `my_data` and `My_Data` are different objects
  - I follow the style guide used in the tidyverse by naming things in
    lower case, with words separated by underscores, and no spaces

If you want to know if a name has already been used in a package you
have loaded, go to the RStudio console, type a question mark followed by
the name, e.g.,

  - `? c()`
  - `? mean()`

If the name is in use, a help page appears in the RStudio Help pane.

## everything is an object

  - Some objects are built in to R
  - Some objects are loaded with packages
  - Some objects are created by you

In your R script, type the following, then click the *Source* button,

``` r
c(1, 2, 3, 1, 3, 25)
```

The results should appear in your Console,

    #> [1]  1  2  3  1  3 25

Everything that comes back to us in the Console as the result of typing
a command will be shown prefaced by a hash mark and greater-than symbol
(`#>`).

  - `c()` is the function to combine or concatenate its elements to
    create a vector

Instead of sending the result to the Console, we can assign the vector
to a name. Add the following to your script, and *Source*

``` r
x <- c(1, 2, 3, 1, 3, 25)
y <- c(5, 31, 71, 1, 3, 21, 6)
```

To see the result, type the object name in the Console

``` r
x
#> [1]  1  2  3  1  3 25
y
#> [1]  5 31 71  1  3 21  6
```

You create objects my assigning them names

  - `<-` is the assignment operator (keyboard shortcut: ALT –)
  - objects exist in your R project workspace, listed in the RStudio
    Environment pane

## do things using functions

  - functions are objects the perform actions for you
  - functions produce output based on the input it receives
  - functions are recognized by the parentheses at the end of their
    names

The parentheses are where we include the inputs (arguments) to the
function

  - `c()` concatentaes the comma-separated numbers in the paranetheses
    to create a vector
  - `mean()` computes the mean of a vector of numbers
  - `summary()` returns a summary of the object

If we try `mean()` with no inputs, we get an error statement

    mean()
    #> Error in mean.default() : argument "x" is missing, with no default

If we use the `x` or `y` vector as the argument, the mean is computed
and displayed. Add these lines to your script and Sourtce.

``` r
mean(x)
#> [1] 5.833333
mean(y)
#> [1] 19.71429
summary(x)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>   1.000   1.250   2.500   5.833   3.000  25.000
```

## functions come in packages

  - Families of useful functions are bundled intop packages that you can
    install, load, and use
  - Packages allow you to build on the work of others
  - You can write you pwn functions and packages too
  - The visualizations we will do depend on choosing the right functions
    and giving those functions the right arguments

Functions do something useful with the input you provide and give you
back a result. Type the following in tour script and Source. (Comments
in R are denoted by a hashtag (`#`).

``` r
table(x) # table of counts
#> x
#>  1  2  3 25 
#>  2  1  2  1

sd(y)    # standard deviation
#> [1] 25.14435

x * 5    # multiply every element by a scalar
#> [1]   5  10  15   5  15 125

y + 1    # add a scalar to every element
#> [1]  6 32 72  2  4 22  7

x + x    # add elements 
#> [1]  2  4  6  2  6 50
```

As you have already seen, once you have installed a package to your
machine, you load it into your workspace using the `library()` function

``` r
library("socviz")
```

# ask for its class

Everything is an object and every object has a class.

``` r
class(x)
#> [1] "numeric"

class(summary)
#> [1] "function"
```

Certain actions will cahnge the class of an object. Suppose we try
create a vector from ghe `x` object and a text string,

``` r
new_vector <- c(x, "Apple")

new_vector
#> [1] "1"     "2"     "3"     "1"     "3"     "25"    "Apple"

class(new_vector)
#> [1] "character"
```

By adding the word “Apple” to the vector, R changed the class from
“numeric” to “character”. All the num bers are enclosed in quotes:
they are now charatcter strings and cannot be used in calculations.

The most common class of data onbect we will use is the data frame.

``` r
titanic # data in the socviz package
#>       fate    sex    n percent
#> 1 perished   male 1364    62.0
#> 2 perished female  126     5.7
#> 3 survived   male  367    16.7
#> 4 survived female  344    15.6

class(titanic)
#> [1] "data.frame"
```

You can see there are four variables: fate, sex, n, percent. Two
variables (columns) are numeric, two are categorical.

You can pick out a variable using the `$` operator,

``` r
titanic$percent
#> [1] 62.0  5.7 16.7 15.6
```

From the tridyverse, we will regularly use a augmented data frame called
a "tibble. We can convert the titanic data frame to a tibble, using the
`as_tibble()` (in the tidyverse package)

``` r
library("tidyverse")
titanic_tb <- as_tibble(titanic)

class(titanic_tb)
#> [1] "tbl_df"     "tbl"        "data.frame"

titanic_tb
#> # A tibble: 4 x 4
#>   fate     sex        n percent
#>   <fct>    <fct>  <dbl>   <dbl>
#> 1 perished male    1364    62  
#> 2 perished female   126     5.7
#> 3 survived male     367    16.7
#> 4 survived female   344    15.6
```

The tibble includes additional information about the variables

## ask for its structure

## references

<div id="refs">

<div id="ref-Healy:2019">

Healy K (2019) *Data Visualization: A Practical Introduction.* Princeton
University Press, Princeton, NJ
<https://kieranhealy.org/publications/dataviz/>

</div>

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
