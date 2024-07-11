FROM node:22-bullseye-slim

# ENV PORT=${PORT}

# Install dependencies

RUN apt-get update && apt-get install -y --no-install-recommends curl wget

RUN npm i -g pnpm

# Build app

COPY . /app/.

RUN CD /app

RUN pnpm install --frozen-lockfile
RUN pnpm run build

# Launch app

WORKDIR /app/build

# EXPOSE ${PORT}

ENTRYPOINT ["node"]
