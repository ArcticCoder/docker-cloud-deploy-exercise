FROM node:16.19
EXPOSE 8080
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
RUN npm install && npm run build
RUN npm install -g serve
CMD ["serve", "-s", "-l", "8080", "build"]
