<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexample.html</title>
</head>
<body>
<form action="createtable.jsp" name="Form">
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td> <%
String rowError = request.getParameter("rowError");
String columnError = request.getParameter("columnError");
String newName = request.getParameter("val");
if(rowError!=null && rowError.equals("1")){
	%>
	out.println("Hello "+newName+", PLEASE PROVIDE A ROW VALUE >0");
	<%
}
else if(columnError!=null){
	out.println("Hello "+newName+", PLEASE PROVIDE A COLUMN VALUE >0");
}
else{
	out.println("");
}
%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top;"><input name="Name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input name="Rows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input name="Columns" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input value="Submit"
name="Submit" type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="Reset"
value="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>