# Gunakan image Node.js yang ringan
FROM node:18-alpine

# Set direktori kerja di dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json jika ada
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file project
COPY . .

# Build project Nue.js
RUN npm run build

# Jalankan server untuk serve hasil build
EXPOSE 3000
CMD ["npm", "start"]
