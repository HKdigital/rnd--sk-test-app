FROM node:22-bullseye-slim

# ENV PORT=${PORT}

WORKDIR /

# RUN npm install --package-lock-only
# RUN npm ci --omit dev

RUN npm install
RUN npm run build

# EXPOSE ${PORT}

ENTRYPOINT ["node" "build"]
