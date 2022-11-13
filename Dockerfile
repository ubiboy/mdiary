FROM python:3.9.0

WORKDIR /home/

RUN echo "testing123"

RUN git clone https://github.com/ubiboy/mdiary.git

WORKDIR /home/mdiary/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=mdiary.settings.deploy && python manage.py migrate --settings=mdiary.settings.deploy  && gunicorn mdiary.wsgi --env DJANGO_SETTINGS_MODULE=mdiary.settings.deploy --bind 0.0.0.0:8000"]