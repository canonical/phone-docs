# Build stage: Build static HTML files
FROM python:3.8-alpine AS builder

WORKDIR /srv

# Install python dependencies
ADD . .
RUN pip3 install -r requirements.txt
RUN documentation-builder --base-directory docs --no-link-extensions --tag-manager-code 'GTM-K92JCQ'

# Build stage: Build the production image
FROM nginx:1.25.1-alpine
WORKDIR /srv

# Set git commit ID
RUN apk add git
RUN echo "export COMMIT_ID=$(git rev-parse HEAD || echo 'unknown')" >> /envfile
RUN . /envfile; test -n "${COMMIT_ID}"

# Copy built html from previous stage
COPY --from=builder /srv/build/en /srv/en

# Set nginx config
COPY nginx/ /etc/nginx/
RUN . /envfile; sed -i "s/~COMMIT_ID~/${COMMIT_ID}/" /etc/nginx/sites-enabled/default
RUN sed -i "s/8201/80/" /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]