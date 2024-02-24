
####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)

# Laboratorio - PIVOTAR A LO LARGO


#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos

#instalar paquete tidyverse  y readr
install.packages("tidyverse")
install.packages("readr")


#Cargar paquete tidyverse y readr
library(tidyverse)
library(readr)

#CARGAR DATOS

library(readr)
tabla1 <- read_csv("ice 2014.csv")

library(readr)
tabla1 <- read_csv("C:/Users/Usuario/OneDrive/Escritorio/DOCTORADO/DRA. CARLA-COMPLEJIDAD ECONÓMICA/LABS/ICE_2014.csv")
View(tabla1)

names(tabla1)

# 1. Pivotar tabla  "A LO LARGO"
t1_PIVOTANTE = tabla1 %>%
  pivot_longer(cols = c("KM,0"   ,   "KM,2"   ,   "KM,4"   ,   "KM,6"   ,   "KM,8"    ,  "KM,10"  ,   "KM,12"  ,   "KM,14"  ,   "KM,16"  ,   "KM,18"   ,  "KM,20"  ,   "KM,22" , "KM,24"  ,   "KM,26" ), names_to = "iteracion", values_to = "ranking")

# Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "ice_CHARTICULATOR.csv")


getwd()
setwd("C:/Users/karit/Desktop")
