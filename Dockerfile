FROM python:2.7.9

RUN apt-get update -y
RUN apt-get upgrade -y
RUN pip install --upgrade pip

RUN apt-get install python-dev libmysqlclient-dev -y
RUN apt-get install unixodbc-dev python-pyodbc -y

RUN apt-get install tesseract-ocr -y
RUN apt-get install tesseract-ocr-eng -y
RUN apt-get install imagemagick -y

RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt

VOLUME /app

EXPOSE 8000

#Provisioning 
#ENTRYPOINT /usr/bin/docker_entrypoint.sh

#Service
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000", "--insecure"]
