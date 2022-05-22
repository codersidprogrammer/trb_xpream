FROM logstash:8.2.0
RUN curl -L --output "mssql.tar.gz" "https://download.microsoft.com/download/F/0/F/F0FF3F95-D42A-46AF-B0F9-8887987A2C4B/sqljdbc_4.2.8112.200_enu.tar.gz" \
    && tar -xf "mssql.tar.gz" "sqljdbc_4.2/enu/jre8/sqljdbc42.jar" \
    && mv "sqljdbc_4.2/enu/jre8/sqljdbc42.jar" "sqljdbc42.jar" \
    && rm -r "sqljdbc_4.2" "mssql.tar.gz"
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]