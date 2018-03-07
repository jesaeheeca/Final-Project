# server.R

library('rsconnect')
library('shiny')
library('ggplot2')

source('scripts/data_processing.R')


server <- function(input, output) {
  ree <- reactive({
    return(topFiveIncome(input$state1))
  })
  
  ree2 <- reactive({
    return(topFiveEarnings(input$state2))
  })
  
  ree3 <- reactive({
    return(percentDegreesAwarded(input$school))
  })
    
  output$bar <- renderPlot(
    return(ggplot(ree(), aes(x=School_Name, y=Median_HH_Income, fill=School_Name)) + 
            geom_bar(stat='identity') + coord_flip() + xlab('School') + ylab('Median Household Income')  + 
            labs(title = paste("Top 5 Schools by Median Household Income in", toupper(input$state1), sep=" "))
    )
  )  
  
  output$bar2 <- renderPlot(
    return(ggplot(ree2(), aes(x=School_Name, y=Mean_Student_Earnings, fill=School_Name)) + 
             geom_bar(stat='identity') + coord_flip() + xlab('School') + ylab('Median Post-Graduate Income') + 
             labs(title = paste("Top 5 Schools by Median Post-Graduate Income in", toupper(input$state2), sep=" "))
    )
  )
  
  output$bar3 <- renderPlot(
    return(ggplot(ree3(), aes(x=degrees, y=ratios, fill=ratios)) +
             geom_bar(stat='identity') + coord_flip() + xlab('Ratio of Students') + ylab('Type of Degree') +
             labs(title = paste("Ratio of Students by Type of Degree in", input$school, sep=" "))
    )
  )
}