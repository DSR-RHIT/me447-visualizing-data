
interacting with R in the console
---------------------------------

Start RStudio. The start up panel is shown below. The Console pane is where we can interact with or query R directly.

![](../resources/images/panes-1.png)

Press `Ctrl-L` to clear the console window.

In the console, a command line is indicated by a prompt `>`. The simplest interaction with R is to type an expression at the prompt and press Enter. R evaluates the expression and prints the result.

Code that you type is shown without prompts (making it easy for you to copy and paste code to your own Console or script). The R comment character is a single hash `#`.

    # type this code in your Console to create a vector
    x <- 1:10
    print(x)

The results of running the code (the output) is denoted with a double-hash:

    ##  [1]  1  2  3  4  5  6  7  8  9 10

Input and output together look like this:

``` r
# type this in your Console
y <- seq(5, 100, by = 5)
print(y)
##  [1]   5  10  15  20  25  30  35  40  45  50  55  60  65  70  75  80  85
## [18]  90  95 100
```

In the output, a number in brackets is the row number of the first element displayed in that line of output. For example,

`[1]` indicates that 5 is the 1st element of array *y*<br> `[18]` indicates that 90 is the the 18th element of *y*

your turn
---------

Type the following expressions in the R console and view the results. (Your results should match mine except for the double hash mark I use to indicate a line of output.)

``` r
# type this in your Console
2 + 3
## [1] 5

2 ^ 3
## [1] 8

abs(-4)
## [1] 4
```

The exponential function is `exp()`.

``` r
# type this in your Console
exp(2)
## [1] 7.389056
```

The base *e* logarithm function is `log()`.

``` r
# type this in your Console
log(10)
## [1] 2.302585

log(exp(2))
## [1] 2
```

Base 10 logarithm is `log10()`.

``` r
# type this in your Console
log10(10)
## [1] 1

log10(1e4)
## [1] 4
```

The R assignment operators are `<-` or `=`,

``` r
# type this in your Console
x <- pi/6
```

or equivalently,

``` r
x = pi/6
```

Conventional usage is `<-`. As Robert Kabakoff explains [1],

> R allows the = sign to be used for object assignments. However, you won't find many programs written that way because it's not standard syntax, there are some situations in which it won’t work, and R programmers will make fun of you.

If you use = and it works, I will not make fun of you.

When making assignments, no output appears in the console. To see the value of the variable, type its name,

``` r
# type this in your Console
x
## [1] 0.5235988
```

or use `print()`

``` r
# type this in your Console
print(x)
## [1] 0.5235988
```

The default unit for angular measure is radians.

``` r
# type this in your Console
y <- sin(x)
y
## [1] 0.5
```

R recognizes four types of variables: numeric, character, logical, and complex.

``` r
# type this in your Console
name <- "John"
test <- TRUE
z    <- 0 + 2i
```

The RStudio Environment pane lists the variables in the workspace and their values.

![](../resources/images/panes-2.png)

In the corner of the Environment pane, use the pull-down menu to change ”List” to ”Grid” to list the variable names, values, and types.

![](../resources/images/panes-3.png)

To list variables using the console, use `ls()`,

``` r
# type this in your Console
ls()
## [1] "name" "test" "x"    "y"    "z"
```

To list the variables, values, and types, use `ls.str()`

``` r
# type this in your Console
ls.str()
## name :  chr "John"
## test :  logi TRUE
## x :  num 0.524
## y :  num 0.5
## z :  cplx 0+2i
```

Variable names in R must start with a letter (A-Z) or (a-z). Names can include letters, digits (0-9), dots (.), and underscores (\_). R is case-sensitive.

In the typeface used in R and RStudio, a lowercase ell, `l`, and the number one, `1`, can be hard to distinguish. I suggest that if a variable name begins with an ell, consider using the full word or the capital letter. For example, the variable names `length` or `L` would be preferable to `l`.

To wrap up our visit in the R Console, a quick tour of R graph types.

    # type this in your Console
    demo(graphics)

Press *Enter* twice to bring up the first graph. RStudio should automatically switch the Browser pane view from the Files tab to the Plots tab. Repeat pressing Enter to see all the graphs in the demo.

To see more graph examples, try any of these:

    example(plot)
    example(boxplot)
    example(dotchart)
    example(coplot)
    example(persp)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](cm001_org-by-topic.md)

[1] Robert Kabakoff (2011) *R in Action: Data analysis and graphics with R*, Manning Publications.
