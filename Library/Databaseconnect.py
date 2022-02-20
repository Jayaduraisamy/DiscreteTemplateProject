import pypyodbc

def dbc():
    conn = pypyodbc.connect('Driver={SQL Server};'
                      'Server=localhost;'
                      'Database=DISCRETE_FTPC;'
                      'Trusted_Connection=yes;')

    cursor = conn.cursor()

    cursor.execute('SELECT * FROM DC_Staging_super_Bom')

    result = cursor.fetchall()
    cursor.execute('SELECT count (*) FROM DC_Staging_super_Bom')
    BomTotalCount = cursor.fetchone()
    result_set = []
    for val in result:

        result_set.append(str(val))
        result_newline = "\n".join(result_set)
    print(result_newline )
    Record_count = "Total No Of Records " + str(BomTotalCount)
    print(Record_count)
    return(result_newline, Record_count)

dbc()
