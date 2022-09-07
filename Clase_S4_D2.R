# AMANDA
# SEMANA 4
# 31/08/2022

Entrevista <- read.csv("Datos/Encuesta_codificada.csv", header = T)

Entrevista$Entrev <- as.factor(Entrevista$Entrev)
levels(Entrevista$Entrev)

Entrevista$Carrera <- as.factor(Entrevista$Carrera)
levels(Entrevista$Carrera)

Entrevista$Genero <- as.factor(Entrevista$Genero)
levels(Entrevista$Genero)

# Función para transformar carácteres a fechas

library(lubridate)
Entrevista$Fecha <- as.Date(Entrevista$Fecha)

Entrevista$oi_2a <- as.factor(Entrevista$oi_2a)
levels(Entrevista$oi_2a)

Entrevista$oi_4a <- as.factor(Entrevista$oi_4a)
levels(Entrevista$oi_4a)
