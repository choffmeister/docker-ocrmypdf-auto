FROM alpine:3.20.0
RUN apk add --update --no-cache s6 ocrmypdf tesseract-ocr tesseract-ocr-data-eng tesseract-ocr-data-deu tesseract-ocr-data-osd
COPY docker-entry.sh /docker-entry.sh
COPY daemon.py /daemon.py
ENV TESSDATA_PREFIX /usr/share/tessdata
ENV OCRMYPDF_LANGUAGE eng+deu
ENV OCRMYPDF_JOBS 4
ENV PUID 1000
ENV PGID 1000
WORKDIR /tmp
ENTRYPOINT ["/docker-entry.sh"]
