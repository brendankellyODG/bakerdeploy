FROM fastscore/engine:linearexample

WORKDIR /assets/
COPY lr-1.py3 close_price.avsc rest.json rest1.json /assets/ 

ENV MODEL /assets/lr-1.py3
ENV SCHEMAS close_price:/assets/close_price.avsc
ENV STREAMS 0:/assets/rest1.json;1:/assets/rest.json


WORKDIR /fastscore

ADD ./lr_pickle1.tar.gz /fastscore/artifacts/
