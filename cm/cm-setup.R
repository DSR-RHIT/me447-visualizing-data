suppressPackageStartupMessages(library("tidyverse"))
library("graphclassmate")
library("knitr")
library("here")

# knitr options for all cm files
opts_knit$set(root.dir = "../")
opts_chunk$set(
	collapse  = TRUE,
	comment   = "#>",
	message   = FALSE,
	warning   = FALSE,
	fig.width = 7,
	fig.asp   = 1 / 1.6,
	out.width = "70%",
	fig.keep = "high"
)
