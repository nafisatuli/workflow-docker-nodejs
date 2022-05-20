# base image
FROM node:15
WORKDIR /app
COPY package.json .
# RUN npm install 

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

# copy all of our files
COPY . ./ 
# ENV PORT 3000
# EXPOSE $PORT
EXPOSE 3000
# CMD ["npm","run","dev"]
CMD ["node","index.js"]