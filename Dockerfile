FROM python:3.7

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install sudo -y
COPY build.sh ./
RUN sudo bash ./build.sh

COPY . .

CMD ["pip3", "list"]
CMD ["bash", "test_coral.sh"]
#[ "python", "./your-daemon-or-script.py" ]
