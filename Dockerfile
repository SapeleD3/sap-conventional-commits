# pull from tiangolo image
FROM tiangolo/uvicorn-gunicorn:python3.9

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app
COPY . /app/

# install dependencies
RUN pip install -U pip
RUN --mount=type=cache,target=/root/.cache \
    pip install -r requirements.txt

RUN fastapi run main.py
