# Use official Node image
FROM node:18

# Create working directory inside container
WORKDIR /app

# Copy package files first (for better Docker caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of application code
COPY . .

# Expose backend port
EXPOSE 8080

# Start backend server
CMD ["npm", "start"]