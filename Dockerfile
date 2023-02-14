FROM python:latest

WORKDIR /ChatGPT

RUN mkdir src

COPY setup.py setup.py

RUN pip3 install .

COPY . .

ENTRYPOINT ["python3", "src/revChatGPT/V2.py"]