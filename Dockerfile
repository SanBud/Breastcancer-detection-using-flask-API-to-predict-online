FROM python:3.10-slim
COPY . /app
VOLUME ["/app"]
WORKDIR /app
#RUN apk --no-cache add musl-dev linux-headers g++
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]
