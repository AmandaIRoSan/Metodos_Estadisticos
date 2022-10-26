# AMANDA
# 26/10/2022
# EXAMEN II: ANÁLISIS DE VARIANZA

data(InsectSprays)
head(InsectSprays)

# EJERCICIO 1 -------------------------------------------------------------

# 1.- ¿Cuántos tipos de insecticida tiene el exprimento?
#  RESPUESTA: 6 tipos

# 2.- ¿Cuántas observaciones tiene cada tipo de insecticida?
#  RESPUESTA: 12 observaciones por muestra

# 3.- ¿Cuántos datos (n) tiene el experimento?
#  RESPUESTA: Hay dos variables, con 6 tipos de insecticidas, 12 observaciones por muestra, dando un total de 72 observaciones.


boxplot(InsectSprays$count ~ InsectSprays$spray,
        xlab = "Tipo de Insecticida",
        ylab = "Conteo",
        col = "lightgreen")


# EJERCICIO 2 -------------------------------------------------------------

# 4.- ¿Qué sugiere la gráfica sobre la relación entre el conteo de insectos y el insecticida usado?
#  RESPUESTA: que se uso el insecticida y el conteo de insectos son los que se hallaron muertos.

# 5.- ¿Crees que hay diferencias entre los sprays? Si es así,
#  RESPUESTA: sí

# 6.- ¿Dónde crees que están las diferencias?
#  RESPUESTA: Por el número encontrado de insectos muertos y la variabilidad es muy amplia en algunos tipos de insecticidas.

# 7.- ¿Cuáles insecticidas presentan outliers?
#  RESPUESTA:  c y d

# 8.- ¿Cuál insecticida parece ser el más efectivo?
#  RESPUESTA: el F

# Aplique la función tapply para determinar lo siguiente

library(repmis)
tapply(InsectSprays$count, InsectSprays$spray, mean)
tapply(InsectSprays$count, InsectSprays$spray, var)

# 9.- ¿Cuál es las media de cada insecticida?
#  RESPUESTA: A=14.50, B=15.33, C=2.083, D=4.916667, E=3.50, F=16.666667 

# 10.- ¿Cuál es la varianza de cada insectida?
#  RESPUESTA: A=22.272727, B=18.242424, C=3.901515, D=6.265152, E=3.00, F=38.606061

# 11.- ¿Cuál insecticida presenta mayor variación?
#  RESPUESTA: F

# 12.- ¿Cuál insecticida presenta menor variación?
#  RESPUESTA: E

# Realiza una prueba de ANOVA para comparar las medias de los insecticidas.

aov(InsectSprays$count ~ InsectSprays$spray)
nm.aov <- aov(InsectSprays$count ~ InsectSprays$spray)
summary(nm.aov)

# 13.- Establezca la hipótesis nula y alternativa
#  RESPUESTA: H0= No hay diferencia entre las varianzas
# H1= Hay diferencia entre las varianzas

# 14.- ¿Cuántos grados de libertad tiene el tratamiento?
#  RESPUESTA: 5

# 15.- ¿Cuántos grados de libertad tiene el error o residual?
#  RESPUESTA: 66

# 16.- ¿Cuántos son los grados de libertad totales?
#  RESPUESTA: 71

# 17.- ¿Cuál es la suma de cuadrados del tratamiento?
#  RESPUESTA: 2669

# 18.- ¿Cuál es el Valor de F?
#  RESPUESTA: 34.7

# 19.- ¿Cuál es el valor de la probabilidad de F?
#  RESPUESTA: <2e-16

# 20.- Existen diferencias significativas entre los insecticidas, si es así
#  RESPUESTA: si

# 21.- ¿Qué prueba estadística aplicamos para detectar las diferencias significativas?
#  RESPUESTA: prueba de Tukey

# EJERCICIO 3 -------------------------------------------------------------

TukeyHSD(nm.aov)
plot(TukeyHSD(nm.aov))

# 22.- ¿Cuántas comparaciones arroja la comparación del análisis de varianza?
# 23.- Subraya las comparaciones y su valor de p donde si existen diferencias significativas
# 24.- Encierra las comparaciones donde no existen diferencias significativas y su valor de p
# 25.- ¿Cuál insecticida presenta la mejor efectividad?
  





