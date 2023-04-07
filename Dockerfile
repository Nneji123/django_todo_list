FROM python:3.8.13-slim-bullseye

WORKDIR /app

RUN apt-get -y update && apt-get install -y \
  wget 

RUN pip install --upgrade setuptools 

COPY requirements.txt .

RUN pip install -r requirements.txt && python manage.py collectstatic

ADD . . 

CMD gunicorn 0.0.0.0:5000 todo_list.wsgi:application