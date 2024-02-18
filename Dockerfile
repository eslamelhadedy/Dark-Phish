################
# SWTICH Image #
################
# FROM gcr.io/google-appengine/python
FROM python:3.10.6
RUN pip install --upgrade pip

ADD . /app
WORKDIR /app/
RUN pip install requests wget pyshorteners

CMD ["python", "dark-phish.py"]