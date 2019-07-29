# Django Documentation

A docker image with the documentation of Django 1.11.

## Description

### Build

To build the documentation image for Django 1.11.

```[bash]
docker build .
```

To build the documentation image for Django 2.2.

```[bash]
docker build --build-arg version=2.2 .
```

### Run

To run the documentation service on port 8086 execute

```
docker run --name django-docs -p 8086:80 -d osmanirosado/django-docs
```
