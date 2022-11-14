FROM nginx:1.23.2-alpine

COPY nginx.conf /etc/nginx/
COPY cmd.sh /usr/local/bin
COPY index.html /usr/share/nginx/html/

CMD /bin/sh -e /usr/local/bin/cmd.sh
