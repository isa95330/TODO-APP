# Utilisation d'une image Alpine Linux
FROM alpine:3.17

# Définition de la variable d'environnement NODE_VERSION
ENV NODE_VERSION 20.8.1

# Installez Node.js et certaines dépendances
RUN apk add --no-cache nodejs npm

# Créez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers de l'application dans le conteneur
COPY package*.json ./
COPY . .

# Installez les dépendances de l'application
RUN npm install

# Exposez le port sur lequel votre application écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["node", "app.js"]
