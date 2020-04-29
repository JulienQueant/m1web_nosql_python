FROM ubuntu:latest

ADD . /workspace

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    vim \
    git

# RUN pip freeze
RUN pip3 install -r requirements.txt

ARG username
ARG password

EXPOSE 8000

RUN git clone https://${username}:${password}@github.com/JulienQueant/m1web_nosql_python.git

RUN pip3 install jupyter
CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root" ]