import mysql
import mysql.connector
import pymysql


mydb = mysql.connector.connect(
    host ="localhost", user ="root", password= "insecure",  database= "mynursery", port= "33066", auth_plugin= "mysql_native_password" )

cursor = mydb.cursor()





while (True):
    name = input("Enter Children name")

    if name == "quit":
        exit()
    age = input ("Enter child's age")
    Gender = input("enter child's gender")

    sql = "INSERT INTO Children (name, age, Gender) VALUES (%s, %s, %s)"
    vals = (name, age, Gender)
    cursor.execute(sql, vals)
    mydb.commit()
        
    print("Data saved to the database")



