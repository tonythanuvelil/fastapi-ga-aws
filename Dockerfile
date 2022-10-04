FROM python:3.9.14-buster

RUN mkdir -p /code
COPY . /code/
WORKDIR /code
RUN pip install -r requirements.txt
# EXPOSE 8080
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]