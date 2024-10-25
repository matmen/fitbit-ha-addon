ARG BUILD_FROM
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install required packages
RUN apk add --no-cache \
    python3 \
    py3-pip \
    gcc \
    musl-dev \
    python3-dev

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install requirements for add-on
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Create necessary directories
RUN mkdir -p /share/fitbit/logs \
    && mkdir -p /share/fitbit/tokens \
    && mkdir -p /app

# Copy application files
COPY Fitbit_Fetch.py /app/
COPY run.sh /usr/bin/
RUN chmod a+x /usr/bin/run.sh

# Switch back to /
WORKDIR /

CMD [ "/usr/bin/run.sh" ]