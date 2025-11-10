# Gunakan image resmi Bun
FROM oven/bun:1.2

# Set direktori kerja
WORKDIR /app

# Salin seluruh file proyek ke dalam container
COPY . .

# Install Nuekit secara global
RUN bun install --global nuekit

# Pastikan Nuekit masuk ke PATH
ENV PATH="/root/.bun/bin:${PATH}"

# Expose port default Nue (4000)
EXPOSE 4000

# Jalankan serv
