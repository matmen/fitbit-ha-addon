ARG BUILD_FROM
FROM ${BUILD_FROM}

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apk add --no-cache bashio
RUN apt-get update && apt-get install -y bash

# Copy all required files
COPY requirements.txt /app/
COPY Fitbit_Fetch.py /app/
COPY run.sh /app/

# Install requirements
RUN python -m pip install -r requirements.txt

# Setup permissions
RUN groupadd --gid 1000 appuser \
    && useradd --uid 1000 --gid appuser --shell /bin/bash --create-home appuser \
    && chown -R appuser:appuser /app \
    && chmod +x /app/run.sh

USER appuser

CMD [ "/app/run.sh" ]