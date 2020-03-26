FROM bash:latest as builder

ARG version=2.2

WORKDIR /home

# Download the documentation
RUN wget -O archive.zip https://docs.djangoproject.com/m/docs/django-docs-${version}-en.zip

# Unpack the documentation
RUN mkdir docs && unzip -q archive.zip -d docs

# Grant read and execute permits to others on docs directory
RUN chmod -R o+rx docs

FROM httpd:alpine

# Copy the result obtained in builder stage
COPY --from=builder /home/docs /usr/local/apache2/htdocs
