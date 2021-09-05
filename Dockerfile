FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

RUN cd VideoPlayerBot
RUN git clone https://github.com/RarePeoplee/VideoPlayerBot

RUN cd VideoPlayerBot
WORKDIR /VideoPlayerBot

RUN pip3 install -U pip
RUN pip3 install -U -r requirements.txt

CMD python3 -m bot
