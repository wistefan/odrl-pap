# Stage 1: Build the React app
FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve the static build artifacts
FROM nginx:1.21.6-alpine

COPY --from=build /app/dist /usr/share/nginx/html

# When the container starts, nginx will serve the files from /usr/share/nginx/html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
