ARG BUILD_FROM
FROM $BUILD_FROM

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
RUN pip install -r requirements.txt

# Setup permissions
RUN addgroup -S appuser -g 1000 \
    && adduser -S appuser -u 1000 -G appuser \
    && chown -R appuser:appuser /app \
    && chmod +x /app/run.sh

USER appuser

RUN ls -la /app

CMD [ "/app/run.sh" ]
