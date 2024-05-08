FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3.6 python3-pip

WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 8000
  
CMD ["python3", "manage.py", "runserver","0.0.0.0:8000"]
