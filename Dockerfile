FROM python:3.6
RUN git clone https://github.com/olihough86/BucketSnoop.git
WORKDIR /BucketSnoop/BucketSnoopServer/
RUN pip install -r requirements.txt
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /BucketSnoop/BucketSnoopServer/server.py
EXPOSE 9000
ENTRYPOINT ["python","server.py"]
