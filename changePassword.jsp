<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ChangePasswordServlet" method="post">
    <h3>Change Password</h3>
    <label>Current Password:</label><br>
    <input type="password" name="currentPassword" required><br><br>

    <label>New Password:</label><br>
    <input type="password" name="newPassword" required><br><br>

    <label>Confirm Password:</label><br>
    <input type="password" name="confirmPassword" required><br><br>

    <button type="submit">Change Password</button>
</form>

</body>
</html>