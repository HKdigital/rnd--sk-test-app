FROM node:22-bullseye-slim

# ENV PORT=${PORT}

WORKDIR /

# RUN npm install --package-lock-only
# RUN npm ci --omit dev

RUN rm package-lock.json
RUN npm cache clear --force

RUN npm install
RUN npm run build

# EXPOSE ${PORT}

ENTRYPOINT ["node"]
