FROM python:3

ADD HelloDocker.py /

RUN pip install pystrich

CMD ["python", "./HelloDocker.py"]
