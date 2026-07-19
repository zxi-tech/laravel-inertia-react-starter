FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    zip \
    nano \
    supervisor \
    default-mysql-client \
    libzip-dev \
    libicu-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    libsqlite3-dev \
    sqlite3 \
    $PHPIZE_DEPS \
    && docker-php-ext-install \
        pdo \
        pdo_mysql \
        pdo_sqlite \
        mbstring \
        intl \
        zip \
        opcache \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
COPY --from=node:20 /usr/local /usr/local

COPY docker/php/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR /var/www/html

RUN echo 'alias art="php artisan"' >> /root/.bashrc && \
    echo 'alias c="composer"' >> /root/.bashrc && \
    echo 'alias n="npm"' >> /root/.bashrc && \
    echo 'alias migrate="php artisan migrate"' >> /root/.bashrc && \
    echo 'alias fresh="php artisan migrate:fresh --seed"' >> /root/.bashrc && \
    echo 'alias test="php artisan test"' >> /root/.bashrc
    
CMD ["/usr/bin/supervisord"]