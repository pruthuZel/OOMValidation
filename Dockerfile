# Use official Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json if you have one (optional)
# COPY package*.json ./

# Install dependencies (none needed here if you’re not using npm packages)
# RUN npm install

# Copy your entire app source code
COPY . .

# Expose port
EXPOSE 8000

# Start the app
CMD ["node", "index.js"]
