FROM python:3.11.4-bookworm


RUN apt update && apt install python3-dev -y

RUN pip3 install "tatsu-lts==5.14" &&  pip install fava==1.30.9 && pip3 install git+https://github.com/andreasgerstmayr/fava-dashboards.git && pip3 install fava-envelope && pip3 install git+https://github.com/beancount/beanprice.git && pip3 install beancount-periodic

ENV BEANCOUNT_FILE ""
ENV FAVA_HOST "0.0.0.0"

ENTRYPOINT [ "fava" ]
