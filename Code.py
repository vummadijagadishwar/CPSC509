import mysql.connector
from mysql.connector import errorcode

try:
   cm_connection = mysql.connector.connect(
      user="cs509",
      password="cs509",
      host="127.0.0.1",
      database="restaurant")
      
   my_cursor = cm_connection.cursor()
   query = ("SELECT * FROM customer")  

    my_cursor.execute(query) 

    for row in my_cursor.fetchall():
        print("{} is  {}".format(row[1], row[2]))

    my_cursor.close()
    cm_connection.close()   



except mysql.connector.Error as err:
   if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
      print("Invalid credentials")
   elif err.errno == errorcode.ER_BAD_DB_ERROR:
      print("Database not found")
   else:
      print("Cannot connect to database:", err)

else:
   # Execute database operations...
   cm_connection.close()
