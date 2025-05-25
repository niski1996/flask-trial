FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_trial create-db
RUN flask_trial populate-db
RUN flask_trial add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_trial", "run"]
