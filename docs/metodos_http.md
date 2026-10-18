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
**Para qué sirve:** Crear un nuevo recurso.
**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body (json):
{ "id": 1, "title": "Actualizado", "body": "nuevo contenido", "userId": 1 }
- Código de estado: `200 OK`