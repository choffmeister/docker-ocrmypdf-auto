# ocrmypdf-auto

A docker daemon that watches a given folder and automatically runs [OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF) on PDFs placed inside that folder.

```
docker run -d -v "$(PWD)/data:/data" ghcr.io/choffmeister/ocrmypdf-auto:latest
```