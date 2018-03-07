install.packages('dplyr')
library('dplyr')
scorecard_dataset <- read.csv(file = 'data/Most-Recent-Cohorts-Scorecard-Elements.csv')
treasury_dataset <- read.csv(file = 'data/Most-Recent-Cohorts-Treasury-Elements.csv')

#Join the two datasets, filter for only the columns we need
final_dataset <- left_join(scorecard_dataset, treasury_dataset) %>%
  filter(CURROPER == 1) %>% #only list schools that are currently operating
  select(UNITID, STABBR, MEDIAN_HH_INC, PCIP11, PCIP13, PCIP14, PCIP24, PCIP52, MN_EARN_WNE_P10)

#Rename columns headers
new_col_names <- c('UnitID', 'State', 'Median_HH_Income', 'Computer_and_Information_Sciences', 
                  'Education', 'Engineering', 'Humanities', 'Business', 'Mean_Student_Earnings')
names(final_dataset) <- new_col_names
  
#Takes in user-entered state code (unspecified capitalization) and retrieves the top 5 schools with
#highest median hh income and mean student earnings.
topFiveIncome <- function(user_state) {
  user_state <- toupper(user_state)
  top_5_income <- final_dataset %>%
    filter(State == user_state) %>%
    select(Median_HH_Income) %>%
    arrange(Median_HH_Income) %>%
    head(5)
  return(top_5_income)
}

topFiveEarnings <- function(user_state) {
  user_state <- toupper(user_state)
  top_5_earnings <- final_dataset %>%
    filter(State == user_state) %>%
    select(Mean_Student_Earnings) %>%
    arrange(Mean_Student_Earnings) %>%
    head(5)
  return(top_5_earnings)
}

#Takes in user-entered school name (unspecified capitalization) and retrieves information for the percent
#of degrees awarded.
percentDegreesAwarded <- function(user_entered_school) {
  user_entered_school <- 
    
}
  