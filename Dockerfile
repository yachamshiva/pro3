 # Use Nginx as the base image
FROM nginx

# Copy index.html from the local directory to the default Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP
EXPOSE 80

# No need to install httpd as Nginx is the web server
# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
