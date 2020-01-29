FROM golang:1.13.7-alpine

VOLUME ["/go/src"]
VOLUME ["/go/log"]

RUN apk update
RUN apk add --no-cache git
RUN apk add --no-cache supervisor
RUN mkdir /etc/supervisor.d/

ADD build.sh /go/build.sh
ADD app.ini /etc/supervisor.d/app.ini

CMD ["/go/build.sh", "/go"]

EXPOSE 3000