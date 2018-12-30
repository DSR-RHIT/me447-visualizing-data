suppressPackageStartupMessages(library("tidyverse"))
suppressPackageStartupMessages(library("graphclassmate"))
suppressPackageStartupMessages(library("knitr"))

# knitr options for all cm files
opts_knit$set(root.dir = "../")
opts_chunk$set(
	collapse  = TRUE,
	comment   = "#>",
	message   = FALSE,
	warning   = FALSE,
	fig.width = 8,
	fig.asp   = 1/2,
	out.width = "70%",
	fig.keep = "high"
)
