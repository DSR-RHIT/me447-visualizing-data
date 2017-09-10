#  ------------------------------------------
#  dot plot basics
#
#  Richard Layton
#  2017-09-10
#  ------------------------------------------

# dataset in R, 1973–74 models, Motor Trend
data(mtcars)
head(mtcars)

# copy the row names to a new variable "make_model"
library(dplyr)
my_mtcars <- mtcars %>%
	mutate(make_model = row.names(mtcars))

# examine the data
class(my_mtcars)

glimpse(my_mtcars)

# make basic dot plot
library(ggplot2)
f1 <- ggplot(my_mtcars, aes(x = mpg, y = make_model)) +
	geom_point()
print(f1)

# reorder rows
f2 <- ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg))) +
	geom_point()
print(f2)

# dots bigger
f3 <- ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg))) +
	geom_point(size = 3)
print(f3)

# different ways of including 3rd variable: cylinders

# recall that cyl is in the data frame
glimpse(my_mtcars)

# could use the number of cylinders as the data marker
f4 <- ggplot(my_mtcars, aes(x = mpg
	, y = reorder(make_model, mpg)
	, label = cyl)
) +
	geom_text()
print(f4)

# could use dot color
f5 <- ggplot(my_mtcars, aes(x = mpg
	, y = reorder(make_model, mpg)
	, col = cyl)
) +
	geom_point(size = 3)
print(f5)

# new variable so color can be assigned discrete
my_mtcars <- my_mtcars %>%
	mutate(Cylinders = factor(cyl))

# again with factor
f6 <- ggplot(my_mtcars, aes(x = mpg
	, y = reorder(make_model, mpg)
	, col = Cylinders)
) +
	geom_point(size = 3)
print(f6)

# change default colors
f7 <- f6 +
	scale_colour_manual(
		values = c("aquamarine4", "darkgoldenrod1", "firebrick")
	)
print(f7)

# instead of colors, could use panels
f8 <- ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg))) +
	geom_point(size = 3) +
	labs(x = "Gas mileage (mpg)", y = "Make and model of car") +
	theme_light() +
	facet_grid(~Cylinders)
print(f8)

# reorder panels
f9 <- f8 +
	facet_grid(~reorder(Cylinders, mpg))
print(f9)

# orient vertycally
f10 <- f8 +
	facet_grid(Cylinders ~.)
print(f10)

# free the scales to remove lines with no data
f11 <- f8 +
	facet_grid(Cylinders ~., scales = "free_y")
print(f11)

# make the spacing free too
f12 <- f8 +
	facet_grid(Cylinders ~., scales = "free_y", space = "free_y")
print(f12)

# labels and theme
f13 <- f12 +
	labs(x = "Gas mileage (mpg)", y = "Make and model of car") +
	theme_light()
print(f13)

# edit the strip text
f14 <- f13 +
	theme(strip.text.y = element_text(angle = 0, size = 14))
print(f14)

# changing panel spacing
f15 <- f14 +
	theme(panel.spacing = unit(0.3, "mm"))
print(f15)
