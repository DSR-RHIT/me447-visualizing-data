#  ------------------------------------------
#  data basics
#
#  Richard Layton
#  2017-09-02
#  ------------------------------------------

# if you like to start with an empty workspace
rm(list = (ls()))

# libraries we use in this tutorial
library(tidyverse)
library(readxl)
# library(VIM) is also used, but load it later

# read data from an excel file
press_calibr <- read_excel(
	path = "data/pressure-calibration.xlsx"
	, sheet = "long form"
	)

# examine the data
class(press_calibr)
glimpse(press_calibr)

# when the form is not tidy
wide_data <- read_excel(
	path = "data/pressure-calibration.xlsx"
	, sheet = "wide form"
)

# examine the result
glimpse(wide_data)

# read it again, skip row 1
wide_data <- read_excel(
	path = "data/pressure-calibration.xlsx"
	, sheet = "wide form"
	, skip = 1
)

# examine the result
glimpse(wide_data)

# read and write CSV files -------------------------

# write the data frames to CSV files
write_csv(press_calibr, "data/press-calibr-long.csv")
write_csv(wide_data, "data/press-calibr-wide.csv")

# clear the workspace
rm(list = (ls()))

# confirm that all variables are removed
ls()

# read a CSV file
press_calibr <- read_csv("data/press-calibr-long.csv")
wide_data    <- read_csv("data/press-calibr-wide.csv")

# examine the data frame ---------------------------
class(press_calibr)
glimpse(press_calibr)

# print a tibble
press_calibr

# look at the last 10 rows
print(tail(press_calibr, n = 10L))

# missing values -------------------------
# a data frame with no missing values
summary(press_calibr)

# data frame that has missing values
summary(wide_data)

# a package for summarizing missing values
library(VIM)
aggr_plot <- aggr(
	wide_data
	, numbers  = TRUE
	, sortVars = TRUE
	, prop     = FALSE
	, combined = TRUE
	, ylab     = "Pattern of missing values"
)

# unload a package
unloadNamespace("VIM")

# list packages currently loaded
search()

# add a regression line
# plot the calibration data in a scatterplot
f1 <- ggplot(data = press_calibr,
						 aes(x = inputPSI, y = readingPSI)) +
	geom_point()
print(f1)

# add a linear regression
f2 <- f1 + geom_smooth(method = lm)
print(f2)

# omit the confidence interval
f3 <- f1 +
	geom_smooth(method = lm, se = FALSE)
print(f3)

# accessing data in R
data()

# commonly used dataset for R examples
glimpse(mtcars)
glimpse(iris)
glimpse(Titanic)
glimpse(starwars)
glimpse(economics)
glimpse(who)

# last line
