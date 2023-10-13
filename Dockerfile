# Utiliza una imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo en la imagen
WORKDIR /app

# Copia los archivos de tu aplicación al directorio de trabajo en la imagen
COPY package.json package-lock.json /app/
COPY server.js /app/
COPY public /app/public
COPY script /app/script

# Instala las dependencias de tu aplicación
RUN npm install

# Expone el puerto en el que se ejecutará tu aplicación
EXPOSE 3030

# Comando para iniciar tu aplicación
CMD ["node", "server.js"]