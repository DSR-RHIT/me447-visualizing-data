

# input R packages, settings, and themes
source("common/RPackages.R")
source("common/DefineColors.R")
source("common/LatticePrintTheme.R")

# Graphs and cache settings 
opts_chunk$set(fig.path="../visuals/me497-")
opts_chunk$set(cache.path="reports/cache/", cache=FALSE)
opts_chunk$set(dev="pdf")

#-----R output in the report
#knit_theme$set("acid")
opts_chunk$set(highlight=TRUE, size="small", comment="##", tidy=FALSE)
#opts_chunk$set(background="white")
opts_chunk$set(fig.align="center")
options(width=110)

