# Use Nginx as base image
FROM nginx:alpine

# Copy application files to Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]