FROM thisisarpanghosh/fitbit-fetch-data:latest

COPY run.sh /run.sh
COPY requirements.txt /app/requirements.txt
COPY Fitbit_Fetch.py /app/Fitbit_Fetch.py

RUN chmod a+x /run.sh
RUN pip install -r /app/requirements.txt