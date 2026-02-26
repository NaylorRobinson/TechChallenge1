# Frontend container image (Node)
FROM node:18

# Work inside /app in the container
WORKDIR /app

# Copy dependency manifests first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the frontend source code
COPY . .

# Frontend listens on 3000
EXPOSE 3000

# Start the frontend
CMD ["npm", "start"]