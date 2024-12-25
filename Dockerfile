# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy app files
COPY package*.json ./
RUN npm install
COPY . .

# Expose the app's port
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
