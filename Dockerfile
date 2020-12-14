FROM ubuntu

ADD HelloDocker.py /

CMD ["python", "./HelloDocker.py"]
