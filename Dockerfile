FROM php:8.1-apache
# Installer les extensions PHP nécessaires
RUN docker-php-ext-install pdo pdo_mysql mysqli
# Activer mod_rewrite pour Apache
RUN a2enmod rewrite
# Copier les fichiers de l'application
COPY src/ /var/www/html/
# Donner les permissions appropriées
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html
# Exposer le port 80
EXPOSE 80
CMD ["apache2-foreground"]