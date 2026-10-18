# Métodos HTTP con JSONPlaceholder

URL base: https://jsonplaceholder.typicode.com/posts

## GET
**Para qué sirve:** Obtener datos del servidor.
**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body: (ninguno)
- Código de estado: `200 OK`

## POST
**Para qué sirve:** Crear un nuevo recurso.
**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts`
- Body (json):
{ "title": "Nuevo post", "body": "contenido", "userId": 1 }
- Código de estado: `201 Created`

## PUT
**Para qué sirve:** Reemplazar completamente un recurso existente.
**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body (json):
{ "id": 1, "title": "Actualizado", "body": "nuevo contenido", "userId": 1 }
- Código de estado: `200 OK`

## PATCH
**Para qué sirve:** Modificar parcialmente un recurso.
**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body (json):
{ "title": "Solo cambio el título" }
- Código de estado: `200 OK`

## DELETE
**Para qué sirve:** Eliminar un recurso
**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body (json): ninguno
- Código de estado: `200 OK`

## Diferencias entre PUT y PATH
PUT reemplaza todo el recurso (debes enviar todos los campos), mientras que PATCH solo modifica los campos que envías. JSONPlaceholder simula los cambios y no los guarda, por lo que un GET posterior no mostrará las modificaciones.