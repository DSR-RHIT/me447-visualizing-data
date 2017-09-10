
reorder the rows of a dot plot
------------------------------

Apply *reorder()* to the y-variable and indicate the numerical variable used to order the rows.

``` r
# reorder rows
f2 <- ggplot(data = my_mtcars, aes(x = mpg, y = reorder(make_model, mpg))) +
    geom_point()
print(f2)
```

![](tut-07-images/03-unnamed-chunk-3-1.png)

Let's re-size the dots too.

``` r
# dots bigger
f3 <- ggplot(data = my_mtcars, aes(x = mpg, y = reorder(make_model, mpg))) +
    geom_point(size = 3)
print(f3)
```

![](tut-07-images/03-unnamed-chunk-4-1.png)

That's pretty much it for a single-panel, basic dot plot. Next we investigate different ways to use conditioning variables.

Next tutorial: [condition a dot plot with text](tut-0704_condition-by-text.md)<br> Tutorial list: [week 2](week-02_assignments.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
