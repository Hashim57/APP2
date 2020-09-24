FROM python

ADD app2.py /

COPY .venv /

COPY config.py /

RUN pip install mysql-connector-python

RUN pip install mysql.connector

RUN pip install pymysql

CMD [ "python", "./app2.py" ]







