library("knitr")
opts_knit$set(root.dir = "../")
opts_chunk$set(
	# these options tend to vary from one Rmd to another
	echo      = TRUE,

	# these options tend to remain constant
	collapse  = TRUE,
	comment   = "#>",
	message   = FALSE,
	warning   = FALSE,
	fig.width = 7,
	fig.asp   = 1 / 1.6,
	out.width = "70%"
)
