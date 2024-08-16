# Use the Nginx stable Alpine image
FROM nginx:stable-alpine

# Copy Nginx configuration file into the container
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Copy API code into the container (if needed)
COPY api /var/www/html

# Expose port 80 for Nginx
EXPOSE 80
