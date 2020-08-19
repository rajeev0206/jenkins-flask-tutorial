FROM ubuntu:latest 
MAINTAINER Angello Maggio "angellom@jfrog.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
ADD . /flask-app
WORKDIR /flask-app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask-docker.py"]
