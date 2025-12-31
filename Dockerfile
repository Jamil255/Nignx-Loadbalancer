# Use official Node.js LTS image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package files first (for caching dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy app source code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]