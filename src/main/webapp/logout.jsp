<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGOUT</title>
</head>
<body>
<%
    // Invalidate the current session to log the user out
    session.invalidate();
    // Redirect the user to the login page or any other desired page after logout
    response.sendRedirect("admin_login.html");
%>

</body>
</html>