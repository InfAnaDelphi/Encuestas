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
n_s<-ss2s4p(N=N,p=0.5,me=.01,M=6,by=1,rho=0.01)

#fraccion de muestreo
f_s<-n_s/N

#tamaño de muestra para encuestas internas

#tamaño de muestra para encuestas de percepcion
