# Use Node.js 16.x as the base image
FROM node:16 AS build-stage

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Install Quasar CLI globally
RUN npm install -g @quasar/cli

# Copy the rest of the application code
COPY . .

# Build the application using Quasar
RUN quasar build

# Serve the application using Nginx
FROM nginx:alpine AS production-stage

# Copy the built files from the previous stage
COPY --from=build-stage /app/dist/spa /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
