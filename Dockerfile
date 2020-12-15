FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    usermod -aG docker jenkins

CMD ["python", "./HelloDocker.py"]
