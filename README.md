# n8n8fg

Repositorio para aplicación n8n lista para Fly.io con dos discos persistentes y sin base de datos externa.

## Usuario y contraseña

- **Usuario:** adm
- **Contraseña:** admn8

## Despliegue en Fly.io

1. **Instala flyctl**   
   [Guía oficial](https://fly.io/docs/hands-on/install-flyctl/)

2. **Crea la app (si no existe):**
   ```sh
   fly launch --no-deploy --name n8n8fg
   ```

3. **Crea los volúmenes de 1GB cada uno:**
   ```sh
   fly volumes create n8ndata --size 1 --region mia
   fly volumes create n8nbackup --size 1 --region mia
   ```

4. **Despliega la app:**
   ```sh
   fly deploy
   ```

5. **Accede a n8n:**
   - URL: https://n8n8fg.fly.dev (o la que asigne Fly.io)
   - Usuario: `adm`
   - Contraseña: `admn8`

---

¿Dudas? [n8n Docs](https://docs.n8n.io/) | [Fly.io Docs](https://fly.io/docs/)