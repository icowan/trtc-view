FROM nginx:latest

COPY ./ /usr/share/nginx/html
# ADD xxx.com.conf /etc/nginx/conf.d/ # 如果需要的话

CMD ["/bin/bash", "-c", "nginx && tail -f /var/log/nginx/access.log"]
