install.packages('dplyr')
library('dplyr')
scorecard_dataset <- read.csv(file = '~/data/Most-Recent-Cohorts-Scorecard-Elements.csv')
treasury_dataset <- read.csv(file = '~/data/Most-Recent-Cohorts-Treasury-Elements.csv')

#Join the two datasets, filter for only the columns we need
final_dataset <- left_join(scorecard_dataset, treasury_dataset) %>%
  filter(CURROPER == 1) %>% #only list schools that are currently operating
  select(UNITID, STABBR, MEDIAN_HH_INC, PCIP11, PCIP13, PCIP14, PCIP24, PCIP52, MN_EARN_WNE_P10)

#Rename columns headers
final_dataset <- 
  
#Takes in user-entered state code (unspecified capitalization) and retrieves the top 5 schools with
#highest median hh income and mean student earnings.
top5InState <- function() {
  
}

#Takes in user-entered school name (unspecified capitalization) and retrieves information for the percent
#of degrees awarded.
percentDegreesAwarded <- function() {
  
}
  