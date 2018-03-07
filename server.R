# server.R
library('rsconnect')
library('shiny')
library('ggplot2')

source('scripts/data_processing.R')


server <- function(input, output) {
  output$bar <- renderPlot({
    selected_data <- reactive_data()
    ggplot(#name of the generated table,
            aes(#insert correct: x = , y = ) +
            geom_bar(state = 'identity') +
            coord_flip() +
            xlab('Ratio of Degrees Given') +
            ggtitle('Percentages of Different Degrees Given')
            )
    
  })
  
  
  
  
  
  
  
})


test <- table(mtcars$gear)