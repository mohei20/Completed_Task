## Overview

This repository contains a simple web application with two main components:

1. **API**: Written in Laravel PHP, the API serves as the backend for the application and listens on port 8000.
2. **Client**: Developed using Nuxt.js, the client is the frontend of the application and listens on port 3000.

### Environment Variables

- **API Directory**: Take a look at the `.env` file in the API directory. It should contain the necessary credentials to connect to the database.

  ```env
    DB_CONNECTION=mysql
    DB_HOST=db
    DB_PORT=3306
    DB_DATABASE=bookapi
    DB_USERNAME=app
    DB_PASSWORD=password
  ```

## Prerequisites

Before you begin, ensure you have the following installed:

- [Docker](https://docs.docker.com/get-docker/) (version 20.10 or later)
- [Docker Compose](https://docs.docker.com/compose/install/) (version 1.29 or later)

## Getting Started

Follow these steps to set up and run the application using Docker Compose.

### 1. Clone the Repository

Start by cloning the repository:

```bash
git clone https://github.com/your-username/your-repository.git
cd your-repository
```
### 2.  Generate Self-Signed Certificates (Optional)

If you want to use HTTPS with Nginx, generate self-signed certificates:

```bash
mkdir -p certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout certs/nginx.key -out certs/nginx.crt \
  -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

```

### 3. Build and Start the Application

```bash 
docker-compose up --build
```
### 4. Access the Application

API: Access the PHP API at http://localhost:8000.
Client: Access the Nuxt.js client application at http://localhost:3000.
Nginx (HTTP): Nginx serves content at http://localhost.
Nginx (HTTPS): If configured, Nginx will also serve content at https://localhost.

### 5. Stop and Remove Containers

To stop and remove all containers, networks, and volumes created by Docker Compose, use:

```bash

docker-compose down
``` 

