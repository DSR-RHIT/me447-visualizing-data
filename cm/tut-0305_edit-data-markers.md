
edit the data markers
---------------------

At this point in the tutorial, we expect you to have a *ggplot()* graph object called *f1* that looks like this:

If not, please return to the earlier tutorials.

![](tut-0305_edit-data-markers_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-2-1.png)

Change the data marker using the `shape` argument, taking values between 1 and 25 for the [R default plotting symbols](http://www.cookbook-r.com/Graphs/Shapes_and_line_types/). Shapes numbered 21-25 have both `color` (outline) and `fill` color attributes.

In the `geom_point()` function, add the argument `shape = 21`.

``` r
f1 <- ggplot(data = vibr_data, aes(x = time_sec, y = displ_mm)) +
    geom_point(shape = 21)

print(f1)
```

![](tut-0305_edit-data-markers_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-3-1.png)

We edit the attributes of the data marker further by adding `color`, `fill`, and `size` arguments to `geom_point()`.

``` r
f1 <- ggplot(data = vibr_data, aes(x = time_sec, y = displ_mm)) +
    geom_point(shape = 21
        , color = "slateblue4"
        , fill  = "slateblue1"
        , size  = 3
        )
```

In the `geom_point()` argument list, I'm using a "line-break before each comma" style. It may look odd at first, but it has a purpose. I can comment-out a single argument line without affecting the rest of the code. I find that this helps with debugging and reusing code plus makes a long list of arguments easier to read.

``` r
print(f1)
```

![](tut-0305_edit-data-markers_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-5-1.png)

We'll treat color in much more detail later, but for now, the document [Colors in R](http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf) shows the default R colors by name.

Next tutorial: [edit axis labels and title](tut-0306_edit-axis-labels-title.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
