FROM node:16-alpine
WORKDIR /app
USER root
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]