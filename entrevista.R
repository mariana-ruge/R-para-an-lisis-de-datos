# Cargar paquetes necesarios
library(dplyr)     # Para manipulación de datos
library(ggplot2)   # Para visualización

# 1. Ver estructura del dataframe
str(ventas_df)   # Muestra nombres de columnas, tipos y primeros valores

# 2. Total de ventas por tienda
ventas_por_tienda <- ventas_df %>%
  group_by(tienda) %>%
  summarise(total_ventas = sum(ventas))

print(ventas_por_tienda)

# 3. Promedio de ventas por mes
promedio_por_mes <- ventas_df %>%
  group_by(mes) %>%
  summarise(promedio_ventas = mean(ventas))

print(promedio_por_mes)

# 4. Filtrar filas con ventas > 1500
ventas_altas <- ventas_df %>%
  filter(ventas > 1500)

print(ventas_altas)

# 5. Crear columna 'clasificacion'
ventas_df <- ventas_df %>%
  mutate(clasificacion = ifelse(ventas > 1500, "Alta", "Baja"))

print(ventas_df)

# 6. Gráfico de barras: total de ventas por tienda
ggplot(data = ventas_por_tienda, aes(x = tienda, y = total_ventas, fill = tienda)) +
  geom_bar(stat = "identity") +
  labs(title = "Total de Ventas por Tienda", x = "Tienda", y = "Ventas") +
  theme_minimal()
