### (1)Create a vector with numbers from 1 to 31. 
### With this vector and the command paste() create a vector named “tree.name” 
### With 31 tree names, from “Tree_1” to “Tree_31”.

VN1 <- c(1:31)
View (VN1)
Length (VN1)
Tree.name <- paste0("Tree_", 1:31)

### (2)Make and object called “d0” with the data frame “trees” in R datasets. 
### Look into the help to see what is into this data frame. 
### ¿How many variables and observations there are in d0?

data ()
data(trees)
d0 <- trees 
  
### (3)Add your variable tree.name to d0
row.names (d0) <- (Tree.name)
d0$Tree.name <- Tree.name

### (4)Make the code to extract the name in tree.name of the larger (volume), the highest and the widest tree.

#volume
Vtrue <- d0$Volume==max(d0$Volume)
View(Vtrue)
d0$Tree.name[Vtrue]

#highest
VHtrue <- d0$Height==max(d0$Height)
View(VHtrue)
d0$Tree.name[VHtrue]

#Widest
VGtrue <- d0$Girth==max(d0$Girth)
View(VGtrue)
d0$Tree.name[VGtrue]

### (5)Using the function mean() calculate the mean Diameter, Height and Volume.
mean(d0$Girth)
mean(d0$Height)
mean(d0$Volume)

### (6)Make a new factor variable into d0 with two levels: “Large” for trees with volume larger or equal the mean and “Small” with trees with volume smaller than the mean. 
### ¿How many “Large” trees are there?
VLtrue <- d0$Volume >=mean(d0$Volume)
d0$Large[VLtrue]<-"Large"

d0$Large[!VLtrue]<-"Small"
sum(d0$Large=="Large")

### (7)Make a new factor variable into d0 with “Tall” for trees taller or equal the mean and “Short” with trees with Height shorter than the mean.
VTtrue <- d0$Height >=mean(d0$Height)
d0$Tall[VTtrue]<-"Tall"

d0$Tall[!VTtrue]<-"Short"
sum(d0$Tall=="Tall")

### (8)Make a subset with the trees that are both short and large and calculate the mean diameter of these Short-Large trees in meters. 
### How many “Short_Large” trees are there?
VL2true <- d0$Volume >=mean(d0$Volume) & d0$Height <mean(d0$Height)
sum(VL2true)
mean(d0$Girth[VL2true])

#ANTES $ VA LA TABLA Y LUEGO DE $ VA LA COLUMNA QUE SE QUIERA TRABAJAR
#PARA LLAMAR UN ELEMENTO ESPECÍFICO DE ESA COLUMNA [] 
#TRUE AND FALSE DAN LA LOCALIZACIÓN DE LOS DATOS EN LA TABLA
#<- AIGNAR VALORES A LA IZQUIERDA
#¨¨ SOLO CUANDO REQUIERAS PONER NOMBRES, EN TABLAS NO


 
