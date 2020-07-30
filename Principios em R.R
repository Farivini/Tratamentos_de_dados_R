
#Instalar Pacotes
install.packages('gglplot2')

#Carregar o pacote
library(ggplot2)


# atalho para rodar o código: control+enter

# duas maneiras principais para selecionar o diretório do arquivos:

# 1. comando setwd, choose.dir
setwd(choose.dir())

# para visualizar todos os arquivos dentro da pasta
dir()

# mostrar o diretório de trabalho
getwd()

# 2. comando setwd
# deve-se colocar o local entre aspas
# as barras direcionadas para a direita

setwd('caminho da pasta')
getwd()

# para ler a planilha com os dados, arquivo no formato csv: read.csv
# declarar, no final, o tipo do arquivo


#dados em formato csv
dados = read.csv("dados_aula2.csv", sep = ";", dec = ",")
dados

#dados em formato txt
read.table()

# dados em formato xlsx
install.packages("openxlsx")
library(openxlsx)
dados_xls = read.xlsx("dados_aula2.xlsx")

plot(dados$valores,dados$dados, type="l")


# explorar os dados
str(dados)
summary(dados)

#número de colunas
length(dados)

# selecionar colunas no data.frame 
dados$valores
summary(dados$valores)





# Seq ()
seq(10)

seq(from = -2, to = 10, by = 2)

especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
seq(along.with = especie) 

# rep ()

rep(x = 1:4, each = 2) 

# como identifcar os vetores
class(y)
is.numeric(y)

# função scan
scan()



# factor

tratamentos <- c("tratamento1", "tratamento1", "tratamento2", "tratamento2", "tratamento2")
print(tratamentos)
class(tratamentos)

fator_tratamento <- factor(tratamentos)
print(fator_tratamento)


# elementos especiais
notas <- c(5.6, 6.7, NA, 8.9, 2.3, 5.6, 7.8, 8.9, 6.1, NA)
print(notas)
is.na(notas)


# Cria objetos-vetores
especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
altura <- c(8.4, 8.7, 9.1, 13.2, 15.4)

matriz_1 <- rbind(diametro,altura)
matriz_1 <- cbind(diametro,altura)

rownames(matriz_1) <- c("L1","L2", "L3", "L4", "L5") 
colnames(matriz_1) = c("")


matrix(scan(), nrow=3, ncol=2)

# 2. Listas

# lista sem atribuir nomes aos os objetos
especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
altura <- c(8.4, 8.7, 9.1, 13.2, 15.4)

lista.1 <- list(especie, diametro, altura)
print(lista.1)


list.4 <- list(Especie = especie, Diametro = diametro)
list.5 <- list(Altura = altura, Cortar = cortar)
list.6 <- c(list.4, list.5)

as.data.frame(list.6)

# 3. Matrizes
especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
altura <- c(8.4, 8.7, 9.1, 13.2, 15.4)

mat.1<-rbind(diametro, altura)
mat.1

mat.5 <- matrix(1:6, nrow=2, ncol=3) 
mat.5

rownames(mat.5) <- c("L1","L2")
colnames(mat.5) <- c("a","b","c")
print(mat.5)

# data frame
especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
altura <- c(8.4, 8.7, 9.1, 13.2, 15.4)
cortar <- c("Não", "Não", "Não", "Não", "Sim")

invFlor.1 <- data.frame(especie, diametro, altura, cortar, stringsAsFactors = FALSE)


str(invFlor.1)
dim(invFlor.1)


# função edit () para criar data frame
edit()
edit(data.frame())

# funcao edit () para editar data frame já existente
edit(invFlor.1)
edit(dados)

# 4.Indexação
especie <- c("Acapu", "Aracaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)

especie[2] <- "Araucaria"

# which

alfa <- LETTERS
Especie <- c(NA, "Araucaria", "Mogno", "Cedro", "Ipe",
             "Tauari", "Jatoba", "Araucaria", "Acapu", NA)
Diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1,
              65.8, 79.6, 45.2, 50.0, 89.8)

which(Diametro >= 50 | Diametro < 25)

#scan

y <- scan()


# Indexação de data frame
invFlor.2 <- data.frame(
  especie = c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe"), 
  diametro = c(23.0, 27.0, 33.6, 42.6, 52.1),
  altura = c(8.4, 8.7, 9.1, 13.2, 15.4),
  cortar = c("Não", "Não", "Não", "Não", "Sim"),
  stringsAsFactors = TRUE)

invFlor.2

invFlor.2[2,1]

protegida <-  c("Sim", "Sim", "Sim", "Não", "Não")

invFlor.2$protegida <- protegida

attach(invFlor.2)
invFlor.2$altura
detach(invFlor.2)

############################################################################################


# Subset ()
data("iris")

head(iris)

tail(iris)

str(iris)

dim(iris)

protegida <- split(invFlor.2,invFlor.2$protegida)

protegida_n <- protegida[["Não"]] 

protegida_s <- protegida[["Sim"]]
