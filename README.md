# 🐳 Uso de Docker con MySQL

## Iniciar el contenedor MySQL

```bash
docker run --name mysql_container e MYSQL_ROOT_PASSWORD=admin -p 3307:3306 -d mysql:latest
docker exec -it mysql_container sh
mysql -h localhost -u root -p
```

## Volver a usar el contenedor

```bash
docker restart mysql_container
docker ps
docker exec -it mysql_container sh
mysql -h localhost -u root -p
```

## Revisar si el puerto falla
### HOSTport

```bash
docker inspect mysql_container
```