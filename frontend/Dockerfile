# Use official Node image
FROM node:18

# Create working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining app files
COPY . .

# Expose frontend port
EXPOSE 3000

# Start frontend
CMD ["npm", "start"]