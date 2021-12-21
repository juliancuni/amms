FROM socialengine/nginx-spa:latest 
COPY ./build/web /app
RUN chmod -R 777 /app