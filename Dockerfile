################
# SWTICH Image #
################
# FROM gcr.io/google-appengine/python
FROM python:3.10.6
RUN pip install --upgrade pip
RUN apt-get update && apt-get upgrade -y && apt-get install -y libgdal-dev gcc g++ binutils libproj-dev gdal-bin && \
    apt-get clean -y
RUN apt-get update && apt install python3 curl php git openssh nodejs npm -y
RUN pip install requests wget pyshorteners

CMD ["python", "dark-phish.py"]