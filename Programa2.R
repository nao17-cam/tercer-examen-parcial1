####################################
####
#### Mitzi Naomi Camargo Arellano
#### 19/11/2021
#### Problema 2
####
####################################

#Ejercicio de Rosalind Frankli 
#Cada letra del alfabeto corresponde a un aminoacido que forman cadenas de proteinas. Primero se le asigna un valor real de acuerdo a la tabla de masas monoisotopicas que viene en Rosalind. El valor asignado corresponde al peso estandar de cada aminoacido
#Crear una variable que contenga el peso de cada aminoácido
A <- 71.03711
R <- 156.10111
N <- 114.04293
D <- 115.02694
C <- 103.00919
Q <- 128.05858
E <- 129.04259
G <- 57.02146
H <- 137.05891
I <- 113.08406
L <- 113.08406
K <- 128.09496
M <- 131.04049
eFe <- 147.06841 #F marca error
P <- 97.05276
S <- 87.03203
Te <- 101.04768 #reconoce como verdadero
W <- 186.07931
Y <- 163.06333
V <- 99.06841

#Lo juntamos en un vector con la funcion names, haciendo un vector con 20 caracteres 
aminoacidos <- c(1:20) #juntas en un vector todos los pesos
nombres_aminoacidos <- c("A","R","N","D","C","Q","E","G","H","I","L","K","M","F","P","S","T","W","Y","V") #creamos un vector que contenga los aminoacidos
names(aminoacidos) <- nombres_aminoacidos #vamos a asiganar el nombre de los aminoacidos al peso molecular 
aminoacidos #imprimimos 

#Creamos una función para seleccionar los aminoácidos utilizando las condicionales
calculadora_molecular <- function(){
  print("Del siguiente vector selecciona el número que corresponde a tu aminoácido")
  print(aminoacidos) #Imprime el vector que contiene las letras de los aminoacidos con su numero correspondiente 
  a1 <- readline(prompt = "Anota el numero primer aminoacido: ") #Con la función readline seleccionamos el numero del vector de arriba
  a1 <- as.numeric(a1) #Lo convertimos a caracter númerico
  if (a1 == 1){uno <- c(A)
  }else if (a1 == 2){
    uno <- c(R)
  }else if (a1 == 3){
    uno <- c(N)
  }else if (a1 == 4){
    uno <- c(D)
  }else if (a1 == 5){
    uno <- c(C)
  }else if (a1 == 6){
    uno <- c(Q)
  }else if (a1 == 7){
    uno <- c(E)
  }else if (a1 == 8){
    uno <- c(G)
  }else if (a1 == 9){
    uno <- c(H)
  }else if (a1 == 10){
    uno <- c(I)
  }else if (a1 == 11){
    uno <- c(L)
  }else if (a1 == 12){
    uno <- c(K)
  }else if (a1 == 13){
    uno <- c(M)
  }else if (a1 == 14){
    uno <- c(eFe)
  }else if (a1 == 15){
    uno <- c(P)
  }else if (a1 == 16){
    uno <- c(S)
  }else if (a1 == 17){
    uno <- c(Te)
  }else if (a1 == 18){
    uno <- c(W)
  }else if (a1 == 19){
    uno <- c(Y)
  }else if (a1 == 20){
    uno <- c(V)
  }
  a2 <- readline(prompt = "Anota el numero segundo aminoacido: ")
  a2 <- as.numeric(a2)
  if (a2 == 1){
    dos <- c(A)
  }else if (a2 == 2){
    dos <- c(R)
  }else if (a2 == 3){
    dos <- c(N)
  }else if (a2 == 4){
    dos <- c(D)
  }else if (a2 == 5){
    dos <- c(C)
  }else if (a2 == 6){
    dos <- c(Q)
  }else if (a2 == 7){
    dos <- c(E)
  }else if (a2 == 8){
    dos <- c(G)
  }else if (a2 == 9){
    dos <- c(H)
  }else if (a2 == 10){
    dos <- c(I)
  }else if (a2 == 11){
    dos <- c(L)
  }else if (a2 == 12){
    dos <- c(K)
  }else if (a2 == 13){
    dos <- c(M)
  }else if (a2 == 14){
    dos <- c(eFe)
  }else if (a2 == 15){
    dos <- c(P)
  }else if (a2 == 16){
    dos <- c(S)
  }else if (a2 == 17){
    dos <- c(Te)
  }else if (a2 == 18){
    dos <- c(W)
  }else if (a2 == 19){
    dos <- c(Y)
  }else if (a2 == 20){
    dos <- c(V)
  }
  a3 <- readline(prompt = "Anota el numero tercer aminoacido: ")
  a3 <- as.numeric(a3)
  if (a3 == 1){
    tres <- c(A)
  }else if (a3 == 2){
    tres <- c(R)
  }else if (a3 == 3){
    tres<- c(N)
  }else if (a3 == 4){
    tres <- c(D)
  }else if (a3 == 5){
    tres <- c(C)
  }else if (a3 == 6){
    tres <- c(Q)
  }else if (a3 == 7){
    tres <- c(E)
  }else if (a3 == 8){
    tres <- c(G)
  }else if (a3 == 9){
    tres <- c(H)
  }else if (a3 == 10){
    tres <- c(I)
  }else if (a3 == 11){
    tres <- c(L)
  }else if (a3 == 12){
    tres <- c(K)
  }else if (a3 == 13){
    tres <- c(M)
  }else if (a3 == 14){
    tres <- c(eFe)
  }else if (a3 == 15){
    tres <- c(P)
  }else if (a3 == 16){
    tres <- c(S)
  }else if (a3 == 17){
    tres <- c(Te)
  }else if (a3 == 18){
    tres <- c(W)
  }else if (a3 == 19){
    tres <- c(Y)
  }else if (a3 == 20){
    tres <- c(V)
  }
  a4 <- readline(prompt = "Anota el numero cuarto aminoacido: ")
  a4 <- as.numeric(aa4)
  if (a4 == 1){
    cua <- c(A)
  }else if (a4 == 2){
    cua <- c(R)
  }else if (a4 == 3){
    cua <- c(N)
  }else if (a4 == 4){
    cua <- c(D)
  }else if (a4 == 5){
    cua <- c(C)
  }else if (a4 == 6){
    cua <- c(Q)
  }else if (a4 == 7){
    cua <- c(E)
  }else if (a4 == 8){
    cua <- c(G)
  }else if (a4 == 9){
    cua <- c(H)
  }else if (a4 == 10){
    cua <- c(I)
  }else if (a4 == 11){
    cua <- c(L)
  }else if (a4 == 12){
    cua <- c(K)
  }else if (a4 == 13){
    cua <- c(M)
  }else if (a4 == 14){
    cua <- c(eFe)
  }else if (a4 == 15){
    cua <- c(P)
  }else if (a4 == 16){
    cua <- c(S)
  }else if (a4 == 17){
    cua <- c(Te)
  }else if (a4 == 18){
    cua <- c(W)
  }else if (a4 == 19){
    cua <- c(Y)
  }else if (a4 == 20){
    cua <- c(V)
  }
  a5 <- readline(prompt = "Anota el numero quinto aminoacido: ")
  a5 <- as.numeric(a5)
  if (a5 == 1){
    cin <- c(A)
  }else if (a5 == 2){
    cin <- c(R)
  }else if (a5 == 3){
    cin <- c(N)
  }else if (a5 == 4){
    cin <- c(D)
  }else if (a5 == 5){
    cin <- c(C)
  }else if (a5 == 6){
    cin <- c(Q)
  }else if (a5 == 7){
    cin <- c(E)
  }else if (a5 == 8){
    cin <- c(G)
  }else if (a5 == 9){
    cin <- c(H)
  }else if (a5 == 10){
    cin <- c(I)
  }else if (a5 == 11){
    cin <- c(L)
  }else if (a5 == 12){
    cin <- c(K)
  }else if (a5 == 13){
    cin <- c(M)
  }else if (a5 == 14){
    cin <- c(eFe)
  }else if (a5 == 15){
    cin <- c(P)
  }else if (a5 == 16){
    cin <- c(S)
  }else if (a5 == 17){
    cin <- c(Te)
  }else if (a5 == 18){
    cin <- c(W)
  }else if (a5 == 19){
    cin <- c(Y)
  }else if (a5 == 20){
    cin <- c(V)
  }
  a6 <- readline(prompt = "Anota el numero sexto aminoacido: ")
  a6 <- as.numeric(a6)
  if (a6 == 1){
    six <- c(A)
  }else if (a6 == 2){
    six <- c(R)
  }else if (a6 == 3){
    six <- c(N)
  }else if (a6 == 4){
    six <- c(D)
  }else if (a6 == 5){
    six <- c(C)
  }else if (a6 == 6){
    six <- c(Q)
  }else if (a6 == 7){
    six <- c(E)
  }else if (a6 == 8){
    six <- c(G)
  }else if (a6 == 9){
    six <- c(H)
  }else if (a6 == 10){
    six <- c(I)
  }else if (a6 == 11){
    six <- c(L)
  }else if (a6 == 12){
    six <- c(K)
  }else if (a6 == 13){
    six <- c(M)
  }else if (a6 == 14){
    six <- c(eFe)
  }else if (a6 == 15){
    six <- c(P)
  }else if (a6 == 16){
    six <- c(S)
  }else if (a6 == 17){
    six <- c(Te)
  }else if (a6 == 18){
    six <- c(W)
  }else if (a6 == 19){
    six <- c(Y)
  }else if (a6 == 20){
    six <- c(V)
  }
  aa7 <- readline(prompt = "Anota el numero septimo aminoacido: ")
  aa7 <- as.numeric(aa7)
  if (aa7 == 1){
    sev <- c(A)
  }else if (aa7 == 2){
    sev <- c(R)
  }else if (aa7 == 3){
    sev <- c(N)
  }else if (aa7 == 4){
    sev <- c(D)
  }else if (aa7 == 5){
    sev <- c(C)
  }else if (aa7 == 6){
    sev <- c(Q)
  }else if (aa7 == 7){
    sev <- c(E)
  }else if (aa7 == 8){
    sev <- c(G)
  }else if (aa7 == 9){
    sev <- c(H)
  }else if (aa7 == 10){
    sev <- c(I)
  }else if (aa7 == 11){
    sev <- c(L)
  }else if (aa7 == 12){
    sev <- c(K)
  }else if (aa7 == 13){
    sev <- c(M)
  }else if (aa7 == 14){
    sev <- c(eFe)
  }else if (aa7 == 15){
    sev <- c(P)
  }else if (aa7 == 16){
    sev <- c(S)
  }else if (aa7 == 17){
    sev <- c(Te)
  }else if (aa7 == 18){
    sev <- c(W)
  }else if (aa7 == 19){
    sev <- c(Y)
  }else if (aa7 == 20){
    sev <- c(V)
  }
  return(print(suma <- uno + dos + tres + cua + cin + six + sev))
}#Va a imprimir la suma de los pesos de los 7 aminoácidos que seleccionamos 

# SKADYEK se comprueba con este y si da 821.3919, da el resultado en Rosalin Franklin