################
# SWTICH Image #
################
# FROM gcr.io/google-appengine/python
FROM python:3.10.6
RUN pip install --upgrade pip

run cd /Dark-Phish
RUN pip install requests wget pyshorteners

CMD ["python", "dark-phish.py"]