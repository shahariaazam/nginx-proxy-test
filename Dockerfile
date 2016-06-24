FROM previewtechs/nginx:proxy

# Bundle app source
COPY . /usr/src/app
COPY invoicespring-proxy.conf /etc/nginx/sites-available

RUN echo "include sites-available/invoicespring-proxy.conf;" >> /etc/nginx/sites-available/default

EXPOSE 80

CMD [ "nginx", "restart" ]