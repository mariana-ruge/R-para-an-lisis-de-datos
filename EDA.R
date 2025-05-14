install.packages("palmerpenguins")
install.packages("tidyverse")
install.packages("caret")

# -----------------------------
# 1. Cargar paquetes y datos
# -----------------------------
library(tidyverse)
library(palmerpenguins)
library(caret)

data("penguins")

# -----------------------------
# 2. Limpiar datos
# -----------------------------
penguins_clean <- penguins %>%
  drop_na() %>%                                 # eliminar NA
  filter(species %in% c("Adelie", "Gentoo"))    # binarizar el problema

# -----------------------------
# 3. Visualización exploratoria
# -----------------------------
ggplot(penguins_clean, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point() +
  labs(title = "Longitud de aleta vs Masa corporal", color = "Especie")

# -----------------------------
# 4. Preparar datos para ML
# -----------------------------
penguins_clean$species <- factor(penguins_clean$species)

set.seed(123)
train_index <- createDataPartition(penguins_clean$species, p = 0.8, list = FALSE)
train_data <- penguins_clean[train_index, ]
test_data  <- penguins_clean[-train_index, ]

# -----------------------------
# 5. Entrenar un modelo (árbol)
# -----------------------------
modelo <- train(
  species ~ flipper_length_mm + body_mass_g,
  data = train_data,
  method = "rpart",
  trControl = trainControl(method = "cv", number = 5)
)

# -----------------------------
# 6. Evaluar el modelo
# -----------------------------
predicciones <- predict(modelo, newdata = test_data)
confusionMatrix(predicciones, test_data$species)

# -----------------------------
# 7. Usar el modelo
# -----------------------------
nuevo_pingüino <- data.frame(
  flipper_length_mm = 200,
  body_mass_g = 4000
)

predict(modelo, nuevo_pingüino)
