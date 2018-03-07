# ui.R
install.packages('shiny')
library(shiny)

fluidPage(
  titlePanel("National College Scorecard Data and Post-School Earnings"),
  
  sidebarLayout(
    sidebarPanel(
      
      textInput("state", label = h3("Which 5 schools have the highest median household income in the given state?"),
                value = "Enter a state abbreviation here..."),
      
      textInput("state", label = h3("Which 5 schools have highest mean earnings of independent students working 
                                    and not enrolled 10 years after entry in the given state?"), 
                value = "Enter a state abbreviation here..."),
      
      textInput("state", label = h3("What percent of degrees are awarded in the given school?"), 
                value = "Enter a school here...")
      
    ),
    
    mainPanel(
      # plot output of bar graphs here
    )
  )  
)