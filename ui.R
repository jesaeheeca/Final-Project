# ui.R
library(shiny)

fluidPage(
  navbarPage("College Information Visualizations",
             theme = 'bootstrap.css',
             tabPanel('Median Household Income',
                      titlePanel('Schools with Top 5 Median Household Income by State'),
                      
                      sidebarLayout(
                        sidebarPanel(
                          textInput("state1", label = h3("Which 5 schools have the highest median household income in the given state?"),
                                    value = "Enter a state abbreviation here...")
                        ),
                        
                        # Render the bar plot
                        mainPanel(plotOutput("bar")
                        )
                      )
             ),
             tabPanel('Mean Student Earnings',
                      titlePanel('Schools with Top 5 Mean Student Earnings by State'),
                      
                      sidebarLayout(
                        sidebarPanel(
                          textInput("state2", label = h3("Which 5 schools have highest mean earnings of independent students working 
                            and not enrolled 10 years after entry in the given state?"), 
                                    value = "Enter a state abbreviation here...")
                        ),
                        
                        # Render the bar plot
                        mainPanel(plotOutput("bar2")
                        )
                      )
             ),
             
             tabPanel('Degree Percentages',
                      titlePanel('Percent of Different Degrees Awarded'),
                      
                      sidebarLayout(
                        sidebarPanel(
                          textInput("school", label = h3("What percent of degrees are awarded in the given school?"))
                          ),
                        
                        # Render the bar plot
                        mainPanel(plotOutput("bar3")
                        )
                     )
             )
)
)
