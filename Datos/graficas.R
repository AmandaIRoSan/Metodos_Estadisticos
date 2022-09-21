#AMANDA
# GRÁFICAS ENCUESTA ESTUDIANTIL

Entrevista <- read.csv("Datos/Encuesta_codificada.csv", header = T)

Entrevista$Entrev <- as.factor(Entrevista$Entrev)
levels(Entrevista$Entrev)

Entrevista$Carrera <- as.factor(Entrevista$Carrera)
levels(Entrevista$Carrera)

Entrevista$Genero <- as.factor(Entrevista$Genero)
levels(Entrevista$Genero)

# ¿Cuál fu el porcentaje de entrevistados por género?
gen <- table(Entrevista$Genero)
gen
prop.table(gen)*100
pie(prop.table(gen)*100,
    col = c("lightgreen", "violet"))

# ¿Qué equipo entrevistador tuvo más encuestas?
ent <- table(Entrevista$Entrev)
prop.table(ent)*100
pie(prop.table(ent)*100,
    col=palette("Alphabet"))

# ¿Cuál es el porcentaje de alumnos entrevistados por carrera?
car <- table(Entrevista$Carrera)
car
prop.table(car)*100
pie(prop.table(car)*100,
    col = c("lightyellow", "gray"))

# ¿Cuántos alumnos participaron por semetre?
sem <- table(Entrevista$Semestre)
prop.table(sem)*100
pie(prop.table(sem)*100,
    col = palette("Pastel 2"))

# ¿Cuál es el rango de edad de los participantes?
range(Entrevista$Edad)
edad
edad <- table(Entrevista$Edad)
prop.table(edad)*100
pie(prop.table(edad)*100,
    col = palette("Alphabet"))

# ¿Cómo te enteraste de la facultad?
oi_1 <- table(Entrevista$oi_1)
oi_1
prop.table(oi_1)*100
pie(prop.table(oi_1)*100,
    col=palette("Alphabet"))
# col=palette("buscar en internet") / paleta <- c("colores")

# ¿Fue tu primera opción la FCF?
oi_2 <- table(Entrevista$oi_2)
oi_2
prop.table(oi_2)*100
pie(prop.table(oi_2)*100,
    col = palette("set 2"))

# ¿Cuál facultad?
of <- table(Entrevista$oi_2a)
of
prop.table(of)*100
pie(prop.table(of)*100,
    col = palette("Paired"))

# ¿Has presentado el examen para otra facultad?
fac <- table(Entrevista$oi_3)
fac
prop.table(fac)*100
pie(prop.table(fac)*100,
    col = palette("Dark 2"))

# ¿Estuviste inscrito en otra facultad?
ofac <- table(Entrevista$oi_4)
ofac
prop.table(ofac)*100
pie(prop.table(ofac)*100,
    col = palette("R3"))

# ¿Dónde estaba inscrito?
fa <- table(Entrevista$oi_4a)
fa
prop.table(fa)*100
pie(prop.table(fa)*100,
    col = palette("Pastel 2"))

# Convivencia entre alumnos
c.alum <- table(Entrevista$ef_1)
c.alum
prop.table(c.alum)*100
pie(prop.table(c.alum)*100,
    col=palette("Alphabet"))

# Instalaciones de la facultad
insf <- table(Entrevista$ins_1)
insf
prop.table(insf)*100
pie(prop.table(insf)*100,
    col = palette("set 2"))

# ¿Conoces la malla curricular de tu carrera?
mcu <- table(Entrevista$ap_1)
mcu
prop.table(mcu)*100
pie(prop.table(mcu)*100,
    col = palette("Paired"))

# ¿Entregas tareas a tiempo?
tarea <- table(Entrevista$ap_2)
tarea
prop.table(tarea)*100
pie(prop.table(tarea)*100,
    col = palette("R3"))

# ¿Estás concentrado durante las clases?
clase <- table(Entrevista$ap_3)
clase
prop.table(clase)*100
pie(prop.table(clase)*100,
    col = palette("Pastel 2"))
