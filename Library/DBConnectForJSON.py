import pypyodbc

def dbc():
    conn = pypyodbc.connect('Driver={SQL Server};'
                      'Server=localhost;'
                      'Database=DISCRETE_FTPC;'
                      'Trusted_Connection=yes;')

    cursor = conn.cursor()

    cursor.execute('SELECT * FROM PART')

    result = cursor.fetchall()
    cursor.execute('SELECT count (*) FROM PART')
    BomTotalCount = cursor.fetchone()
    result_set = []
    for val in result:

        result_set.append(str(val))
        result_newline = "\n".join(result_set)
        #val.append(str(result) + '\n')
        #result.append(str(val))

       #result = '\n'.split(result_set)
      # print(','.split(result_set))
        #result_set.append()
    #print('\n')
   # print(result_set)
    print(result_newline )
    Record_count = "Total No Of Records " + str(BomTotalCount)
    print(Record_count)
    return(result_newline, Record_count)
    #return (Record_count)
    #print(result_set)
   # return(result_set)

    #ctr = 0
    #Lst = []
    #while ctr < len(result):
       # Lst.append(list(result[ctr]))
        #ctr += 1
        #print(result, '\n')
        #return(result)
        # newline = "\n\r"
        # print(Lst, end=" ")
        #print("\n")
       # Lst = {newline}
        #print(f"original list:", result)
        #Lst = '\n'.join(result)
        #print(f"\noriginal list:\n{result}")
        #Lst = '\n'.join(result)
       #Lst.append(row)
        #lst = []
        #for  i in result:
       # i = []
        #return (i)
       # i = i + 1
       # result = dbc()
        #abc[i] += 1
       # print(i, '\n')
       # result = lst.append(i)
       #result = i + result
        #result = '\n'.join(Lst)
       #return ('\r\n',result)
        #result = "\n".split(separator, Lst)
       # i = i + 1
       # return(result)

dbc()
