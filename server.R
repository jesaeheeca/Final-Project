# server.R

library('rsconnect')
library('shiny')
library('ggplot2')

source('scripts/data_processing.R')


server <- function(input, output) {


  ree <- reactive({
    return(topFiveIncome(input$state1))
  })
    
  output$bar <- renderPlot(
    return(ggplot(ree(), aes(x=School_Name, y=Median_HH_Income)) + geom_bar(stat='identity') +
            coord_flip() + xlab('Ratio of Degrees Given') + ggtitle('Percentages of Different Degrees Given') + 
            labs(title = paste("Top 5 Schools by Median Income in", toupper(input$state1), sep=" "))
    )
  )  
}