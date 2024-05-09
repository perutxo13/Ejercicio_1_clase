
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


# 10.	Calcula el precio medio de producto por pedido
unique(datos$Description)
library(dplyr)
df<-datos %>%
  group_by(Invoice)%>%
  summarise(precio_medio=mean(Price))
df


# 12.	Calcula el número de productos por pedido
datos
df2 <- datos %>%
  group_by(Invoice)%>%
  summarise(cantidad=n())
df2


# 13.	Calcula el precio por pedido
df3<-datos %>%
  group_by(Invoice)%>%
  summarise(precio_total=sum(Price))
df3





