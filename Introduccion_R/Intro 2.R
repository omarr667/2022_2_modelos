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




##La vida �til en kil�metros de las bater�as de los coches el�ctricos de Tesla sigue una
#distribuci�n normal con  320,000 y desviaci�n est�ndar de 100,000.


#Simule la vida de 10,000 bater�as de autom�viles con esta distribuci�n

baterias = rnorm(10000, mean = 320000, sd = 100000)
baterias

hist(baterias)

densidad = density(baterias)
unlist(densidad)

plot(densidad)

#�Cual es su esperanza y desviaci�n est�ndar por vida en km?
baterias = rnorm(10000000, mean = 320000, sd = 100000)
mean(baterias)
sd(baterias)

#�Cu�ntos kil�metros son necesarios para que al menos el 95% de los automovilistas 
#hayan cambiado de bater�a
qnorm(0.95, mean=320000, sd=100000)

#�Cu�l es la probabilidad de que la pila dure exactamente 250000 km?
dnorm(250000, mean=320000, sd=100000)

#La distancia entre Guatemala y New York es de 5,062 km si la pila es nueva �cual es la 
#probabilidad de que sufra alg�n da�o en su viaje de ida y regreso?
pnorm(10124, mean=320000, sd=100000)




library(dplyr)


base = read.csv("bank.csv", sep = ";")
View(base)


mean(base$balance)


base[5:6,3:4]

