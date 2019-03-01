FROM bash:5.0 as builder

# Download the documentation
ADD https://docs.djangoproject.com/m/docs/django-docs-1.11-en.zip /home

# Unpack the documentation
RUN mkdir /home/docs
RUN unzip /home/django-docs-1.11-en.zip -d /home/docs

# Grant read and execute permits to others on docs directory
RUN chmod -R o+rx /home/docs

FROM httpd:2.4-alpine

# Copy the result obtained in builder stage
COPY --from=builder /home/docs /usr/local/apache2/htdocs
