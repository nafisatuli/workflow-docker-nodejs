# base image
FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install 

# copy all of our files
COPY . ./ 
EXPOSE 3000
CMD ["node","index.js"]