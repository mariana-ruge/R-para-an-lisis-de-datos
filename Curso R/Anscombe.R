#Cargar la biblioteca desde R
data(anscombe)

#Cargar las primeras filas del dataset
head(anscombe)

#Visualizar las estadísticas descriptivas del cuarteto de anscombe
for (i in 1:4)
{
  #Cat imprime en la consola sin comillas y respeta los espacios
  cat(sprintf("Cnjunto %d: \n", i))
  x <- anscombe[[paste0("x", i)]]
  y <- anscombe[[paste0("y", i)]]
  
  cat(sprintf(" Media x: %.2f | Media y : %.2f\n", mean(x), mean(y)))
  cat(sprintf(" Varianza x: %.2f | Varianza y: %.2f\n", var(x), var(y)))
  cat(sprintf("Correlacion %.3f\n", cor(x, y)))
  modelo <- lm(y ~ x)
  cat(sprintf("Regresion : y = %.2f + .%2fx\n", coef(modelo)[1], coef(modelo)[2]))
  cat("\n")
  
}


#Graficar los 4 conjuntos
par(mfrow=c(2,2))
for(i in 1:4)
{
  x <- anscombe[[paste0("x", i)]]
  y <- anscombe[[paste0("y", i)]]
  plot(x,y, main = paste("Conjunto", i),
       xlim=c(4,20), ylim=c(3,13),
       pch=19, col="blue"
       )
  abline(lm (y~ x), col="red", lwd=2)

}

