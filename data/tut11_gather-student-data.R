#------------------------------------------------------------------ 
#
#   Gather 4th-year majors data
# 
#   Data source: Layton, R.A., Lord, S.M., & Ohland, M.W. (2009, Jun) 
#   Reasoning about categorical data: Multiway plots as useful research 
#   tools, in proc ASEE Annual Conf, Austin.
#
#   Input data in wide form, reshape to long form, 
#   replace abbreviations with full terms for readability, 
#   save as CSV data file to be read by a design file. 
# 
#   Richard Layton
#   2013-12-17
# 
#------------------------------------------------------------------ 

# first, install reshape 2 and plyr packages

# packages
library(lattice)  
library(reshape2)  # for melting wide to long format
library(plyr)      # for re-valuing levels of a factor variable

# housekeeping
rm (list = ls())

# read the data, assign to data frame
# this time the data are a txt file separated by spaces
df1 = read.table(file = "Data/FourthYearMajors.txt", header = TRUE)

# examine the original data frame
str(df1)

# reshape the data from wide to long format
# "id": keep this variable and repeat copy/paste the values as many times as needed
df2 = reshape2::melt(df1
                     , id = "Major8"
                     )

# examine the new long-format data frame
print(head(df2))

# try reshape again, and add new column names
df2 = reshape2::melt(df1
                     , id = "Major8"
                     , variable.name = "RaceGender"
                     , value.name    = "Nstudents"
                     )

# compare df1 (wide) to df2 (long)
print(head(df1, n =  8))
print(head(df2, n = 16))

# relabel factor levels of the race-gender column
df2$RaceGender = plyr::revalue(df2$RaceGender
                               , c(      "AsianFem" = "Asian Female"
                                       , "AsianMle" = "Asian Male"
                                       , "BlackFem" = "Black Female"
                                       , "BlackMle" = "Black Male"
                                       , "HispFem"  = "Hispanic Female"
                                       , "HispMle"  = "Hispanic Male"                               
                                       , "NatAmFem" = "NatAm Female"
                                       , "NatAmMle" = "NatAm Male"
                                       , "WhiteFem" = "White Female"
                                       , "WhiteMle" = "White Male"
                                       )
                               )

# relabel factor levels of the major-8 column
df2$Major8 = plyr::revalue(df2$Major8
                           , c(      "AH"       = "Arts & Humanities"
                                   , "Bus"      = "Business"
                                   , "CS"       = "Computer Science"
                                   , "Engr"     = "Engineering"
                                   , "o-NonSTM" = "Other Non-STM"
                                   , "o-STM"    = "Other STM"                               
                                   , "SocSci"   = "Social Sciences"
                                   )
                           )

# examine df2
print(head(df2, n=16))

# write the data to file
write.table(df2, "Data/FourthYearMajorsLong.csv", sep=",", row.names = FALSE)

# last line
