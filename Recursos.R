# 1. Calcular la media de mtcars$mpg
mean_mpg <- mean(mtcars$mpg)

# 2. Crear el objeto lógico high_mpg
high_mpg <- mtcars$mpg > mean_mpg

# 3. Calcular la proporción de valores mayores que la media
proportion_high_mpg <- mean(high_mpg)

# Mostrar la proporción
proportion_high_mpg


### -------------------------------
### ESTRUCTURAS DE DATOS EN R
### -------------------------------

# 1. VECTOR (una dimensión, mismo tipo)
v1 <- c(1, 2, 3, 4, 5)
print("Vector:")
print(v1)

# 2. FACTOR (vector categórico)
f1 <- factor(c("alto", "medio", "bajo", "alto", "bajo"))
print("Factor:")
print(f1)

# 3. MATRIX (dos dimensiones, mismo tipo)
m1 <- matrix(1:9, nrow = 3, ncol = 3)
print("Matriz:")
print(m1)

# 4. ARRAY (3 o más dimensiones)
a1 <- array(1:8, dim = c(2, 2, 2))
print("Array:")
print(a1)

# 5. LIST (una colección de elementos de diferentes tipos)
l1 <- list(nombre = "Ana", edad = 28, puntuaciones = c(90, 85, 88))
print("Lista:")
print(l1)

# 6. DATA FRAME (como una tabla: columnas pueden ser de diferentes tipos)
df1 <- data.frame(
  nombre = c("Ana", "Luis", "Carlos"),
  edad = c(28, 35, 40),
  aprobado = c(TRUE, TRUE, FALSE)
)
print("Data Frame:")
print(df1)

# 7. Tibble (una versión moderna de los data frames)
library(tibble)
tb1 <- tibble(
  nombre = c("Ana", "Luis", "Carlos"),
  edad = c(28, 35, 40)
)
print("Tibble:")
print(tb1)

### -------------------------------
### TIPOS DE OBJETOS EN R
### -------------------------------

# 1. NUMÉRICO
n <- 42
print(typeof(n))  # "double"

# 2. ENTERO
i <- as.integer(42)
print(typeof(i))  # "integer"

# 3. CARACTER
s <- "Hola mundo"
print(typeof(s))  # "character"

# 4. LÓGICO
b <- TRUE
print(typeof(b))  # "logical"

# 5. COMPLEJO
z <- 3 + 2i
print(typeof(z))  # "complex"

# 6. FUNCIONES
f <- function(x) { x^2 }
print(typeof(f))  # "closure"

# 7. OBJETO S3 (por ejemplo: un modelo lineal)
modelo <- lm(mpg ~ wt, data = mtcars)
print(class(modelo))  # "lm"

### -------------------------------
### EJERCICIO EXTRA: Explora tipos
### -------------------------------

# Verifica estructura y tipo de un objeto
str(df1)
class(df1)
typeof(df1)

# Convierte un vector en factor
v2 <- c("manzana", "banana", "manzana", "naranja")
f2 <- factor(v2)
print(f2)
levels(f2)
