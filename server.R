# server.R
install.packages('ggplot2')
library(ggplot2)

function(input, output) {
  
  
  
  
  
  
  
  
}






source(./scripts/data_processing.R)

ree <- topFiveIncome(state1)

gee <- ggplot(ree, aes(x = "School_Name", y = "Median_HH_Income")) + geom_bar(stat = "identity") + 
  labs(title = "Top 5 Schools by Median Income in" + state1)