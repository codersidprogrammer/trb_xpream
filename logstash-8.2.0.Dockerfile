FROM logstash:8.2.0
RUN curl -L --output "mssql.tar.gz" "https://download.microsoft.com/download/4/d/5/4d5a79be-35f8-48d4-a984-473747362f99/sqljdbc_10.2.1.0_enu.tar.gz" \
    && tar -xf "mssql.tar.gz" "sqljdbc_10.2/enu/mssql-jdbc-10.2.1.jre17.jar" \
    && tar -xf "mssql.tar.gz" "sqljdbc_10.2/enu/mssql-jdbc-10.2.1.jre11.jar" \
    && tar -xf "mssql.tar.gz" "sqljdbc_10.2/enu/mssql-jdbc-10.2.1.jre8.jar" \
    && ls sqljdbc_10.2 \
    && ls sqljdbc_10.2/enu \
    && mv "sqljdbc_10.2/enu/mssql-jdbc-10.2.1.jre17.jar" "mssql-jdbc-10.2.1.jre17.jar" \
    && mv "sqljdbc_10.2/enu/mssql-jdbc-10.2.1.jre11.jar" "mssql-jdbc-10.2.1.jre11.jar" \
    && mv "sqljdbc_10.2/enu/mssql-jdbc-10.2.1.jre8.jar" "mssql-jdbc-10.2.1.jre8.jar" \
    && rm -r "sqljdbc_10.2" "mssql.tar.gz" \
    && ls
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]