FROM python

ADD app2.py /

RUN pip install pystrich

COPY bootstrap.sh /

RUN pip install mysql-connector-python

RUN pip install mysql.connector

RUN pip install pymysql

EXPOSE 33066

CMD [ "python", "./app2.py" ]





