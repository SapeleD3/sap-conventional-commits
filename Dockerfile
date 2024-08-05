# pull from tiangolo image
FROM tiangolo/uvicorn-gunicorn:python3.9

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# install dependencies
COPY requirements.txt /app/
RUN pip install -U pip
RUN --mount=type=cache,target=/root/.cache \
    pip install -r requirements.txt

COPY . /app/

EXPOSE 8000

CMD ["python3", "-m", "fastapi", "run", "main.py"]
