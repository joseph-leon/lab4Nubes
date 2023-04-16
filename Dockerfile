FROM node:alpine
# mi directorio de trabajo xd
WORKDIR /app

#copia todo lo uqe empiece con packge a mi directoria
COPY package*.json ./


RUN npm install
#copia todo mi proyecto al direcotrio de trabajo :)
COPY . .

EXPOSE 9000

CMD [ "npm", "start"]