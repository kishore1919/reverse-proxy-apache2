# Apache2 Reverse Proxy

## Overview
This project demonstrates how to configure an Apache2 server as a reverse proxy. A reverse proxy sits in front of backend servers and forwards client (e.g., web browser) requests to those servers. This is useful for load balancing, SSL termination, and enhanced security.

## Features
- **Reverse Proxy:** Forwards HTTP and HTTPS requests to a backend application server.
- **Flexibility:** Provides configuration examples for common use cases.
- **Docker Support:** Includes a Docker image for easy deployment and testing.

## Prerequisites
- A server with Apache2 installed and running.
- `sudo` or root access to manage Apache services and configurations.
- A backend application or server to proxy requests to (e.g., a Node.js app on `http://localhost:3000`).
- Basic knowledge of the command line and Apache configuration.

## Manual Setup Instructions

### 1. Clone the Repository
   ```bash
   git clone https://github.com/kishore1919/reverse-proxy-apache2.git
   cd reverse-proxy-apache2
   ```

### 2. Enable Required Apache Modules
You need to enable the proxy modules in Apache.

```bash
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo systemctl restart apache2
```
For SSL (HTTPS) proxying, you'll also need `ssl` and `proxy_wstunnel` for WebSockets if applicable.

### 3. Configure the Reverse Proxy
Create a new Apache configuration file for your site. For example, `reverse-proxy.conf`.

```bash
sudo nano /etc/apache2/sites-available/reverse-proxy.conf
```

Add the following content to the file. This example proxies requests from `http://your_domain_or_ip/` to a backend server running on `http://localhost:8000`.

```apache
<VirtualHost *:80>
    ServerName your_domain_or_ip
    
    ProxyPreserveHost On
    ProxyPass / http://localhost:8000/
    ProxyPassReverse / http://localhost:8000/
    
    ErrorLog ${APACHE_LOG_DIR}/reverse-proxy-error.log
    CustomLog ${APACHE_LOG_DIR}/reverse-proxy-access.log combined
</VirtualHost>
```
**Note:** Replace `your_domain_or_ip` with your server's public IP or domain name, and `http://localhost:8000/` with the address of your backend service.

### 4. Enable the Site and Restart Apache
```bash
# Disable the default site if it's enabled
sudo a2dissite 000-default.conf

# Enable your new reverse proxy configuration
sudo a2ensite reverse-proxy.conf

# Test the configuration and restart Apache
sudo apache2ctl configtest
sudo systemctl restart apache2
```

Your reverse proxy should now be active.

## Docker Usage

A Docker image is available for a quick setup.

### 1. Pull the Image
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
