<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hotel Reservation Form</h1>

<!-- Controller Name -->
<form action="ReservationController">
  <label for="fname">First name:</label><br>
  <input type="text" name="name"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" name="lastname"><br><br>
  <label for="lphone">Phone Number:</label><br>
  <input type="tel" name="phone"><br><br>
  <label for="email">Email:</label><br>
  <input type="email" name="email"><br><br>
  <input type="submit" value="Submit">
</form> 

</body>
</html>