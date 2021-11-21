FROM python:3.8
WORKDIR /utils

COPY . .
RUN chmod -R 777 .

WORKDIR /workspace

RUN apt update
RUN apt install -y vim screen awscli
RUN apt install -y ffmpeg libsm6 libxext6

RUN pip install pandas numpy opencv-python google-cloud-vision 
RUN pip install jupyterlab
RUN curl -fsSL https://code-server.dev/install.sh | sh

ENTRYPOINT ["/utils/init_develop.sh"]
