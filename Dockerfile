################
# SWTICH Image #
################
# FROM gcr.io/google-appengine/python
FROM python:3.10.6
RUN pip install --upgrade pip

RUN apt-get update && apt-get install python3 curl php nodejs npm -y
RUN pip install requests wget pyshorteners

CMD ["python", "dark-phish.py"]