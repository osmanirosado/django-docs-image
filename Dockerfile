FROM bash:latest as builder

ARG version = 1.11

# Download the documentation
ADD https://docs.djangoproject.com/m/docs/django-docs-${version}-en.zip /home

# Unpack the documentation
RUN mkdir /home/docs
RUN unzip -q /home/django-docs-${version}-en.zip -d /home/docs

# Grant read and execute permits to others on docs directory
RUN chmod -R o+rx /home/docs

FROM httpd:latest

# Copy the result obtained in builder stage
COPY --from=builder /home/docs /usr/local/apache2/htdocs
