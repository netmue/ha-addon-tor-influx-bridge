ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache tor torsocks socat

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]