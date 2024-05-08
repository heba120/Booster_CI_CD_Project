FROM python:3.9-slim  

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt  

COPY . .

EXPOSE 8000

RUN python manage.py makemigrations
RUN python manage.py migrate

CMD ["python3.6", "manage.py", "runserver", "0.0.0.0:8000"]
