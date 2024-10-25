FROM python:3.10-slim

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY ./Fitbit_Fetch.py /app
COPY ./run.sh /
COPY ./requirements.txt /app

RUN chmod a+x /run.sh \
    && mkdir -p /share/fitbit/logs \
    && mkdir -p /share/fitbit/tokens

RUN groupadd --gid 1000 appuser && \
    useradd --uid 1000 --gid appuser --shell /bin/bash --create-home appuser && \
    chown -R appuser:appuser /app /share/fitbit

USER appuser

CMD ["/run.sh"]