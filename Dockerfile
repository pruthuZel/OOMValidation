# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies (if needed)
COPY package.json package-lock.json ./
RUN npm install

# Copy the application files
COPY index.js ./

# Expose the port
EXPOSE 8000

# Start the app
CMD ["node", "index.js"]
