#  ------------------------------------------
#  start learning ggplot2 using a scatterplot
#
#  Richard Layton
#  2017-08-29
#  ------------------------------------------

# if you like to start with an empty workspace
rm(list = (ls()))

# to access the functionality of the ggplot2 package
library(ggplot2)

# create objects to be assembled in a data frame
time_sec <- seq(0, 2*pi, by = pi/50) # sec
freq     <- 2                        # r/s
displ_mm <- sin(freq * time_sec)     # mm

# ggplot2 requires data in data frame form
vibr_data <- data.frame(time_sec, displ_mm)

# examine the data frame structure
str(vibr_data)

# control significant digits in printout
options(digits = 3)

# examine the data frame structure
head(vibr_data)

# the final graph, all elements chained together
f1 <- ggplot(data = vibr_data, aes(x = time_sec, y = displ_mm)) +
	geom_point(shape = 21
		, color = "slateblue4"
		, fill  = "slateblue1"
		, size  = 3
		) +
	xlab("Time (sec)") +
	ylab("Position (mm)") +
	ggtitle("Scatterplot") +
	scale_y_continuous(limits = c(-2, 2), breaks = seq(-2, 2, 1)) +
	theme_light() +
	theme(plot.title = element_text(size = rel(0.9), face = "plain")
		, axis.title = element_text(size = rel(0.9), face = "plain")
		, axis.text = element_text(size = rel(0.9), face = "plain")
	)

print(f1)


