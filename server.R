# server.R

library('rsconnect')
library('shiny')
library('ggplot2')

source('scripts/data_processing.R')


server <- function(input, output) {
<<<<<<< HEAD
=======
  output$bar <- renderPlot({
    ggplot(#name of the generated table,
            aes(#insert correct: x = , y = ) +
            geom_bar(stat = 'identity') +
            geom_text(aes(label = len), vjust = 1.6, color = 'white', size = 3.5) +
            scale_fill_grey() +
            coord_flip() +
            xlab('Ratio of Degrees Given') +
            ggtitle('Percentages of Different Degrees Given')
            )
>>>>>>> 1a5763bdbf4d2efe4640c723b1304706bc4c7738
    
  ree <- topFiveIncome(input$state1)  
    
  output$bar <- renderPlot(
    return(ggplot(ree, aes(x = 'School_Name', y = 'Median_HH_Income')) + geom_bar(stat = 'identity') +
            coord_flip() + xlab('Ratio of Degrees Given') + ggtitle('Percentages of Different Degrees Given') +
            labs(title = "Top 5 Schools by Median Income in" + state1)
    )
    
  )  
}