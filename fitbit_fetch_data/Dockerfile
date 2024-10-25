ARG BUILD_FROM=python:3.10-slim
FROM ${BUILD_FROM}

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY ./Fitbit_Fetch.py /app
COPY ./requirements.txt /app
COPY ./run.sh /

# Set up user and permissions
RUN groupadd --gid 1000 appuser && \
    useradd --uid 1000 --gid appuser --shell /bin/bash --create-home appuser && \
    chown -R appuser:appuser /app && \
    chmod a+x /run.sh

USER appuser

CMD [ "/run.sh" ]