#Declaramos una variable numero para trabajar con ella

numero <- 20

#Operaciones basicas

numero + 10
numero - 10
numero / 10
numero ** 3


#Operador modulo
numero %% 5
numero %% 8
numero %% 7

#Enteros negativos
negativo <- -15
negativo - 1
negativo + 2
negativo * 4


#Con decimales
decimal <- 2.786
ceiling(decimal)
floor(decimal)
trunc(decimal)

#Solucion al ejercicio

numero <- 2.71828

trunc(numero * 100) / 100

#Usar los strings

usuario <- "Hola Mundo"

#Calcular cuantos caracteres tiene el String
n_char_usuario <- nchar(usuario)

#Convertir a mayúsculas o a minúsculas todo el string
tolower(usuario)
toupper(usuario)

#Obtener un substring del string
substr(usuario, 1, 5)
substr(usuario, 6, n_char_usuario)

#Sustituir valores del String
sub("a", "A", usuario)
gsub("a", "A", usuario)
sub("Okabe", "Huouin", usuario)

