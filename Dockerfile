FROM node:18

# Set workspace directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all remaining source files
COPY . .

# Expose the dashboard port (Matches your PORT || 5000)
EXPOSE 5000

# Start the application
CMD ["npm", "start"]

