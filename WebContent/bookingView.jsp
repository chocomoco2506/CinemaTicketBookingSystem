<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
ul{
list-style:none;


}
li
{
background-color:yellow;
padding:10px;
float:left;}
a
{
font-family:Arial;
padding:10px;
font-size:15pt;
text-decoration:none;
}
a:hover
{
padding:10px;
background-color:orange;
color:black}
#view
{
font-size:15pt;
border-collapse: collapse;
background-color:#d9ddff;
}
td,th
{
border: 1px solid #1125c1;
padding:10px;}
th
{
background-color:#2098cf;
color:white}</style>
</head>
<body>
<ul><li><a href="register.jsp">Register</a></li>
<li><a href="viewuser.jsp">View</a></li>
</ul>
<br><br><br>
<table id="view">
<tr>
<th>No</th>
<th>UserName</th>
<th>Email</th>
<th>Phone</th>
<th>Date</th>
<th>MovieName</th>
<th>Total_Seat</th>
</tr>

 <%
try{  
	int count=0;
	int user=0;
	int movie=0;
	int total=0;
	String date="",movie_name="";
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");  
	Statement stmt  =con.createStatement();
	
	
	ResultSet rs=stmt.executeQuery("select * from user"); 
		while(rs.next())
		{
			count++;
			user=rs.getInt(1);
			
%>
<tr><td><%=count%></td>    
   <td><%=rs.getString(2)%></td>  
   <td><%=rs.getString(3)%></td>  
   <td><%=rs.getString(4)%></td>  
 
              <%
		
		ResultSet rs1=stmt.executeQuery("select * from seat"); 
		while(rs1.next()){
			if(rs1.getInt(4)==user){
				movie=rs1.getInt(2);
				date=rs1.getString(3);
				total++;
			}
			
		}
		
		ResultSet rs2=stmt.executeQuery("select * from movie"); 
		while(rs2.next()){
			if(rs2.getInt(1)==movie){
				movie_name=rs2.getString(2);
			}
		}
		%>
		<td><%=date %></td>
		<td><%= movie_name %></td>
		<td><%= total %></td>
		
	<% }
		con.close();
}catch(Exception e){  e.printStackTrace();} %>   
</table>
</body>
</html>