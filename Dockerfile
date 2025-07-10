# Usa la imagen oficial de Node.js
FROM node:16

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias de Node.js
RUN npm install

# Copia todo el código fuente de la aplicación
COPY . .

# Expone el puerto en el que Express corre (por defecto es 3000)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]  # O el nombre del archivo que ejecuta la API
