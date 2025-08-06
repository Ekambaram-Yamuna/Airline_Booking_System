<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("profilelogin.jsp");
        return;
    }
    String name = (String) session.getAttribute("username");
    String email = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Profile - AirLine</title>
    <link rel="stylesheet" href="auth.css">
</head>
<body>
<div class="auth-container">
    <h2>👤 Welcome, <%= name %>!</h2>
    <p><strong>Email:</strong> <%= email %></p>
    <p><a href="LogoutServlet" class="logout-link">Logout</a></p>
</div>
</body>
</html>