# 1st stage
FROM node:lts-alpine  as build
#FROM tiangolo/node-frontend:10 as build
WORKDIR /app
COPY package*.json ./

RUN npm install

COPY . .


RUN export NODE_OPTIONS=--openssl-legacy-provider 
RUN export NODE_OPTIONS="--max-old-space-size=5192"

#COPY . /app

#RUN npm run build

#final stage deployment
#FROM nginx:latest
#RUN rm -rf /usr/share/nginx/html/*

#COPY --from=build /app/build /usr/share/nginx/html
#COPY nginx.conf ./etc/nginx/conf.d/default.conf
#COPY --from=build /nginx.conf /etc/nginx/conf.d/default.conf
#EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]

#CMD ["npm","start"]

#Production stage

FROM nginx:stable-alpine as prod
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80

CMD ["nginx","-g","daemon off;"]