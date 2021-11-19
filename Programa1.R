####################################
####
#### Mitzi Naomi Camargo Arellano
#### 19/11/2021
#### Problema 1
####
####################################

#Para instalar Biomanager
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.14")


library(Biostrings) #Cargo mi libreria


#### A partir de los datos de insulina o glorias en formato Fasta elabora un programa en R que genere lo siguiente:
#1. Alineamientos múltiples con al menos dos algoritmos

##Subo mi archivo FASTA
fasta_insulina <- readAAStringSet("Bioinformatica/Insulinas.fasta")
fasta_insulina  #Imprimo el vector fastas1 que cree

#Para realizar el alineamiento voy a usar msa 
#Lo voy a intalar con:
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("msa")

library(msa) #Cargo mi libreria

#Realizo mis alineamientos con MUSCLE y con Clustalw

alineamientoMUSCLE1<- msa(fasta_insulina, method = "Muscle") #alineamiento con MUSCLE
alineamientoMUSCLE1
alineamientoClustalw1<- msa(fasta_insulina, method = "ClustalW") #alineamiento con Clustalw
alineamientoClustalw1


#2.Infiera árboles filogenéticos con dos métodos.
#Convertimos para que la libreria seqinr lo reconozca

alineamientoClustalw1.0 <- msaConvert(alineamientoClustalw1, type ="seqinr::alignment" )
alineamientoClustalw1.0
alineamientoMUSCLE1.0 <- msaConvert(alineamientoMUSCLE1, type ="seqinr::alignment" )
alineamientoMUSCLE1.0
#instalamos el paquete seqinr para matrices de distancia
install.packages("seqinr") 
library(seqinr)

#calcular matriz de distancia para MUSCLE
distancia_Muscle<-dist.alignment(alineamientoMUSCLE1.0,"identity")
as.matrix(distancia_Muscle) #convertirlo a matriz

#instalamos ape para generar arboles en R a partir de la matriz de distancia
install.packages("ape")
library(ape) #correr desde la consola

#generar los datos que requiere un arbol filogenetico con el metodo de vecinos
arbol_Muscle <-nj(distancia_Muscle)
arbol_Muscle

#con el objeto anterior generar un plot
plot(arbol_Muscle, main="Árbol filogenético de insulinas con alineamiento MUSCLE")

arbol_Muscle2 <- phangorn::upgma(distancia_Muscle)
arbol_Muscle2
plot(arbol_Muscle2)

#calcular matriz de distancia para ClustalW
distancia_ClustalW<-dist.alignment(alineamientoClustalw1.0,"identity")
as.matrix(distancia_ClustalW) #convertirlo a matriz

#instalamos ape para generar arboles en R a partir de la matriz de distancia
install.packages("ape")
library(ape) #correr desde la consola

#generar los datos que requiere un arbol filogenetico con el metodo de vecinos
arbol_ClustalW <-nj(distancia_ClustalW)
arbol_ClustalW

#con el objeto anterior generar un plot
plot(arbol_Muscle, main="Árbol filogenético de insulinas con alineamiento ClustalW")

arbol_ClustalW2 <- phangorn::upgma(distancia_Muscle)
arbol_ClustalW2
plot(distancia_ClustalW)

#3. Dibuje un árbol con sus respectivos alineamientos al lado (ver la documentación y viñetas de ggtree)
arbol_ClustalW <-nj(distancia_ClustalW)
arbol_ClustalW

arbol_alineamiento <- msaplot(ggtree(distancia_ClustalW)
arbol_alineamiento


#4. Elabore un árbol con phylopic para indicar la especie correspondiente.
##En los dos casos el árbol debe estar con los nombre recortados para indicar sólo la especie. Debes realizar este proceso con R