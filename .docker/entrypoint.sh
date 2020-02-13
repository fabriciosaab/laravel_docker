#!/bin/bash

composer install
chmod -R 775 storage
php artisan key:generate
php artisan config:cache
php artisan migrate
php-fpm 