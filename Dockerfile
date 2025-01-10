FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    software-properties-common \
    git \
    build-essential \
    curl \
    x11-apps \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update

RUN apt-get install -y python3.10 python3.10-venv python3-pip

RUN python3 -m pip install --upgrade pip


WORKDIR /app

COPY . .

RUN pip install -r requirements.txt