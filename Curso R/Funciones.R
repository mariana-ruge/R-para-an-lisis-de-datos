# ==========================
# Archivo súper comentado:
# Leer código en R paso a paso
# ==========================

# Cargar paquetes necesarios -------------------------
# 'tidyverse' es una colección de paquetes para manipulación, visualización y análisis de datos
library(tidyverse)

# Cargar conjunto de datos ---------------------------
# 'mtcars' es un conjunto de datos integrado en R sobre características de autos
# Mostramos las primeras filas para explorar cómo se ve
head(mtcars)

# Estructura del conjunto de datos -------------------
# str() muestra tipos de variables y primeros valores
str(mtcars)

# Estadísticas básicas -------------------------------
# summary() proporciona estadísticas resumidas como media, mínimo y máximo
summary(mtcars)

# Crear una nueva variable ---------------------------
# Aquí usamos la lógica para identificar si un auto tiene alto rendimiento de combustible
# mpg = millas por galón
mean_mpg <- mean(mtcars$mpg)                     # calcular la media
mtcars <- mtcars %>% 
  mutate(high_mpg = mpg > mean_mpg)              # TRUE si el auto tiene más mpg que el promedio

# Verificar proporción de autos con alto mpg --------
mean(mtcars$high_mpg)                            # proporción de autos que tienen alta eficiencia

# Filtrar autos eficientes --------------------------
# Filtramos los autos que cumplen con alta eficiencia
autos_eficientes <- mtcars %>% 
  filter(high_mpg == TRUE)

# Visualizar relación entre variables ---------------
# Creamos un diagrama de dispersión entre peso y consumo
# aes() define la estética del gráfico (x, y, color, etc.)
ggplot(data = mtcars) +
  geom_point(mapping = aes(x = wt, y = mpg, color = high_mpg)) +
  labs(title = "Peso vs Consumo de Autos", x = "Peso (wt)", y = "Millas por Galón (mpg)", color = "¿Alto MPG?")

# Guardar gráfico ------------------------------------
# ggsave() exporta el último gráfico generado
# El archivo se guarda en el directorio actual de trabajo
# Verifica con getwd() si no estás seguro
ggsave("grafico_mpg.png")

# Resumen final --------------------------------------
# En este script aprendiste a:
# - Cargar y explorar datos
# - Crear variables nuevas con lógica
# - Filtrar subconjuntos de datos
# - Visualizar relaciones con ggplot2
# - Guardar gráficos en disco

# Para profundizar más, prueba cambiar otras variables (ej. cyl, hp) y ver cómo afectan a mpg
