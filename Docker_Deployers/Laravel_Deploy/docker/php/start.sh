#!/bin/bash

cd /var/www

# Crear Laravel si no existe
if [ ! -f artisan ]; then
    echo "Laravel no encontrado, creando proyecto..."
    composer create-project laravel/laravel .

    echo "Copiando archivo .env y generando APP_KEY..."
    cp .env.example .env
    php artisan key:generate

    echo "Modificando configuración de base de datos en .env..."
    sed -i "s/^DB_CONNECTION=.*/DB_CONNECTION=mysql/" .env
    sed -i "s/^#DB_HOST=.*/DB_HOST=db/" .env
    sed -i "s/^#DB_PORT=.*/DB_PORT=3306/" .env
    sed -i "s/^#DB_DATABASE=.*/DB_DATABASE=laravel/" .env
    sed -i "s/^#DB_USERNAME=.*/DB_USERNAME=laravel/" .env
    sed -i "s/^#DB_PASSWORD=.*/DB_PASSWORD=laravel/" .env
    sed -i "s/^SESSION_DRIVER=.*/SESSION_DRIVER=file/" .env
    echo "Generando migración de sesiones..."
    php artisan session:table
fi

echo "Ejecutando migraciones..."
php artisan migrate --force

echo "Ajustando permisos de storage y bootstrap/cache..."
chown -R 1000:www-data .
chmod -R 775 storage bootstrap/cache

php-fpm
