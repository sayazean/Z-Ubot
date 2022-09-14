FROM mrismanaziz/man-userbot:buster

RUN git clone -b Z-Ubot https://github.com/sayazean/Z-Ubot /home/zubot/ \
    && chmod 777 /home/zubot \
    && mkdir /home/zubot/bin/

COPY ./sample_config.env ./config.env* /home/zubot/

WORKDIR /home/zubot/

CMD ["python3", "-m", "userbot"]
