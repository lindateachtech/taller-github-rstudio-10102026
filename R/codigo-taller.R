# Versiona y comparte tus proyectos de RStudio con GitHub
# R & Python Week 2026 - SEE - 10 de octubre de 2026
# Linda Cabrera Orellana & Luis D. Verde Arregoitia
# Todo el código que usamos en el taller, en orden.

# Configuración (una sola vez por computadora) ----------------------------

# Paso 1. Diagnóstico inicial
usethis::git_sitrep()

# Paso 2. Usuario y correo de GitHub
usethis::use_git_config(
  user.name = "Tu Nombre",
  user.email = "tu@correo.com"
)

# Paso 3. Crear el token de GitHub
usethis::create_github_token()

# Paso 4. Guardar el token en tu computadora
gitcreds::gitcreds_set()

# Paso 5. "Vacunar" Git, ignora .Rhistory y otros archivos en todos tus proyectos
usethis::git_vaccinate()

# Paso 6. Comprobar nombre, correo y token deben aparecer bien
usethis::git_sitrep()


# GitHub primero (archivo analisis.R) ---------------------------------

# Antes: crear mi-primer-repo en GitHub y clonarlo en RStudio
# File > New Project > Version Control > Git

# Paso 3. Primer contenido del script
# Ventas ficticias por región de Ecuador
ventas <- data.frame(
  region = c("Costa", "Sierra", "Amazonía", "Galápagos"),
  ventas = c(1250, 980, 310, 140)
)

# Segundo commit. Añadir al final del script
barplot(
  ventas$ventas,
  names.arg = ventas$region,
  main = "Ventas por región",
  col = "#3c8b91"
)


# Proyecto existente  ---------------------------------------------------
# Importante: crearlo FUERA de la carpeta de mi-primer-repo

# Paso 1. Contenido de ejemplo para limpieza.R
datos <- data.frame(mes = month.name, ventas = round(runif(12, 100, 500)))
summary(datos)

# Paso 2. Activar Git en el proyecto
usethis::use_git()

# Paso 3. Crear el repositorio en GitHub y subir el historial
usethis::use_github()


# Trabajo en equipo con ramas (demo con Luis) ----------------------------

# Hace un fork del repositorio en tu cuenta y lo clona en tu computadora
usethis::create_from_github("lindateachtech/mi-primer-repo", fork = TRUE)

# Crea una rama nueva para tu cambio
usethis::pr_init("nombre-de-la-rama")

# Sube la rama a tu fork y abre el pull request en el navegador
usethis::pr_push()
