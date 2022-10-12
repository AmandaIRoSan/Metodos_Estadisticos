# AMANDA
# 12/10/2022
# EXAMEN


# EJERCICIO 1 -------------------------------------------------------------

NS <- read.csv("CLASES/HW09.csv")
NS$Tipo.de.suelo <- as.factor(NS$Tipo.de.suelo)

boxplot(NS$nematodos ~ NS$Tipo.de.suelo,
        xlab = "Tipo se suelos",
        ylab = "Número de nematodos",
        col = "lightblue")
# se observan diferencias en la varianza y promedios

# FUNCIÓN TAPPLY
library(repmis)
tapply(NS$nematodos, NS$Tipo.de.suelo, var)
# La varianza más alta es del S1(571.7) y la menor es del S5(90.8)
571.7-90.8
571.7/90.8
# La diferencia entre ambos es de 480.9 y las veces de diferencia entre ambas es de 6.296256

# TEST F (ANOVA)
tapply(NS$nematodos, NS$Tipo.de.suelo, mean)
 bartlett.test(NS$nematodos, NS$Tipo.de.suelo)
# H1 <- Las varianzas no son Homogeneas
# H0 <- Las varianzas son Homogeneas
 
shapiro.test(NS$nematodos)
hist(NS$nematodos)

library(dplyr)
S1 <- NS %>%
  filter(Tipo.de.suelo == "S1")
S2 <- NS %>%
  filter(Tipo.de.suelo == "S2")
S3 <- NS %>%
  filter(Tipo.de.suelo == "S3")
S4 <- NS %>%
  filter(Tipo.de.suelo == "S4")
S5 <- NS %>%
  filter(Tipo.de.suelo == "S5")

shapiro.test(S1$nematodos)
shapiro.test(S2$nematodos)
shapiro.test(S3$nematodos)
shapiro.test(S4$nematodos)
shapiro.test(S5$nematodos)

aov(NS$nematodos ~ NS$Tipo.de.suelo)
nm.aov <- aov(NS$nematodos ~ NS$Tipo.de.suelo)
summary(nm.aov)
# DF = 4
# DfR = 20
# F value = 9.287
# p-value = 0.5444

# existen diferencias por lo que se procede a realizar la prueba de Tukey
TukeyHSD(nm.aov)
plot(TukeyHSD(nm.aov))

# Esto se vio en la clase del lunes 10 de octubre, y no vine