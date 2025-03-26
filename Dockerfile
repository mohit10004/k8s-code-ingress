# Use a stable Node.js version (LTS recommended)
FROM node:20-alpine

# Set working directory
WORKDIR /reddit-clone

# Copy package.json and package-lock.json first for caching dependencies
COPY package.json package-lock.json ./

# Install dependencies with --legacy-peer-deps to avoid conflicts
RUN npm install --legacy-peer-deps

# Copy the rest of the project files
COPY . .

# Expose port 3000
EXPOSE 3000

# Default command to run the app
CMD ["npm", "run", "dev"]

