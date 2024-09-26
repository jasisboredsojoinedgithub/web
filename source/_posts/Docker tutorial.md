---
title: Containerizing Your Development Environment with Docker
date: 2024-09-18
---

# 🐳 Docker Tutorial: Containerizing Your Development Environment

## 1. Why Use Docker?
Docker allows you to package your application and its dependencies into a container, ensuring consistent behavior across different environments (local, staging, or production). It isolates your environment, eliminating "works on my machine" issues.

## 2. Key Docker Concepts:
- **Image**: A self-contained package with the app, libraries, and dependencies.
- **Container**: A running instance of a Docker image.
- **Build**: Use `docker build` to create Docker images from a Dockerfile.

## 3. Creating a Dockerfile:
```Dockerfile
# Base image
FROM node:14
WORKDIR /app
COPY . .
RUN npm config set unsafe-perm true
RUN npm install -g hexo-cli
RUN npm install
CMD ["hexo", "server"]

Then Build and run the development environment using Docker:
 ```bash
    docker build -t my-hexo-site .
    docker run -p 4000:4000 my-hexo-site
