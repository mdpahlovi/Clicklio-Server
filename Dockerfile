FROM node:alpine
WORKDIR /clicklio
COPY . .
RUN yarn install
COPY .env .env
RUN yarn build
EXPOSE 5000
RUN ["chmod", "+x", "./entrypoint.sh"]
ENTRYPOINT [ "sh", "./entrypoint.sh" ]