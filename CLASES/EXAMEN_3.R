# AMANDA
# 30/11/2022
# EXAMEN III: ANALISIS DE VARIANZA


# Ejercicio 1 -------------------------------------------------------------

Nematodos <- read.csv("nematodos_e3.csv")
Nematodos$TipoDeSuelo <- as.factor(Nematodos$TipoDeSuelo)

boxplot(Nematodos$Nematodos ~ Nematodos$TipoDeSuelo,
        xlab = "Tipo se suelos",
        ylab = "Número de nematodos",
        col = "lightblue")
library(repmis)
tapply(Nematodos$Nematodos, Nematodos$TipoDeSuelo, var)

# Varianza más alta es j1=571.7 y la más baja es j5=90.8
571.7-90.8
571.7/90.8
# las veces de diferencia entre ambas es de 6.296256

tapply(Nematodos$Nematodos, Nematodos$TipoDeSuelo, mean)
# el tipo de suelo con la media más alta es j5

aov(Nematodos$Nematodos ~ Nematodos$TipoDeSuelo)
nm.aov <- aov(Nematodos$Nematodos ~ Nematodos$TipoDeSuelo)
summary(nm.aov)

# H0= SI HAY DIFERENCIAS 
# H1= NO HAY DIFERENCIAS
TukeyHSD(nm.aov)
plot(TukeyHSD(nm.aov))

# CONCLUSIÓN: de las 10 pruebas que se hicieron con la prueba de Tukey 7 resultaron con diferencias significativas.
# por lo que el número de nemátodos tiene una amplia relación con el tipo de suelo y tratamiento.


# Ejercicio 2 -------------------------------------------------------------

riego <- read.csv("riego_e3.csv")
riego$Riego <- as.factor(riego$Riego)

boxplot(riego$Crecimiento ~ riego$Riego,
        xlab = "Tipo de riego",
        ylab = "Crecimiento (cm)",
        col = "lightgreen")

library(repmis)
tapply(riego$Crecimiento, riego$Riego, var)

# Varianza más alta es Alto=33.6 y el más bajo Medio=4
33.6-4
33.6/4
# las veces de diferencia entre ambas es de 8.4

tapply(riego$Crecimiento, riego$Riego, mean)
# la media más pequeña es con el riego Bajo


aov(riego$Crecimiento ~ riego$Riego)
nm.aov <- aov(riego$Crecimiento ~ riego$Riego)
summary(nm.aov)

# H0= SI HAY DIFERENCIAS 
# H1= NO HAY DIFERENCIAS
TukeyHSD(nm.aov)
plot(TukeyHSD(nm.aov))

# CONCLUSIÓN: de las tres pruebas realizadas por el método de Tukey no se muetra una diferencia significativa en ninguna comparación.



