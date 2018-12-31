FROM node:8.15-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
COPY project/package.json /src/app/package.json
RUN npm install
COPY project/. /src/app
EXPOSE 3000
CMD ["npm", "start" ]
