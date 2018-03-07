# server.R
library('rsconnect')
library('shiny')
library('ggplot2')

source('scripts/data_processing.R')


server <- function(input, output) {
  output$bar <- renderPlot({
    ggplot(#name of the generated table,
            aes(#insert correct: x = , y = ) +
            geom_bar(stat = 'identity') +
            geom_text(aes(label = len), vjust = 1.6, color = 'white', size = 3.5) +
            coord_flip() +
            xlab('Ratio of Degrees Given') +
            ggtitle('Percentages of Different Degrees Given')
            )
    
  })
  
  
  
  
  
  
  
})


test <- table(mtcars$gear)