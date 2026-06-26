# Static single-page site served by Caddy.
# Railway builds this Dockerfile and runs the container, passing $PORT.
FROM caddy:2-alpine

COPY Caddyfile /etc/caddy/Caddyfile

# Only the files the page needs (index + the deliverable assets).
COPY index.html /srv/index.html
COPY ["Sample Deliverables", "/srv/Sample Deliverables"]
