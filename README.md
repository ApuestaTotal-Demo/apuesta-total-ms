## DEV

1. Clonar el respositorio
2. Crear un .env basado en el .env.template
3. Ejecutar el comando `git submodule update --init --recursive` para reconstuir los sub-módulos 
4. Ejecutar el comando `docker compose up --build`

## PROD

1. Clonar el repositorio
2. Crear un .env basado en el .env.template
3. Ejecutar el comando `git submodule update --init --recursive` para reconstuir los sub-módulos

4. Ejecutar el comando `docker compose -f docker-compose.prod.yml build` para crear las imágenes.
5. Ejecutar el comando `docker compose -f docker-compose.prod.yml up -d` para levantar los contenedores
6. Ejecutar el comando `docker compose -f docker-compose.prod.yml down` para destruir los contenedores

7. Si se desea actualizar cambios en el repositorio se deberá ejecutar `git pull origin main` en el repositorio padre y en el repositorio hijo donde se quiere obtener los nuevos cambios.
