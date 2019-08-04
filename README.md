# Django Documentation

A docker image with the documentation of Django.

## Description

### Run

To run the documentation of Django 1.11 on port 8086 execute.

```
docker run -p 8086:80 -d osmanirosado/django-docs:1.11
```

To run the documentation of Django 2.2 on port 8087 execute.

```
docker run -p 8087:80 -d osmanirosado/django-docs:2.2
```

### Build

To build the documentation image for Django 1.11.

```[bash]
docker build --build-arg version=1.11 -t django-docs:1.11 .
```

To build the documentation image for Django 2.2.

```[bash]
docker build --build-arg version=2.2 -t django-docs:2.2 .
```
