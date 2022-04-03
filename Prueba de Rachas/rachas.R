

### Prueba de rachas
library(tseries)
set.seed(2018)
X=sample(1:100, 20, replace=FALSE) #simulacion de la muestra
XFactor=as.factor(X<median(X))  #Convierte una variable multivariable a una dummy

#La funcion runs.test solo acepta factores como parametro
runs.test(XFactor)
#No se rechaza H0 por lo que podemos afirmar que la rifa es honesta
