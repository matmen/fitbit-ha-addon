ARG BUILD_FROM
FROM ${BUILD_FROM}

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy all required files
COPY requirements.txt /app/
COPY Fitbit_Fetch.py /app/
COPY run.sh /app/

# Install requirements
RUN python -m pip install -r requirements.txt

# Debug: Show file contents and permissions
RUN ls -la /app && \
    echo "File contents:" && \
    cat /app/run.sh && \
    echo "File type:" && \
    file /app/run.sh

# Setup permissions
RUN groupadd --gid 1000 appuser \
    && useradd --uid 1000 --gid appuser --shell /bin/bash --create-home appuser \
    && chown -R appuser:appuser /app \
    && chmod +x /app/run.sh

USER appuser

# Debug: Show final state
RUN ls -la /app && \
    echo "Current user:" && \
    whoami && \
    echo "Current path:" && \
    pwd

CMD [ "/app/run.sh" ]