FROM ubuntu:22.10

ENV PYTHONWARNINGS="ignore"
ENV DEBIAN_FRONTEND="noninteractive" TZ="Asia/Jakarta"
RUN apt-get update -y & apt-get install -y python3 python3-pip python3-lxml git tzdata wget curl ffmpeg

RUN pip3 install --no-cache-dir -r requirements.txt
# Set CMD Bot
CMD ["python3", "main.py"]
