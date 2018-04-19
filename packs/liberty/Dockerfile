#use open liberty runtime
FROM openliberty/open-liberty:javaee7
ENV PORT 9080
EXPOSE 9080
# Symlink servers directory for easier mounts.
RUN ln -s /opt/ol/wlp/usr/servers /servers


COPY target/*.war /servers/defaultServer/dropins/app.war

ENTRYPOINT ["/opt/ol/wlp/bin/server", "run"]
CMD ["defaultServer"]
