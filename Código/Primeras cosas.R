library(readxl)
library(corrplot)

data <- read_excel("C:/Users/Usuario/Desktop/2020-2/LET Estadística/Informe/Informe/Datos/Casas.xlsx")
X1 <- data$`X1 transaction date` # transaction date
X2 <- data$`X2 house age` # house age
X3 <- data$`X3 distance to the nearest MRT station` # distance to the nearest MRT station
X4 <- data$`X4 number of convenience stores` # number of convenience stores
X5 <- data$`X5 latitude` # latitude
X6 <- data$`X6 longitude` # longitude
Y <- data$`Y house price of unit area` # house price of unit area

casas <- data.frame(X1,X2,X3,X4,X5,X6,Y) # Cambio nombres a variables

corrplot(cor(casas))

plot(Y ~ X3, pch = 19, col = "darkblue", main = "Distancia a metro vs Precio",
     xlab = "Distancia a metro", ylab = "Precio")
abline(lm(Y ~ X3), col = "darkred", lwd = 2)
legend("topright", legend=c("Regresión lineal"),
       col=c("darkred"), lty=1:2, cex=0.8)
