FROM node:22-bullseye-slim

# ENV PORT=${PORT}

# Needed for Coolify's healthcheck
RUN apt-get update && apt-get install -y --no-install-recommends curl wget

COPY . /app/.

RUN npm i -g pnpm
RUN pnpm install --frozen-lockfile
RUN pnpm run build

WORKDIR /app/build

# EXPOSE ${PORT}

ENTRYPOINT ["node"]
