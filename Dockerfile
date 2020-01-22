FROM python:3.8.1-alpine3.11

ENV FLASK_APP "app.py"

RUN ["pip", "install", "--upgrade", "pip"]

WORKDIR flask_app/
COPY Pipfile .
COPY Pipfile.lock .
COPY app.py .

RUN ["pip", "install", "pipenv"]
RUN ["pipenv", "install", "--system"]

ENTRYPOINT ["python"]
CMD ["app.py"]
