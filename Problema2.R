#Codigo para problema 2
mis_dades <- iris
mean(mis_dades$Sepal.Length) #encontrar la media/promedio
sd(mis_dades$Sepal.Length) #encontrar la desviacion tipica
dim(mis_dades)
names(mis_dades)
hist(mis_dades$Sepal.Length)

x <-mis_dades$Petal.Length
x
y <-mis_dades$Sepal.Length
y

plot(x, y)

m <-sum((x-mean(x))*(y-mean(y)))/sum((x-mean(x))^2)
m
b <-mean(y)-m*mean(x)
b

m*1.5+b #ecuacion de una pendiente, y=mx+b

lm(y~x) #forma rapida de sacar M y B para la formula de una recta con pendiente M
mod <-lm(y~x) # ~ se hace al pulsar ALTGR+4+Espacio
summary(mod)

xpred <- data.frame(x=1.5)
xpred <- data.frame(x=1:7)
xpred <- data.frame(x=x)
xpred
ypred <-predict(mod, xpred)
ypred

plot(x, y)
lines(x, ypred) #si haces RUN a las lineas 34 y 35 te hara la r3egresion lineal por minimos cuadrados con los puntos de dispersion y la linea de prediccion

Rsq <- sum((ypred-mean(y))^2)/sum((y-mean(y))^2)
Rsq

summary(mod)
