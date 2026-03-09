# Virtual Library System

Sistema de **biblioteca virtual** desarrollado con Ruby on Rails que permite gestionar libros, usuarios y préstamos de manera digital.

El proyecto fue desarrollado como trabajo final para la carrera de **Analista de Sistemas**.

---

## Características

* Registro y gestión de libros
* Registro de usuarios
* Gestión de préstamos
* API REST para acceso a datos
* Arquitectura MVC
* Base de datos SQL
* Interfaz web

---

## Tecnologías utilizadas

* Ruby
* Ruby on Rails
* SQL / ActiveRecord
* HTML
* CSS
* Git

---

## Arquitectura

El proyecto está desarrollado utilizando la arquitectura **MVC (Model-View-Controller)** propia de Ruby on Rails.

Model
Gestión de datos y conexión con la base de datos.

View
Interfaz web para interacción con el usuario.

Controller
Lógica de negocio y manejo de las solicitudes.

---

## Instalación

1. Clonar el repositorio

```bash
git clone https://gitlab.com/mausloco1990/proyect_biblio.git
```

2. Entrar al directorio

```bash
cd proyect_biblio
```

3. Instalar dependencias

```bash
bundle install
```

4. Crear la base de datos

```bash
rails db:create
rails db:migrate
```

5. Ejecutar el servidor

```bash
rails server
```

6. Abrir en el navegador

```
http://localhost:5000
```

---

## Uso

El sistema permite:

* agregar nuevos libros
* registrar usuarios
* gestionar préstamos
* consultar información de la biblioteca
* acceder a datos mediante API REST

---

## API REST

El sistema incluye endpoints para acceder a los recursos de la biblioteca.

Ejemplo:

```
GET /books
GET /users
```
---

## Autor

Proyecto desarrollado por Mauri como proyecto académico y de práctica en desarrollo web con Ruby on Rails.
