#Se coloca en el directorio donde se encuentra la carpeta sincronizada de Github
setwd("C:/Users/rchan/Documents/Encuestas/Encuestas")

#Instala la paqueteria necesaria
#install.packages("samplesize4surveys")

#Carga el paquete a usar
library(samplesize4surveys)
library(data.table)
library(TeachingSampling)

#Lectura del archivo de presupuestos
ppto<-read.csv("Presupuesto2016.csv",header = TRUE,stringsAsFactors = FALSE)
#Convertir a data table
ppto<-data.table(ppto)

#Tamaño de muestra por delfinario al año
#total de la poblacion esperada a muestrear
N<-sum(ppto$ppto2017)

#tamaño de muestra para encuestas de satisfaccion
#Proporcion de las personas satisfechas con la interaccion y servicio
n<-((1.96^2)*N*0.5*0.5)/((0.01^2)*(N-1)+(1.96^2)*0.5*0.5)
n<-round(n)
n/N*100

#tamaño de muestra para encuestas internas

#tamaño de muestra para encuestas de percepcion
