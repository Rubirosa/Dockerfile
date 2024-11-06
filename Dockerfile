# Usa una imagen de Node.js para un servidor web básico
FROM node:14

# Configura el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos necesarios
COPY . .

# Instala Express (para crear el servidor web)
RUN npm install express

# Crea el archivo principal `index.js`
RUN echo "const express = require('express'); const app = express(); app.get('/', (req, res) => res.send('Hola Mundo')); app.listen(3000, () => console.log('App running on port 3000'));" > index.js

# Expone el puerto
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "index.js"]
