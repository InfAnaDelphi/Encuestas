#Se coloca en el directorio donde se encuentra la carpeta sincronizada de Github
setwd("C:/Users/rchan/Documents/Encuestas/Encuestas")

#Carga el paquete a usar
library(samplesize4surveys)
library(data.table)
library(TeachingSampling)

#Lectura del archivo de presupuestos
ppto<-read.csv("Presupuesto2016.csv",header = TRUE,stringsAsFactors = FALSE)
#Convertir a data table
ppto<-data.table(ppto)

#Presupuesto por mes por locacion
tbppto<-xtabs(Presupuesto~Mes+Delfinario,ppto)

N_h<-tbppto[8:12,]
