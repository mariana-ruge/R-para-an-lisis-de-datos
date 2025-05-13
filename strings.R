#---------------------------------------
# String
#---------------------------------------


usuario <- "mariana"

#Cuantos caracteres tiene el string
n_char_usuario <- nchar(usuario)

#Convertir a mayúsculas y a minúsculas
tolower(usuario)
toupper(usuario)

#Obtener un substring
substr(usuario, 1, 5)
#Calcular el número de datos de un substring
substr(usuario, 5, n_char_usuario)

#Sustituir los valores del String
user <- "Juan"

sub("u", "U", user)

#Sustituir todas las ocurrencias
sub("Juan", "Luis", user)

#Pegar dos o mas String
paste("El nombre de usuario es", user, sep= " ")


