<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
Total Amount<p>${amount }</p>
<table>
<form action="payment" method=post>



<tr>
<td>Card ID</td>
<td><input type=text name=card_id></td>
</tr>


<tr>
<td>Password</td>
<td><input type=text name=card_password></td>
</tr>

<tr>
<td><input type="submit" value="Confirm"></td>
<td><input type=button onCLick="window.location.href='home.jsp'" value="Back"></td>
</tr>
</form>
</table>
</body>
</html>