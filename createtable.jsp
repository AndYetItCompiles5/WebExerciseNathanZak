<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable</title>
</head>
<body style="background-color: black; color: rgb(0, 0, 0);"
alink="#ee0000" link="#0000ee" vlink="#551a8b">
<form action="IDK" name="Table"></form>

<span style="color: white;"><%
String val = request.getParameter("Name");
out.println("Hello " + val + ". Here is your table");
%>
</span><br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%
String val1 = request.getParameter("Rows");
String val2 = request.getParameter("Columns");
int newVal2 = Integer.parseInt(val2);
int newVal = Integer.parseInt(val1);
String rowError = null;
String columnError = null;
if(newVal<=0){
	rowError = "1";
	response.sendRedirect("classexample.jsp");
}
else if (newVal2<=0){
	columnError = "error";
	response.sendRedirect("classexample.jsp");
}
else{
for(int i=1;i<=newVal;i++){
	%>
<tr>
<%
for(int j=1;j<=newVal2;j++){
	%>
<td style="vertical-align: top;"><br>
<span style="color: white;">
<%
out.println(i+","+j);
%>
</td>
<%
}
%>
</tr>
<%

}
}
%>
</tbody>
</table>
<br>
</body>
</html>