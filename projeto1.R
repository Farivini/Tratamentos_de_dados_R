


library(tidyquant)

apple <- tq_get("AAPL", get = "stock.prices") #PEGANDO PRE�OS DA A��ES

plot(apple$date, apple$adjusted, type = "l") #PLOTANDO O GRAFICO


summary(apple)

data.frame(apple)

