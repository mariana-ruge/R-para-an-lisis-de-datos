library('ggplot2')
library('palmerpenguins')

#Datos fuera del grafico
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) + 
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Distribution data",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest")


grafica <- ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) + 
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Distribution data",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest")

#Guardar el archivo
ggsave("Three Penguin Species.png")



#Visualizacion
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  labs(title = "Pingüinos")

#Otra visualizacion
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~ clarity)