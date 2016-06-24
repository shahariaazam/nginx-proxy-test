FROM previewtechs/nginx:proxy

# Bundle app source
COPY . /usr/share/nginx/html

RUN rm -rf /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD [ "service", "nginx", "restart" ]