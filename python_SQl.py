import mysql.connector
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password= "xSSanDev",
    database="alx_book_store"
)
mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM your_table")
myresult = mycursor.fetchall()

for row in myresult:
  print(row)