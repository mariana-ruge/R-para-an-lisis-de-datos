library(ggplot2)
library(palmerpenguins)

#Analizar los datos
data(penguins)
View(penguins)

#Crear una visualizacion
#Se visualiza la masa de los pinguinos
ggplot(data=penguins)+geom_point(mapping=aes(x= flipper_length_mm, y = body_mass_g))

#Invertir los ejes
ggplot(data=penguins)+geom_point(mapping=aes(y= flipper_length_mm, x = body_mass_g))

#Ver el gráfico
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#Modificar las propiedades del gráfico
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=sex))
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, alpha=species))

#Propiedades de los geoms
ggplot(data=penguins)+ geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g))

#Podemos usar 2 geoms en el mismo plot
ggplot(data=penguins)+ geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g)) +
      geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))


#Crear un gráfico de barras
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut))

#Ponerle color a las barras
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut, fill=cut))

#Rangos
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut, fill=clarity))


#Crear un grafico para clasificar
ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g))+geom_point(aes(color=species)) +facet_wrap(~species)

#Barras para clasificar
ggplot(data=diamonds)+geom_bar(mapping=aes(x=color, fill=cut)) + facet_wrap(~cut)

#Facetas
ggplot(data = penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))+ facet_grid(sex~species)