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

