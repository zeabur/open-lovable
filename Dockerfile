FROM node:22 AS build
LABEL "language"="nodejs"
LABEL "framework"="next.js"

ENV PORT=8080
WORKDIR /src

RUN npm install -f -g pnpm@latest
COPY . .
RUN pnpm install

# Build if we can build it
RUN pnpm build

EXPOSE 8080
CMD pnpm start
