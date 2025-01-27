################
# SWTICH Image #
################
# FROM gcr.io/google-appengine/python
FROM python:3.10.6
RUN pip install --upgrade pip
RUN apt update && apt upgrade -y && apt install php -y
ADD . /app
WORKDIR /app/
RUN ls
RUN pwd
RUN pip install requests wget pyshorteners asyncio python-telegram-bot
RUN export TERM=xterm
CMD ["python3", "dark-phish.py"]