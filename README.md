# reverse-proxy-apache2

## Overview
This project demonstrates how to configure an Apache2 server as a reverse proxy. A reverse proxy forwards client requests to backend servers, providing benefits such as load balancing, caching, and enhanced security.

## Features
- Reverse proxy setup using Apache2.
- Configuration examples for forwarding requests to backend servers.
- Easy-to-follow setup instructions.

## Prerequisites
- Apache2 installed on your system.
- Basic knowledge of Apache configuration files.
- Access to a backend server for testing.

## Setup Instructions
1. Clone this repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd reverse-proxy-apache2
   ```
3. Follow the configuration steps in the provided documentation to set up the reverse proxy.

## Docker Image

A Docker image is available for easy deployment:

```bash
docker pull ghcr.io/kishore1919/reverse-proxy-apache2:latest
```

## Screenshots
Below are some screenshots showcasing the project setup and functionality:

### Reverse Proxy in Action with Http
![Reverse Proxy in Action](https://github.com/kishore1919/reverse-proxy-apache2/blob/main/ex1.png?raw=true)

### Reverse Proxy in Action with Https
![Reverse Proxy in Action](https://github.com/kishore1919/reverse-proxy-apache2/blob/main/ex2.png?raw=true)

## License
This project is licensed under the Apache License 2.0. See the LICENSE file for details.
