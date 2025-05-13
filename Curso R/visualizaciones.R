#Instalar los paquetes
install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)

#Ver el resumen de los datos
quartet %>%
  group_by(set) %>%
  summarise(mean(x), sd(x), mean(y), sd(y), cor(x,y))

#Crear las gráficas
ggplot(quartet, aes(x, y)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) + 
  facet_wrap(~set)

#Crear diferentes visitas
datasaurus_dozen %>%
  group_by(dataset) %>%
  summarise(
    mean_x = mean(x),
    mean_y = mean(y),
    sd_x = sd(x),
    sd_y = sd(y),
    correlation = cor(x, y)
  )

ggplot(datasaurus_dozen, aes(x = x, y = y)) +
  geom_point(color = "#3366CC", alpha = 0.6) +
  facet_wrap(~dataset, ncol = 4) +
  theme_minimal() +
  labs(title = "Datasaurus Dozen",
       subtitle = "Todos estos conjuntos tienen estadísticas similares, pero distribuciones muy diferentes")

