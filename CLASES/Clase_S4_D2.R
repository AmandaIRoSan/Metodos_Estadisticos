# AMANDA
# SEMANA 4
# 31/08/2022

Entrevista <- read.csv("Datos/Encuesta_codificada.csv", header = T)
Entrevista$Entrev <- as.factor(Entrevista$Entrev)
Entrevista$oi_2a <- as.factor(Entrevista$oi_2a)
Entrevista$oi_4a <- as.factor(Entrevista$oi_4a)
Entrevista$Carrera <- as.factor(Entrevista$Carrera)
