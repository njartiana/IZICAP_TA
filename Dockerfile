FROM ubuntu
RUN apt-get update

RUN apt install -y python3.10
RUN apt install -y python3-pip

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
ENTRYPOINT robot --outputdir Results TestCases/