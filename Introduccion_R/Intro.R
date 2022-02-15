### Tipo de datos
#Boolean (lógicos)
TRUE
FALSE

# Numeric
5
5.5

# String 
'Hola mundo'


### Variables
nombre = 5+1
nombre

nombre1 <- 5+2
nombre1

5+3 -> nombre
nombre

nombre1 + nombre


### Vectores
## Colección de valores del mismo del tipo de manera multidemsional
vector = c(2,6,8,9,10,15,25.2,85)
vector

5+vector
5*vector
vector ** 2
vector ^ 2

vector2 = c(2,6,8,9,10,15,25.2,'text')
vector2

5+vector2

vector[4] = 100
vector

## Funciones vectoriales
sum(vector)
mean(vector)
sd(vector)
median(vector)
summary(vector)
length(vector)

sum(vector) / length(vector)


## Graficas
plot(vector, pch = 8, main='Relación de valores', lwd=1, col='blue')


## Simulación
rnorm(100) #normal estandar
rnorm(100, mean = 25, sd = 10) #normal
rexp(100, rate = 0.25)
rpois(100, lambda = 10)
rbinom(100, size=200, prob = 0.5)
?rbinom()

