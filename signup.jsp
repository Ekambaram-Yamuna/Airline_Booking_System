<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up - AirLine</title>
    <link rel="stylesheet" href="auth.css">
</head>
<body>
<div class="auth-container">
    <h2>Create Your Account</h2>
    <form action="SignupServlet" method="post">
        <input type="text" name="first_name" placeholder="First Name" required />
        <input type="text" name="last_name" placeholder="Last Name" required />
        <input type="email" name="email" placeholder="Email Address" required />
        <input type="password" name="password" placeholder="Password" required minlength="5" />
        <button type="submit">Sign Up</button>
        <p>Already have an account? <a href="login.jsp">Login</a></p>
    </form>
</div>
</body>
</html>