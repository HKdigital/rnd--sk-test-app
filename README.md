# Sveltekit test app

## About

This is a [Sveltekit](https://kit.svelte.dev/) project. The web application productes by this project has no purpose. The project is used to try out various technologies, such as:

- [Sveltekit](https://kit.svelte.dev/)
- [Skeleton Next](https://next.skeleton.dev)
- [TailwindCSS](https://tailwindcss.com/)
- [Docker](https://www.docker.com/)
- [Coolify](https://coolify.io/)

## Installation

Clone the repository and install dependencies

```bash
# create a new project in the current directory
pnpm install
```

## Developing

Run the project in development mode

```bash
# Run the project (see package.json)
pnpm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Build and preview

Build the project and preview the build

```bash
# Build the project in the build folder (see package.json)
pnpm run build
```

```bash
# Preview the production build (build first)
pnpm run preview
```

## Deploy

The Dockerfile in the `docker` folder can be used to create a docker image. Or can be used by services such a [Coolify](https://coolify.io/) to deploy the project.

