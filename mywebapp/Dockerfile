FROM python:3.11.4-alpine3.17
COPY app.py /main/app.py
COPY requirements.txt /main/requirements.txt
WORKDIR /main
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3", "/main/app.py"]
