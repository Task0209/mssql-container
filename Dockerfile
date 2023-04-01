FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN chmod +x /usr/src/app/run-initialization.sh

ENV MSSQL_SA_PASSWORD Qwerty@12345
ENV ACCEPT_EULA Y
ENV MSSQL_PID Developer

EXPOSE 1433

CMD /bin/bash ./entrypoint.sh
