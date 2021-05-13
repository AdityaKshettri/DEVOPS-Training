FROM node:latest as build-stage

WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . .
RUN npm run build

FROM nginx
RUN rm -rf /usr/share/nginx/html/*

COPY nginx.conf /etc/nginx/conf.default
COPY --from=build-stage /app/build /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
