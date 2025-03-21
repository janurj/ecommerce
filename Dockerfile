# Use Nginx to serve static files
FROM nginx:alpine

# Remove default Nginx config and copy custom config
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/

# Expose port 80 for serving the website
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
