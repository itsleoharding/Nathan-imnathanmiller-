# Static single-page site served by Caddy.
# Railway builds this Dockerfile and runs the container, passing $PORT.
FROM caddy:2-alpine

COPY Caddyfile /etc/caddy/Caddyfile

# Only the files the page needs (index, hero video + poster, deliverables).
COPY index.html /srv/index.html
COPY Video.mp4 /srv/Video.mp4
COPY Thumbnail.png /srv/Thumbnail.png
COPY ["Sample Deliverables", "/srv/Sample Deliverables"]
