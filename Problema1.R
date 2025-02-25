#Codigo para problema 1
#coeficiente de determinaciones multiple R-squared
Rsq <- 0.1923
cor <- sqrt(Rsq) #correlacion

m <- 0.06576 #mirando los datos, ahi esta en los beneficios en x
b <- 11.7957 #igual que m, está en los datos del enunciado

prediccion_apartado_d <- m*647.1+b


## CARGAR DATOS DE FICHEROS DE TEXTO
data <- read.delim("air.txt", dec=",", sep="\t")
data

data <- read.table("air.txt", dec=",", header=TRUE, sep=" ")
data
head(data)

data$Wind
