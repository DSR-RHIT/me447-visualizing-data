suppressPackageStartupMessages(library("tidyverse"))
suppressPackageStartupMessages(library("graphclassmate"))
suppressPackageStartupMessages(library("knitr"))

# knitr options for all cm files
opts_knit$set(root.dir = "../")
opts_chunk$set(
	comment   = "#>",
	collapse  = FALSE,
	message   = FALSE,
	warning   = FALSE
)

set_fig_dim <- function(fig.width, fig.height) {
  fig.asp   <- fig.height / fig.width
  out.width <- str_c(11.25 * fig.width, "%")
  opts_chunk$set(fig.width = fig.width, fig.asp = fig.asp, out.width = out.width)
}

# for writing about code chunks
chunk  <- "```"
yaml   <- "---"
inline <- function(x = "") paste0("`` `r ", x, "` ``")
inline_yaml <- function(x = "") paste0("`r ", x, "`")
