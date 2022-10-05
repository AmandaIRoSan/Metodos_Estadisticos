# AMANDA
# SEMANA 9
# 05/10/2022

# ANALISIS DE VARIANZA DE TRES MUESTRAS **ANOVA** <- MINIMO DE TRES MUESTRAS DIFERENTES
# NORMALIDAD DE DATOS <- (shapiro.test), HOMOGENIEDAD DE VARIANZAS <- (barlett.test)

library(repmis)

paraje <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")

# tapply <- función sin necesidad de separar datos

tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, median)
tapply(paraje$DAP, paraje$Paraje, sd)
tapply(paraje$DAP, paraje$Paraje, var)
tapply(paraje$DAP, paraje$Paraje, length)

boxplot(paraje$DAP ~ paraje$Paraje, col="lightblue")

shapiro.test(paraje$DAP)
shapiro.test(tapply(paraje$DAP, paraje$Paraje))

library(dplyr)
chinatu <- paraje %>%
  filter(Paraje=="Chinatu")
shapiro.test(chinatu$DAP)
hist(chinatu$DAP)
