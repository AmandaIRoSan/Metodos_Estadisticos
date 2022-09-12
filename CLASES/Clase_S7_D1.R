# AMANDA
# SEMANA 7
# 12/09/2022


Entrevista <- read.csv("Datos/Encuesta_codificada.csv", header = T)

# ¿Fue tu promera opción la FCF?
op <- table(Entrevista$oi_2)
op
prop.table(op)*100
pie(prop.table(op)*100)

# ¿Presentaste en otra facultad?
of <- table(Entrevista$oi_2a)
of
prop.table(of)*100
pie(prop.table(of)*100)

# ¿Estuviste inscrito en otra facultad?
fac <- table(Entrevista$oi_4)
fac
prop.table(fac)*100
pie(prop.table(fac)*100)

# Convivencia entre alumnos
c.alum <- table(Entrevista$ef_1)
c.alum
prop.table(c.alum)*100
pie(prop.table(c.alum)*100)

# Instalaciones de la facultad
insf <- table(Entrevista$ins_1)
insf
prop.table(insf)*100
pie(prop.table(insf)*100)

# ¿Conoces la malla curricular de tu carrera?
mcu <- table(Entrevista$ap_1)
mcu
prop.table(mcu)*100
pie(prop.table(mcu)*100)

# ¿Entregas tareas a tiempo?
tarea <- table(Entrevista$ap_2)
tarea
prop.table(tarea)*100
pie(prop.table(tarea)*100)

# ¿Estás concentrado durante las clases?
clase <- table(Entrevista$ap_3)
clase
prop.table(clase)*100
pie(prop.table(clase)*100)
