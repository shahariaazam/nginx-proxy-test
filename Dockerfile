FROM previewtechs/nginx:proxy

# Bundle app source
COPY . /usr/share/nginx/html

RUN rm -rf /etc/nginx/sites-available/default

COPY invoicespring-proxy.conf /etc/nginx/sites-available

RUN mv /etc/nginx/sites-available/invoicespring-proxy.conf /etc/nginx/sites-available/default

EXPOSE 80