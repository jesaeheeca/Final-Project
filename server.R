# server.R
install.packages('shiny')
install.packages('ggplot2')
library('shiny')
library('ggplot2')



percentawarded <- function(input, output) {
  
  
  
  
  
  
  
  
  ggplot(data, aes(x = "", y = Num_Sightings)) + geom_bar(stat = "identity") + labs(title = "Frequency of Sightings by Season")
}