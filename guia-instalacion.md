
# Guía de instalación previa al taller

Este taller está pensado para personas que ya trabajan con R y RStudio. El objetivo no es aprender a usar RStudio, sino trabajar con control de versiones usando GitHub, así que se aprovecha mucho más si ya escribes tus propios scripts o informes.

Antes del sábado 10 de octubre necesitas tener Git instalado, tu cuenta de GitHub creada y dos paquetes de R listos. La conexión entre RStudio, Git y GitHub la configuraremos juntos durante el taller. 

**Reserva unos 20 o 30 minutos para esta guía.**


## Antes de empezar, revisa R y RStudio

Damos por hecho que ya tienes R y RStudio instalados y que los usas con normalidad. Lo único imprescindible es tener **R 4.1 o superior**, porque la versión actual del paquete usethis no se instala en versiones anteriores.

| Programa | Mínimo | Recomendado | Cómo comprobarlo |
| --- | --- | --- | --- |
| R | 4.1 | La última versión de [CRAN](https://cran.r-project.org) | Escribe `R.version.string` en la consola |
| RStudio | Sin mínimo estricto | Una versión de los últimos dos años | Menú Help y opción Check for Updates |

Si tu R es anterior a 4.1, actualízalo antes del taller y vuelve a instalar los paquetes que uses habitualmente.


## Paso 1. Instala Git

Git es el programa que guarda el historial de tus proyectos y se instala aparte de RStudio. Elige la opción de tu sistema.

| Sistema | Cómo instalarlo |
| --- | --- |
| Windows | Descarga Git for Windows desde [gitforwindows.org](https://gitforwindows.org) e instálalo dejando todas las opciones por defecto y la carpeta que propone |
| macOS | Abre la aplicación Terminal y escribe `xcode-select --install`, luego acepta la instalación, que puede tardar un rato |
| Linux (Ubuntu o Debian) | En la terminal escribe `sudo apt install git` |
| Linux (Fedora) | En la terminal escribe `sudo dnf install git` |

Cuando termines, cierra RStudio por completo y vuelve a abrirlo para que reconozca Git.

## Paso 2. Crea tu cuenta de GitHub

Regístrate gratis en [github.com/signup](https://github.com/signup) con un correo que revises a menudo y confirma el correo de verificación que te llegará.

- Elige un nombre de usuario corto y profesional, porque aparecerá en la dirección de todos tus proyectos.
- Si GitHub te pide activar la verificación en dos pasos, actívala con una aplicación de autenticación en tu teléfono celular.
- Guarda bien tu contraseña, porque el sábado tendrás que iniciar sesión.

## Paso 3. Instala los paquetes usethis y gitcreds

Con estos dos paquetes conectaremos RStudio con GitHub durante el taller. Abre RStudio y escribe en la consola lo siguiente.

```r
install.packages(c("usethis", "gitcreds"))
```

Si R te pregunta si quieres usar una biblioteca personal, responde que sí.

## Comprobación final

Si puedes marcar estas cuatro casillas, estás listo para el taller.

- [ ] RStudio abre sin errores y la consola muestra la versión de R.
- [ ] En la pestaña Terminal de RStudio, al lado de Console, escribes `git --version` y aparece algo como `git version 2.xx`.
- [ ] En la consola de R, `packageVersion("usethis")` y `packageVersion("gitcreds")` devuelven un número de versión.
- [ ] Puedes iniciar sesión en [github.com](https://github.com) con tu usuario y contraseña.

## Problemas frecuentes

| Problema | Qué hacer |
| --- | --- |
| En la Terminal, `git` no se reconoce como comando | Cierra RStudio y vuelve a abrirlo; si sigue igual, reinicia el ordenador |
| En Windows sigue sin reconocerse Git | Ve a Tools, Global Options, Git/SVN y en la casilla de _Git executable_ busca el archivo  `C:/Program Files/Git/bin/git.exe` |
| `install.packages()` da un error de permisos | Acepta usar una biblioteca personal cuando R lo pregunte y vuelve a intentarlo |
| En macOS la instalación de Git tarda mucho | Es normal, porque descarga las herramientas de desarrollo de Apple |
| No llega el correo de verificación de GitHub | Revisa la carpeta de spam o pide que te lo reenvíen desde la web |

Si algo sigue fallando, puedes pedir ayuda a cualquier asistente de IA, como Claude, ChatGPT o Gemini. Copia este prompt, completa lo que va entre corchetes y pega el mensaje de error exacto, porque con él la respuesta será mucho más precisa.

```text
Estoy preparando mi computadora para un taller de control de versiones con Git y GitHub desde RStudio. Antes del taller necesito tener Git instalado, una cuenta de GitHub creada y los paquetes usethis y gitcreds instalados en R. Todavía no debo configurar nada más.

Mi sistema operativo es [Windows, macOS o Linux, con su versión].
Mi versión de R es [resultado de R.version.string].
Mi versión de RStudio es [menú Help, opción About RStudio].
Estaba haciendo este paso [describe el paso de la guía].

Este es el mensaje de error exacto:
[pega aquí el error completo]

Explícame qué significa el error y dame los pasos para resolverlo uno a uno, sin dar por hecho que sé usar la terminal. Si te falta información para darme una solución fiable, pregúntame antes de proponer nada.
```

## Lo que haremos juntos en el taller

No hace falta que hagas nada de esto antes, porque lo veremos paso a paso el sábado.

- Configurar tu nombre y correo en Git.
- Crear el token de acceso a GitHub y guardarlo en RStudio.
- Crear repositorios y conectar tus proyectos de RStudio con GitHub.

---

[← Volver al README](README.md)
