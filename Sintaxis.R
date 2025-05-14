# ==============================
# Guía de sintaxis básica en R
# ==============================

# 1. Asignación de valores -------------------------
a <- 5             # Asignar el número 5 a la variable 'a'
b <- 10

# 2. Operaciones aritméticas -----------------------
suma <- a + b      # Suma
dif <- b - a       # Resta
mult <- a * b      # Multiplicación
div <- b / a       # División
mod <- b %% a      # Módulo (residuo)
pot <- a ^ 2       # Potencia

# 3. Tipos de datos -------------------------------
x <- 10            # numérico
texto <- "Hola"    # carácter
logico <- TRUE     # lógico (booleano)

# 4. Estructuras de datos -------------------------
# Vector
vec <- c(1, 2, 3, 4)

# Matriz
mat <- matrix(1:9, nrow = 3)

# Lista
mi_lista <- list(numero = 1, texto = "ok", logico = FALSE)

# Data frame
df <- data.frame(nombre = c("Ana", "Luis"), edad = c(23, 30))

# 5. Estructuras de control -----------------------
# Condicional if
if (a > 3) {
  print("a es mayor que 3")
}

# Condicional if-else
if (a > b) {
  print("a es mayor")
} else {
  print("b es mayor")
}

# Bucle for
for (i in 1:5) {
  print(i)
}

# Bucle while
contador <- 1
while (contador <= 3) {
  print(contador)
  contador <- contador + 1
}

# 6. Funciones ------------------------------------
mi_funcion <- function(x, y) {
  resultado <- x + y
  return(resultado)
}
mi_funcion(3, 7)

# 7. Indexación -----------------------------------
vec[2]           # Segundo elemento de un vector
mat[1, 2]        # Fila 1, columna 2 de la matriz
df$nombre[1]     # Primer nombre del data frame

# 8. Operadores lógicos ---------------------------
TRUE & FALSE     # Y lógico
TRUE | FALSE     # O lógico
!TRUE            # Negación lógica

# 9. Importar datos -------------------------------
# Asegúrate de que el archivo existe en tu ruta de trabajo
# datos <- read.csv("archivo.csv")

# 10. Visualización con ggplot2 -------------------
library(ggplot2)
ggplot(data = df, aes(x = nombre, y = edad)) +
  geom_bar(stat = "identity")

# 11. Ayuda en R ----------------------------------
?mean             # Ayuda para la función 'mean'
help("mean")      # Otra forma de obtener ayuda

# 12. Paquetes ------------------------------------
# Instalar y cargar paquetes
# install.packages("dplyr")
library(dplyr)    # Cargar paquete

# 13. Tidyverse -----------------------------------
# dplyr para manipulación de datos
nuevo_df <- df %>% 
  filter(edad > 25) %>% 
  mutate(grupo = "adulto")