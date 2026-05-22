# Usar la imagen oficial de Nginx basada en Alpine para un tamaño ultra ligero
FROM nginx:alpine

# Copiar configuración personalizada de Nginx para producción
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar archivos HTML limpios
COPY index.html /usr/share/nginx/html/index.html
COPY catering.html /usr/share/nginx/html/catering.html
COPY drink-menu.html /usr/share/nginx/html/drink-menu.html
COPY events.html /usr/share/nginx/html/events.html
COPY food-menu.html /usr/share/nginx/html/food-menu.html
COPY groups-and-parties.html /usr/share/nginx/html/groups-and-parties.html
COPY reservations.html /usr/share/nginx/html/reservations.html
COPY specials.html /usr/share/nginx/html/specials.html
COPY accessibility.html /usr/share/nginx/html/accessibility.html

# Copiar directorio de imágenes y video
COPY images/ /usr/share/nginx/html/images/
COPY video.mp4 /usr/share/nginx/html/video.mp4


# Exponer el puerto 80 para el tráfico web
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
