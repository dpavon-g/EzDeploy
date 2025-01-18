#!/bin/bash

set -e  # Detener el script si ocurre un error

echo ">> Comprobando si el proyecto Laravel ya existe..."
if [ ! -f /var/www/html/laravelProject/artisan ]; then
    echo ">> Proyecto Laravel no encontrado. Creando uno nuevo..."
    composer create-project --prefer-dist laravel/laravel laravelProject
    echo ">> Proyecto Laravel creado correctamente."
else
    echo ">> Proyecto Laravel ya existe. Saltando creación..."
fi

echo ">> Configurando permisos..."
chmod -R 775 laravelProject/*
# chown -R www-data:www-data /var/www/html

cd laravelProject

echo ">> Generando clave de la aplicación..."
php artisan key:generate

echo ">> Iniciando el servidor Laravel..."
php artisan serve --host=0.0.0.0 --port=8000
