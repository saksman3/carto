# 1st stage
FROM node as build
#FROM tiangolo/node-frontend:10 as build
WORKDIR /app
COPY package*.json ./

RUN npm install

COPY . .
RUN npm run build


RUN export NODE_OPTIONS=--openssl-legacy-provider 
RUN export NODE_OPTIONS="--max-old-space-size=5192"


FROM nginx as prod
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80

CMD ["nginx","-g","daemon off;"]