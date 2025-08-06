<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - AirLine</title>
    <link rel="stylesheet" href="auth.css">
</head>
<body>
<div class="auth-container">
    <h2>Login to Your Account</h2>
    <form action="LoginServlet" method="post">
        <input type="email" name="email" placeholder="Email Address" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Login</button>
        <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
    </form>
</div>
</body>
</html> 