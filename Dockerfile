FROM mediawiki:latest
WORKDIR /var/www/html/
ADD Image-mods-AWS.sh ./
ADD startup.sh ./
ADD LocalSettings.php ./
RUN bash /var/www/html/Image-mods-AWS.sh
RUN chown -R www-data:www-data /var/www/html
ENTRYPOINT [ "/bin/bash", "/var/www/html/startup.sh" ]
CMD apache2-foreground
