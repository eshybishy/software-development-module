FROM python:3.10-slim

WORKDIR /app

COPY . .

ENTRYPOINT ["/bin/bash", ".github/scripts/entrypoint.sh"]
