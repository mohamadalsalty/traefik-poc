# Traefik Proof of Concept (PoC)

## Overview

This project demonstrates a basic setup of **Traefik** as a reverse proxy using **Docker Compose**. Traefik routes incoming HTTP requests to a sample web application, showcasing fundamental routing capabilities.

## What is Traefik?

Traefik is a modern reverse proxy and load balancer that simplifies the deployment of microservices. It seamlessly integrates with various container orchestration systems like Docker, enabling automatic service discovery and dynamic configuration.

## Project Structure

```
traefik-poc/
├── docker-compose.yml
├── Makefile
└── README.md
```

- **docker-compose.yml**: Defines the Docker services, including Traefik and a sample web application.
- **Makefile**: Provides simple commands to manage the Docker services.
- **README.md**: This documentation file.

## How to Run the Project

### Prerequisites

Before you begin, ensure you have the following installed on your machine:

- **Docker**: [Download Docker](https://www.docker.com/get-started)
- **Docker Compose**: Typically included with Docker Desktop. Verify installation with:
  ```
  docker-compose --version
  ```
- **Make**: Most Unix-based systems have Make pre-installed. Verify with:
  ```
  make --version
  ```
  If not installed:
  - **Ubuntu/Debian**:
    ```
    sudo apt-get update
    sudo apt-get install build-essential
    ```
  - **macOS (using Homebrew)**:
    ```
    brew install make
    ```

### Steps to Run

1. **Clone the Repository**

   If you've hosted this project on a version control system like GitHub, clone it using:

   ```
   git clone https://github.com/mohamadalsalty/traefik-poc.git
   cd traefik-poc
   ```

   *If not using GitHub, simply create a new directory and navigate into it:*

   ```
   mkdir traefik-poc
   cd traefik-poc
   ```

2. **Create Necessary Files**

   - **docker-compose.yml**: Define the Docker services.
   - **Makefile**: Simplify Docker commands.

3. **Start the Services**

   Use the Makefile to build and start the Docker containers:

   ```
   make start
   ```

   This command will launch Traefik and the sample web application in detached mode.

4. **Access the Services**

   - **Sample Web Service**:
     - Open your browser and navigate to [http://localhost](http://localhost).
     - You should see a simple page displaying information about the request, indicating that the `whoami` service is running correctly.

   - **Traefik Dashboard**:
     - Navigate to [http://localhost:8080](http://localhost:8080).
     - You'll see the Traefik dashboard, which provides insights into the routers, services, and other configurations.

## Managing the Services

The provided **Makefile** offers convenient commands to manage your Docker services:

- **Start Services**
  ```
  make start
  ```

- **Stop Services**
  ```
  make stop
  ```

- **Restart Services**
  ```
  make restart
  ```

- **View Logs**
  ```
  make logs
  ```

- **Clean Up Resources**
  ```
  make clean
  ```

- **Check Status of Containers**
  ```
  make status
  ```

## Cleaning Up

When you're done with the PoC and want to remove all Docker containers, networks, and volumes, run:

```
make clean
```

This command stops all running containers and removes all associated resources.

## Next Steps

To further enhance your Traefik setup, consider the following:

- **Secure the Dashboard**:
  - Enable authentication and HTTPS for the Traefik dashboard to secure it in production environments.

- **Add More Services**:
  - Extend the `docker-compose.yml` to include additional services and configure routing for them.

- **Explore Middleware**:
  - Utilize Traefik's middleware features for advanced routing, authentication, rate limiting, and more.

- **Integrate with Orchestrators**:
  - Deploy Traefik in orchestrated environments like Docker Swarm or Kubernetes for scalable and resilient architectures.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use and modify it as per your requirements.
