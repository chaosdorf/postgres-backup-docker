FROM postgres:14-alpine
ADD backup.sh .
ENV PGHOST=db
ENV PGUSER=postgres
ENV PGPASSWORD=postgres
VOLUME /backup
CMD ./backup.sh
