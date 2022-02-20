import pypyodbc


conn = pypyodbc.connect('Driver={SQL Server};'
                          'Server=localhost;' 
                          'Database=DISCRETE_FTPC;'
                          'Trusted_Connection=yes;')

cursor = conn.cursor()
cursor.execute('SELECT *  FROM DC_Staging_super_Bom')
myresult = cursor.fetchall()
for row in myresult:
    print('row = %r' % (row,))



