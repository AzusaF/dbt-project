ARG AIRFLOW_IMAGE_NAME="2.2.5-python3.8"

FROM --platform=linux/amd64 apache/airflow:${AIRFLOW_IMAGE_NAME}

RUN pip3 install fastavro==1.7.0
# - Install GCP util
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/home/airflow/google-cloud-sdk/bin
