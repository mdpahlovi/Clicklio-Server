FROM node:20.10.0-alpine
WORKDIR /clicklio
COPY pnpm-lock.yaml package.json ./
RUN npm install -g pnpm
RUN pnpm install
COPY . .
RUN pnpm build
EXPOSE 4000
CMD ["pnpm", "start"]
