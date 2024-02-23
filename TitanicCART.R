## Importar la base de datos

# file.choose()
titanic <- read.csv("/Users/daviddrums180/Tec/TitanicCart/titanic.csv")

## Entender la base de datos
summary(titanic)
str(titanic)

## Filtrar base de datos
Titanic <- titanic[,c("pclass","age","sex","survived")]
Titanic$survived <- as.factor(ifelse(Titanic$survived==0, "Murio", "Sobrevive"))
Titanic$pclass <- as.factor(Titanic$pclass)
Titanic$sex <-  as.factor(Titanic$sex)
str(Titanic)

sum(is.na(Titanic))
sapply(Titanic, function(x) sum(is.na(x)))

Titanic <- na.omit(Titanic)

## Crear arbol de decisión

# install.packages("rpart")
library(rpart)
arbol <- rpart(formula=survived ~ ., data = Titanic)
arbol

# install.packages("rpart.plot")
library(rpart.plot)
rpart.plot(arbol)
prp(arbol,extra = 7,prefix = "fraccion")

## Conclusiones

1. Las más altas probabilidades de sobrevivir en el Titanic son niño varón menor de 9.5 años de 1° y 2° clase (100%), y mujeres en 1° y 2° clase (93%).  
2. Las más bajas probabilidades de sobrevivir en el Titanic son los hombres mayores de 9.5 años (18%), y los hombres menores de 9.5 años en 3° clase (38%)
