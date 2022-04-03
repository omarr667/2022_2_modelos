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

