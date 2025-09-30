FROM python:3.13.5

WORKDIR /app

COPY flask_project.py /app

RUN pip install flask

EXPOSE 8080

CMD ["python", "flask_project.py"]
