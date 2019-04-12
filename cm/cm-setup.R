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

# functions borrowed from helfRlein
checkfile <- function(path, recursive = TRUE, ...) {
  # check if dir exists, if not, create it
  if (!file.exists(path)) {
    file.create(path = path, recursive = recursive, ...)
  }
}

initialize_R_script <- function(lesson_file) {
  checkfile(lesson_file)
  x <- c(
      "# Richard Layton",
      paste("#", lubridate::today()),
      "",
      "# load packages",
      'library("tidyverse")'
  )
  write_lines(x, lesson_file, na = "NA", append = FALSE)
}
add_lines <- function(new_lines, lesson_file) {
  write_lines(new_lines, lesson_file, sep = "\n", na = "NA", append = TRUE)
}
