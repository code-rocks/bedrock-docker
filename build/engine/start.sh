#!/bin/sh

# Migration du contenu vers le volume 
# Sans ecrasement des fichiers existant 
# et si celui-ci existe
if [ -z "$(ls -A /share/nginx/bedrock)" ]; then
   echo ""
else
   mv -n /share/nginx/bedrock/.[!.]* /share/nginx/html/
fi


# lancement de php-fpm
/usr/local/sbin/php-fpm