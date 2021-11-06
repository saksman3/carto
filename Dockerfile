# 1st stage
FROM node:12.2.0-alpine  as build
#FROM tiangolo/node-frontend:10 as build
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./

RUN npm install

RUN export NODE_OPTIONS=--openssl-legacy-provider 
RUN export NODE_OPTIONS="--max-old-space-size=5192"

COPY . /app

#RUN npm run build

#final stage deployment
#FROM nginx:latest
#RUN rm -rf /usr/share/nginx/html/*

#COPY --from=build /app/build /usr/share/nginx/html
#COPY nginx.conf ./etc/nginx/conf.d/default.conf
#COPY --from=build /nginx.conf /etc/nginx/conf.d/default.conf
#EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]
CMD ["npm","start"]