FROM python:2.7-alpine

ADD src/ /app/

WORKDIR /app

RUN apk update && \
    apk add wget curl bash

RUN pip install -r /app/requirements.txt

RUN echo $HOME

ENTRYPOINT ["/app/run.sh"]
