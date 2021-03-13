<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome ${Name}  ${Lastname}</h1>
<h2>Your registration details are as follows:</h2>

<p>Phone Number:  ${Phone}</p>
<p>Email:     ${Email}</p>
<p>Address:     ${Address1} ${Address2}, ${City}, ${Province}, ${Zipcode}  </p>

<h2>Your Stay Dates: </h2> ${Arrivaldate} to ${Departuredate}
<h2>Room Type: </h2> ${Price} 
<h2>Number of Nights </h2> ${Night} Nights
<h2>Number of Guest </h2> Adults ${Adult} Kids ${Kid} 
<h2>Amount to Pay </h2> ${Total} 
</body>
</html>