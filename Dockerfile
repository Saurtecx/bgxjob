FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

EXPOSE 80

ENV NAME World

RUN python -m nltk.downloader stopwords

CMD python app.py
