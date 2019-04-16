# ocrmypdf-auto

A docker daemon that watches a given folder and automatically runs [OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF) on PDFs placed inside that folder.

```
# out of the box supported languages are "eng" and "deu"
docker run -d -e PUID=1000 -e PGID=1000 -v $PWD:/data -e OCRMYPDF_LANGUAGE=eng choffmeister/ocrmypdf-auto:latest
```