import mysql
import mysql.connector
import pymysql


mydb = mysql.connector.connect(
    host ="localhost", user ="root", password= "insecure",  database= "mynursery", port= "33066")

cursor = mydb.cursor()