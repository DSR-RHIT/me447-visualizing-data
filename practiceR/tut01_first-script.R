# tut01_first-script
# Richard Layton
# 2017-08-31

# clear variables from workspace
rm(list = ls())

# create an array 0, 1, 2, ..., 10
x1 <- seq(from = 0, to = 10, by = 1)

# create a second array that is a function of the first
y1 <- sin(x1)

# plot y1 as a function of x1
plot(x1, y1)

# last line
