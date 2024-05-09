
library(readxl)
datos <- read_xlsx("Datos/online_retail_II.xlsx")
head(datos)
datos

# 6.	Haz un análisis básico de la información contenida en el fichero
str(datos)
summary(datos)
mean(datos$Price)


#7.	Calcula cuántos pedidos distintos hay en el fichero
nrow(datos)



















