# ======================
# Cargar paquetes
# ======================
install.packages("tidyverse")  # Si no lo tienes ya
install.packages("skimr")
install.packages("palmerpenguins")

library(tidyverse)     # Incluye dplyr, ggplot2, tidyr, readr, etc.
library(skimr)         # Para resumen estadístico rápido
library(palmerpenguins)  # Dataset de ejemplo

# ======================
# Vista general del dataset
# ======================
head(penguins)            # Primeras 6 filas
str(penguins)             # Estructura del dataset
summary(penguins)         # Resumen estadístico
skim(penguins)            # Resumen detallado (con skimr)

# ======================
# Seleccionar y renombrar columnas
# ======================
penguins_clean <- penguins %>%
  select(-species) %>%               # Eliminar columna 'species'
  rename(island_new = island)        # Renombrar columna 'island'

# ======================
# Crear nuevas columnas
# ======================
penguins_clean <- penguins_clean %>%
  mutate(
    bill_ratio = bill_length_mm / bill_depth_mm  # Nueva columna: proporción del pico
  )

# ======================
# Filtrar datos
# ======================
penguins_filtered <- penguins_clean %>%
  filter(!is.na(body_mass_g)) %>%                # Eliminar filas con NA en masa corporal
  filter(sex == "female")                        # Filtrar solo hembras

# ======================
# Agrupar y resumir
# ======================
penguins_summary <- penguins %>%
  group_by(species) %>%
  summarise(
    count = n(),
    avg_mass = mean(body_mass_g, na.rm = TRUE),
    avg_flipper = mean(flipper_length_mm, na.rm = TRUE)
  )

# ======================
# Ordenar
# ======================
penguins_sorted <- penguins %>%
  arrange(desc(body_mass_g))  # Ordenar de mayor a menor masa corporal

# ======================
# Resultado final
# ======================
print(penguins_clean)
print(penguins_filtered)
print(penguins_summary)
