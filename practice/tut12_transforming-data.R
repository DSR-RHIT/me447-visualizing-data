# transforming data practice

library(tidyverse)
library(readxl)

# data
df <- read_excel('data/lotr-words-spoken.xlsx')

# tidy
df <- df %>%
	gather(sex, N, female:male)

# group by race and sex
this_group  <- group_by(df, race, sex)
race_sex_df <- summarize(this_group, words_spoken = sum(N)) %>%
	arrange(desc(words_spoken))

print(race_sex_df)
