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
library(fivethirtyeight)

# read data from an excel file
press_calibr <- read_excel(path = "data/pressure-calibration.xlsx", sheet = "long form")

# examine the data frame
print(class(press_calibr))
glimpse(press_calibr)

# write the data frame to a CSV file
write_csv(press_calibr, "data/pressure-calibration.csv")

# clear the workspace and read the CSV file
rm(list = (ls()))
press_calibr <- read_csv("data/pressure-calibration.csv")


# check the workspace
print(ls())

# examine the data frame
print(class(press_calibr))
glimpse(press_calibr)

# look at the first 10 rows
print(head(press_calibr, n = 10L))

# look at the last 10 rows
print(tail(press_calibr, n = 10L))

# plot the calibration data in a scatterplot
f1 <- ggplot(data = press_calibr,
		aes(x = inputPSI, y = readingPSI)) +
	geom_point()
print(f1)

# add a linear regression
f2 <- f1 +
	geom_smooth(method = lm)
print(f2)

# omit the confidence interval
f3 <- f1 +
	geom_smooth(method = lm, se = FALSE)
print(f3)

# read wide-form, convert to long form
# read data from an excel file
wide_data <- read_excel(path = "data/pressure-calibration.xlsx", sheet = "wide form")
glimpse(wide_data)

# read it again, skip row 1, names in row 2, data starts in row 3
wide_data <- read_excel(path = "data/pressure-calibration.xlsx", sheet = "wide form", skip = 1)
glimpse(wide_data)

# convert wide form to long form
long_data <- wide_data %>%
	gather(cycle, readingPSI, cycle1:cycle6)

# check
glimpse(long_data)
print(head(long_data, n = 10L))
print(tail(long_data, n = 15L))

# omit the NA rows (no readings taken)
long_data <- long_data %>%
	filter(!is.na(readingPSI))

# check
glimpse(long_data)
print(head(long_data, n = 10L))
print(tail(long_data, n = 15L))

# after converting to long form, save the file for later use
write_csv(long_data, "data/pressure-calibration-2.csv")

# plot long data we just created
f4 <- ggplot(data = long_data,
		aes(x = inputPSI, y = readingPSI)) +
	geom_point() +
	geom_smooth(method = lm, se = FALSE)
print(f4)

# accessing data in R
data()

# several data sets you will see used in R examples
glimpse(mtcars)
print(?mtcars)

glimpse(iris)
print(?iris)

glimpse(Titanic)
print(?Titanic)

glimpse(starwars)
print(?starwars)

glimpse(economics)
print(?economics)

glimpse(population)
print(?population)

# someone put some data from 538 in a package
print(?fivethirtyeight)

# check out one 538 data set
data(fandango)
glimpse(fandango)
print(?fandango)

