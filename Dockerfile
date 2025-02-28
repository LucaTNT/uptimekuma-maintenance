FROM python:alpine

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY main.py /app/
CMD ["fastapi", "run", "main.py", "--port", "80"]
