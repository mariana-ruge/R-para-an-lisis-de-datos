ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) + geom_point()

#Ponerle 2 colores a los datos

ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) + geom_point(aes(color=species, shape=species))