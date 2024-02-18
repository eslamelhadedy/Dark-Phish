################
# SWTICH Image #
################
# FROM gcr.io/google-appengine/python
FROM python:3.10.6
RUN pip install --upgrade pip

RUN ls
RUN pwd
RUN pip install requests wget pyshorteners

CMD ["python", "dark-phish.py"]