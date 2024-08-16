# Use the official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY ./client/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY ./client .

# Build the Nuxt application
RUN npm run build

# Expose port 3000 for the Nuxt application
EXPOSE 3000

# Command to run the application
CMD [ "npm", "start" ]
