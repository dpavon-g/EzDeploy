# Usar una imagen base de PHP con soporte para FPM
FROM php:8.2-fpm

# Instalar dependencias necesarias para Laravel
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    libonig-dev \
    libzip-dev \
    curl \
    && docker-php-ext-install pdo pdo_mysql mbstring zip

# Instalar Composer
COPY --from=composer:2.6 /usr/bin/composer /usr/bin/composer

# Crear un directorio de trabajo
WORKDIR /var/www/html

# Copiar el script al contenedor
COPY script.sh /usr/local/bin/script.sh

# Dar permisos de ejecución al script
RUN chmod +x /usr/local/bin/script.sh

# Puerto predeterminado
EXPOSE 8000

# Comando para ejecutar el script al iniciar el contenedor
CMD ["/usr/local/bin/script.sh"]
