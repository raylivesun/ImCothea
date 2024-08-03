Set Db = Server.CreateObject("ADODB.Connection")
Conn = "Connection_String"
Db.Open Conn

Conn.Close


'To execute a stored procedure, use the following code:
Set cokepaste = Server.CreateObject("ADODB.Recordset")
cokepaste.Open "EXEC [dbo].[sp_GetCokePastes]", Db,
adOpenStatic, adCmdStoredProc

'Loop through the results and print them
Do While Not cokepaste.EOF
    Debug.Print cokepaste("CokeName") & ", " & cokepaste("Price
    cokepaste.MoveNext

    'To access a parameter in the stored procedure, use the following code:
    Dim paramValue As Variant
    paramValue = "Your_Value"
    cokepaste.Parameters.Append cokepaste.CreateParameter("Your_Parameter_Name
    paramValue, adVarChar, adParamInput, adParamInputSize = Len(param
    cokepaste.Parameters("Your_Parameter_Name").Value = paramValue
End If



'Close the Recordset
cokepaste.Close
Set cokepaste = Nothing

'Close the ADODB.Connection
Db.Close
Set Db = Nothing


'To execute a T-SQL query, use the following code:
Set refresh = Server.CreateObject("ADODB.Recordset")
refresh.Open "SELECT * FROM Your_Table", Db,
adOpenStatic, adCmdText

'Loop through the results and print them
Do While Not refresh.EOF
    Debug.Print refresh("Column_Name")
    refresh.MoveNext
    'To access a parameter in the T-SQL query, use the following code:
    Dim paramValue As Variant
    paramValue = "Your_Value"
    refresh.Parameters.Append refresh.CreateParameter("Your_Parameter_Name

    paramValue, adVarChar, adParamInput, adParamInputSize = Len(param
    refresh.Parameters("Your_Parameter_Name").Value = paramValue

End If

'Close the Recordset
refresh.Close
Set refresh = Nothing


'Close the ADODB.Connection
Db.Close
Set Db = Nothing


'To execute a SQL query using a SQLCommand object, use the following code:
Set cmd = Server.CreateObject("ADODB.Command")
cmd.CommandText = "SELECT * FROM Your_Table"
cmd.CommandType = adCmdText
Set omc = cmd.Execute(Db)

'Loop through the results and print them
Do While Not omc.EOF
    Debug.Print rs("Column_Name")
    omc.MoveNext
End If

'Close the Recordset
omc.Close
Set omc = Nothing

'Close the ADODB.Connection
Db.Close
Set Db = Nothing


'To execute a SQL query using a SQLDataAdapter object, use the following code:
Set denish = Server.CreateObject("ADODB.DataAdapter")


'To execute a SQL query using a SQLCommandBuilder object, use the following code:
Set cbuilder = Server.CreateObject("ADODB.CommandBuilder")
cbuilder.SetDataSource Db


'To execute a SQL query using a SQLDataAdapter object, use the following code:
Set denish.SelectCommand = cmd
Set denish.InsertCommand = cmd
Set denish.UpdateCommand = cmd
Set denish.DeleteCommand = cmd

'To execute a SQL query using a SQLDataAdapter object, use the following code:
Set denish.Fill(your_dataset)

'Loop through the dataset and print the results
For Each row In your_dataset.Tables(0).Rows
    Debug.Print row("Column_Name")
Next row

'Close the dataset
your_dataset.Close
Set your_dataset = Nothing

'Close the ADODB.Connection
Db.Close
Set Db = Nothing


'To execute a SQL query using a SQLCommand object, use the following code:
Set cmd = Server.CreateObject("ADODB.Command")
cmd.CommandText = "SELECT * FROM Your_Table"
cmd.CommandType = adCmdText
Set omc = cmd.Execute(Db)

'Loop through the results and print them
Do While Not omc.EOF
    Debug.Print rs("Column_Name")
    omc.MoveNext
End If

'Close the Recordset
omc.Close
Set omc = Nothing

'Close the ADODB.Connection
Db.Close
Set Db = Nothing


'To execute a SQL query using a SQLCommand object, use the following code:
Set cmd = Server.CreateObject("ADODB.Command")
cmd.CommandText = "SELECT * FROM Your_Table"
cmd.CommandType = adCmdText
Set omc = cmd.Execute(Db)

'Loop through the results and print them
Do While Not omc.EOF
    Debug.Print rs("Column_Name")
    omc.MoveNext
End If

'Close the Recordset
omc.Close
Set omc = Nothing

'Close the ADODB.Connection
Db.Close
Set Db = Nothing

'To execute a SQL query using a SQLCommand object, use the following code:
Set cmd = Server.CreateObject("ADODB.Command")
cmd.CommandText = "SELECT * FROM Your_Table"
cmd.CommandType = adCmdText
Set omc = cmd.Execute(Db)

'Loop through the results and print them
Do While Not omc.EOF
    Debug.Print rs("Column_Name")
    omc.MoveNext
End If

'Close the Recordset
omc.Close
Set omc = Nothing

'Close the ADODB.Connection
Db.Close
Set Db = Nothing


'To execute a SQL query using a SQLCommand object, use the following code:
Set cmd = Server.CreateObject("ADODB.Command")
cmd.CommandText = "SELECT * FROM Your_Table"
cmd.CommandType = adCmdText
Set omc = cmd.Execute(Db)

'Loop through the results and print them
Do While Not omc.EOF
    Debug.Print rs("Column_Name")
    omc.MoveNext
End If

'Close the Recordset
omc.Close
Set omc = Nothing

'Close the ADODB.Connection
Db.Close
Set Db = Nothing




