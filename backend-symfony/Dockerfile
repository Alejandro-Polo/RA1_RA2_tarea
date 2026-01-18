FROM php:8.2-fpm

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libicu-dev \
    libpq-dev \
    libzip-dev \
    zip \
    curl \
    nginx \
    && docker-php-ext-install intl pdo pdo_mysql zip

# Instalar Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Directorio de trabajo
WORKDIR /var/www/symfony

# Copiar el proyecto
COPY . .

# Instalar dependencias PHP
RUN composer install

# Permisos
RUN chown -R www-data:www-data /var/www/symfony

EXPOSE 9000

CMD ["php-fpm"]
