FROM alpine:3.23
LABEL lan.net.image.description="Run PowerShell in uWSGI CGI"
COPY install.sh /tmp/install.sh
RUN chmod 0755 /tmp/install.sh && /tmp/install.sh && rm -rf /tmp/install.sh
VOLUME ["/var/www", "/etc/uwsgi/conf.d"]
ENTRYPOINT ["/usr/sbin/uwsgi", "/etc/uwsgi/uwsgi.ini"]