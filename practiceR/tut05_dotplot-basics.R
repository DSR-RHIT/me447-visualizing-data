#  ------------------------------------------
#  dot plot basics
#
#  Richard Layton
#  2017-09-10
#  ------------------------------------------

library(ggplot2)

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

# ---------- basic dotplot
ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg))) +
	geom_point(size = 3)

# ---------- conditioning on number of cylinders using text as data marker
ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg), label = cyl)) +
	geom_text()

# ---------- conditioning on number of cylinders using color
ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg), col = cyl)) +
	geom_point(size = 3)

# to create a discrete color scheme, crete a new factor variable
my_mtcars <- my_mtcars %>%
	mutate(Cylinders = factor(cyl))

# graph the color-conditioned graph again using the new variable
ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg), col = Cylinders)) +
	geom_point(size = 3) +
	scale_colour_manual(values = c("aquamarine4", "darkgoldenrod1", "firebrick"))

# ---------- condition on cylinders using facets
ggplot(my_mtcars, aes(x = mpg, y = reorder(make_model, mpg))) +
	geom_point(size = 3) +
	labs(x = "Gas mileage (mpg)", y = "Make and model of car") +
	theme_light() +
	facet_grid(Cylinders ~., scales = "free_y", space = "free_y") +
	labs(x = "Gas mileage (mpg)", y = "Make and model of car") +
	theme_light() +
  theme(strip.text.y = element_text(angle = 0, size = 14), panel.spacing = unit(0.3, "mm"))





