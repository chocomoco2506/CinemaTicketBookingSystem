<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="moviecheck" method=post>
<table>
<tr>
<td>Movie Name</td>
<td><input type=text name="movie_name" value="Ender Game"></td>
</tr>

<tr>
<td>Username</td>
<td><input type=text name="username" required></td>
</tr>


<tr>
<td>Email</td>
<td><input type="text" name="email" required></td>
</tr>

<tr>
<td>Phone</td>
<td><input type="text" name="phone" required></td>
</tr>

<tr>
<td>Select Date</td>
<td>
<select name="date">
<option value="01.09.2022">01.09.2022
<option value="02.09.2022">02.09.2022
<option value="03.09.2022">03.09.2022
<option value="04.09.2022">04.09.2022
<option value="05.09.2022">05.09.2022
<option value="06.09.2022">07.09.2022
<option value="07.09.2022">07.09.2022


</select>
</td>
</tr>


<tr>
<td>Select Seat</td>
<td>
1<input type="checkbox" name="seat" value="1">
2<input type="checkbox" name="seat" value="2">
3<input type="checkbox" name="seat" value="3">
4<input type="checkbox" name="seat" value="4">
5<input type="checkbox" name="seat" value="5">
</td>
</tr>

<tr>
<td></td>
<td>
6<input type="checkbox" name="seat" value="6">
7<input type="checkbox" name="seat" value="7">
8<input type="checkbox" name="seat" value="8">
9<input type="checkbox" name="seat" value="9">
10<input type="checkbox" name="seat" value="10">
</td>
</tr>

<tr>
<td></td>
<td>
11<input type="checkbox" name="seat" value="11">
12<input type="checkbox" name="seat" value="12">
13<input type="checkbox" name="seat" value="13">
14<input type="checkbox" name="seat" value="14">
15<input type="checkbox" name="seat" value="15">
</td>
</tr>

<tr>
<td></td>
<td>
16<input type="checkbox" name="seat" value="16">
17<input type="checkbox" name="seat" value="17">
18<input type="checkbox" name="seat" value="18">
19<input type="checkbox" name="seat" value="19">
20<input type="checkbox" name="seat" value="20">
</td>
</tr>

<tr>
<td><input type="submit" value="Confirm"></td>
<td><input type=button onCLick="window.location.href='home.jsp'" value="Back"></td>
</tr>


</table>
</form>
</body>
</html>