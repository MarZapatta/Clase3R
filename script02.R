#### limpiamos memoria ####
rm(list = ls())
getwd()
# setear directorio de trabajo
#setwd()
dir()

#### cargar la data ####
library(ggplot2)
library(car)
library(help=car)
library(help=carData)
data("Salaries")
str(Salaries)

summary(Salaries)
  
#### primeros pasos con ggplot2 ####
# creacion del grafico: agregar la data y configuramos las variables
ggplot(data = Salaries, aes(x=yrs.service , y= salary ))

# Creemos un diagrama de dispersion 
p <-  ggplot(data = Salaries, aes(x=yrs.service , y= salary ))
class(p)

p + geom_point()
View(Salaries)

#modifiquemos nuestro obejto p (lienzo vacio)

p <-  ggplot(data = Salaries, aes(x=yrs.service , y= salary , fill= sex))

# grafico 1

p + geom_point(shape=25 , size=2.8)

# grafico 2

p + geom_point(aes(shape=sex , col=sex), size=3)

#grafico 3

p + geom_point(aes(shape=sex , col=sex), size=3) + 
  scale_shape_manual(values = c(4,21)) +
  scale_color_manual(values = c("red","#5C7A54"))+
  #theme(legend.position = "left")
  #theme(legend.position = "top")
  #theme(legend.position = "bottom")
  theme(legend.position = c(0.95,0.9))

#datanovia ggplot shaple tips 
#https://www.datanovia.com/en/blog/ggplot-point-shapes-best-tips/
#para saber que figuras elegir
#htmlcolorcodes.com/es/ para los codigos de color
















