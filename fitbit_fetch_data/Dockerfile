ARG BUILD_FROM
FROM ${BUILD_FROM}

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy all required files
COPY fitbit_fetch_data/requirements.txt /app/
COPY fitbit_fetch_data/Fitbit_Fetch.py /app/
COPY fitbit_fetch_data/run.sh /app/

# Install requirements
RUN python -m pip install -r requirements.txt

# Setup permissions
RUN groupadd --gid 1000 appuser \
    && useradd --uid 1000 --gid appuser --shell /bin/bash --create-home appuser \
    && chown -R appuser:appuser /app \
    && chmod +x /app/run.sh

USER appuser

CMD [ "/app/run.sh" ]