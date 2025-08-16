# Use the official Apache HTTP Server image from the Docker Hub
FROM httpd:2.4

# Copy the custom configuration files to the Apache conf directory
COPY ./conf/000-default.conf /usr/local/apache2/conf/httpd.conf
COPY ./conf/ports.conf /usr/local/apache2/conf/ports.conf
COPY ./conf/reverseproxy.conf /usr/local/apache2/conf/reverseproxy.conf
COPY ./conf/reverseproxy2.conf /usr/local/apache2/conf/reverseproxy2.conf

# Expose the necessary ports
EXPOSE 80
EXPOSE 443
EXPOSE 8080
