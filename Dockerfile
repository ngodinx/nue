FROM oven/bun:1.2

WORKDIR /app
COPY . .

# Install Nuekit CLI
RUN bun install --global nuekit || bunx nuekit@latest
ENV PATH="/root/.bun/bin:/usr/local/bin:${PATH}"

# Build project (hasil static build)
RUN bunx nue build

EXPOSE 4000

# Jalankan hasil build tanpa HMR
CMD ["bunx", "nue", "serve"]
