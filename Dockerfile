FROM python:3-alpine

COPY . /kaspaclient/
WORKDIR /kaspaclient/
RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "kaspaclient.py" ]