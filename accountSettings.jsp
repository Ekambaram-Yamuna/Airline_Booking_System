<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="UpdateProfileServlet" method="post">
    <h3>Update Account Details</h3>
    <label>First Name:</label><br>
    <input type="text" name="firstName" value="<%= session.getAttribute("firstName") %>" required><br><br>

    <label>Last Name:</label><br>
    <input type="text" name="lastName" value="<%= session.getAttribute("lastName") %>" required><br><br>

    <label>Email:</label><br>
    <input type="email" name="email" value="<%= session.getAttribute("email") %>" required><br><br>

    <button type="submit">Update Profile</button>
</form>

</body>
</html>