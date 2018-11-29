FROM openjdk:8

WORKDIR /app
COPY ./ebms-admin-2.15.1.jar /app/bin/
WORKDIR /app/conf

EXPOSE 8080 8888

ENTRYPOINT [ "java", "-cp", "/app/bin/ebms-admin-2.15.1.jar", "nl.clockwork.ebms.admin.StartEmbedded" ]

CMD [ "-hsqldb" ]
