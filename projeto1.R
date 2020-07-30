


library(tidyquant)

apple <- tq_get("AAPL", get = "stock.prices") #PEGANDO PREÇOS DA AÇÕES

plot(apple$date, apple$adjusted, type = "l") #PLOTANDO O GRAFICO


summary(apple)

data.frame(apple)

