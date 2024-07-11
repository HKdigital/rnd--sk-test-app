FROM node:lts-bullseye-slim

# ENV PORT=${PORT}

WORKDIR /

RUN npm ci --omit dev
RUN npm run build

# EXPOSE ${PORT}

ENTRYPOINT ["node" "build"]
