################
# SWTICH Image #
################
# FROM gcr.io/google-appengine/python
FROM python:3.10.6
RUN pip install --upgrade pip

ADD . /app
WORKDIR /app/
RUN ls
RUN pwd
RUN pip install requests wget pyshorteners
RUN export TERM=xterm
CMD ["python3", "dark-phish.py"]