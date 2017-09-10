
change the order of the facets
------------------------------

We can change the panel order with *reorder()* inside *facet\_grid()*. Here we reorder the panels (*Cylinder* variable) based on the magnitude of the *mpg* variables in each panel.

``` r
# reorder panels
f9 <- f8 +
    facet_grid(~ reorder(Cylinders, mpg))
print(f9)
```

![](tut-07-images/08-unnamed-chunk-3-1.png)

Next tutorial: [set the y scales free](tut-0709_free-scales.md)<br> Tutorial list: [week 2](week-02_assignments.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)
