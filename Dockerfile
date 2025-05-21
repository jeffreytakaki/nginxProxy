FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

# Create log directory and set permissions
RUN mkdir -p /var/log/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chmod -R 755 /var/log/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]