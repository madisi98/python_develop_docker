FROM python:3.8
WORKDIR /utils

COPY . .
RUN chmod -R 777 .

WORKDIR /manu

RUN apt update
RUN apt install vim screen ffmpeg libsm6 libxext6 -y

RUN pip install pandas numpy opencv-python google-cloud-vision 
RUN pip install jupyterlab
RUN curl -fsSL https://code-server.dev/install.sh | sh

ENTRYPOINT ["sh", "/utils/init_develop.sh"]
