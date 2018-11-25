# package
library(rmarkdown)

# identify the path to the directory we want
path_to_Rmds <- c("../", "reports")

# find all files that end in .md
md_scripts <- list.files(
  path = path_to_Rmds
  , pattern = "\\.md$"
  , full.names = TRUE
)

# delete the md files prior to re-rendering them 
sapply(md_scripts, function(x) unlink(x))

# find all files that end in .Rmd
Rmd_scripts <- list.files(
  path = path_to_Rmds
  , pattern = "\\.Rmd$"
  , full.names = TRUE
)

# render each script
sapply(Rmd_scripts, function(x) render(x))

# delete html by products
unlink("reports/*.html")

# render the README
render("README.Rmd")
unlink("README.html")
