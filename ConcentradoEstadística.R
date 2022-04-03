### Tipo de datos
#Boolean (lÃ³gicos)
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
## ColecciÃ³n de valores del mismo del tipo de manera multidemsional
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
plot(vector, pch = 8, main='RelaciÃ³n de valores', lwd=1, col='blue')


## SimulaciÃ³n
rnorm(100) #normal estandar
rnorm(100, mean = 25, sd = 10) #normal
rexp(100, rate = 0.25)
rpois(100, lambda = 10)
rbinom(100, size=200, prob = 0.5)
?rbinom()

normal = rnorm(25000, mean = 2000, sd=1000)
?rnorm()

hist(normal)

set.seed(2022)
x = rnorm(5)

mean(x)


rlnorm(25000, 100, 10)



set.seed(2022)
sample(0:1, size = 25, replace=TRUE, prob=c(0.3, 0.7))


sample(1:6, size = 5, replace = TRUE)




##La vida útil en kilómetros de las baterías de los coches eléctricos de Tesla sigue una
#distribución normal con  320,000 y desviación estándar de 100,000.


#Simule la vida de 10,000 baterías de automóviles con esta distribución

baterias = rnorm(10000, mean = 320000, sd = 100000)
baterias

hist(baterias)

densidad = density(baterias)
unlist(densidad)

plot(densidad)

#¿Cual es su esperanza y desviación estándar por vida en km?
baterias = rnorm(10000000, mean = 320000, sd = 100000)
mean(baterias)
sd(baterias)

#¿Cuántos kilómetros son necesarios para que al menos el 95% de los automovilistas 
#hayan cambiado de batería
qnorm(0.95, mean=320000, sd=100000)

#¿Cuál es la probabilidad de que la pila dure exactamente 250000 km?
dnorm(250000, mean=320000, sd=100000)

#La distancia entre Guatemala y New York es de 5,062 km si la pila es nueva ¿cual es la 
#probabilidad de que sufra algún daño en su viaje de ida y regreso?
pnorm(10124, mean=320000, sd=100000)




library(dplyr)


base = read.csv("bank.csv", sep = ";")
View(base)


mean(base$balance)


base[5:6,3:4]


#Prueba de proporciones
#primer parametro observaciones
#Segundo tamaño de la muestra
#Two.sided prueba de dos colas
prop.test(8, 10, p = 0.5, alternative = c("two.sided"),conf.level = 0.95)

#Si p-value < alpha se rechaza H0
#Con un 95% se puede asumir que la moneda es honesta

##AMIS
#primer parametro observaciones
#Segundo tamaño de la muestra
#greater ya que hipotesis  alternativa es mayor o igual
prop.test(900, 1500, p = 0.25, alternative = c("greater"),conf.level = 0.95) 
#Con 95% se rechaza H0.
# Podemos asumir que las afirmaciones de la AMIS no aplican en nuestra empresa



### Prueba de rachas
library(tseries)
set.seed(2018)
X=sample(1:100, 20, replace=FALSE) #simulacion de la muestra
XFactor=as.factor(X<median(X))  #Convierte una variable multivariable a una dummy

#La funcion runs.test solo acepta factores como parametro
runs.test(XFactor)
#No se rechaza H0 por lo que podemos afirmar que la rifa es honesta
