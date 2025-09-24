<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Report an Issue | AirLine</title>
   <style>
body {
    font-family: 'Segoe UI', sans-serif;
    background-image: url('https://www.bima24x7.com/img/3.gif');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    padding: 0;
    margin: 0;
}

/* Overlay effect using backdrop blur (to keep form readable) */
.report-container {
    max-width: 500px;
    margin: 40px auto;
    background: rgba(255, 255, 255, 0.8);
    backdrop-filter: blur(8px);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
}

/* Rest of the CSS is unchanged */
.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #003c8f;
    color: white;
    padding: 15px 30px;
    flex-wrap: wrap;
    margin-bottom: 20px;
}

.logo {
    font-size: 28px;
    font-weight: bold;
    font-family: 'Georgia', serif;
}

.nav-container {
    display: flex;
    justify-content: center;
    flex-grow: 1;
}

.nav {
    list-style: none;
    display: flex;
    gap: 25px;
    margin: 0;
    padding: 0;
    align-items: center;
}

.nav li {
    position: relative;
    cursor: pointer;
}

.nav a {
    text-decoration: none;
    color: white;
    padding: 8px 12px;
    display: inline-block;
}

.dropdown-container {
    position: relative;
}

.dropdown-glass {
    display: none;
    position: absolute;
    top: 40px;
    left: 0;
    min-width: 180px;
    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(12px);
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    list-style: none;
    padding: 10px 0;
    z-index: 999;
    border: 1px solid rgba(255, 255, 255, 0.3);
}

.dropdown-container:hover .dropdown-glass,
.dropdown-container:focus-within .dropdown-glass {
    display: block;
}

.dropdown-glass li {
    padding: 10px 20px;
    white-space: nowrap;
}

.dropdown-glass li a {
    text-decoration: none;
    color: white;
    font-weight: bold;
    display: block;
}

.dropdown-glass li:hover {
    background: rgba(255, 255, 255, 0.2);
}

.nav button {
    background-color: #ffffff;
    color: #003c8f;
    border: none;
    padding: 6px 12px;
    border-radius: 4px;
    font-weight: bold;
    cursor: pointer;
    font-size: 14px;
    margin-left: 5px;
}

.nav button:hover {
    background-color: #e1eaff;
}

h1 {
    text-align: center;
    color: #0077b6;
    margin-bottom: 20px;
}

.report-form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

label {
    font-weight: bold;
    color: #023e8a;
}

input, select, textarea {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
    width: 100%;
}

button {
    padding: 12px;
    background-color: #0077b6;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background-color: #005f91;
}

.message {
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
    font-weight: bold;
    text-align: center;
}

.success {
    background-color: #d4edda;
    color: #155724;
    border: 1px solid #c3e6cb;
}

.error {
    background-color: #f8d7da;
    color: #721c24;
    border: 1px solid #f5c6cb;
}
</style>
</head>
<body>

<!-- Header Section -->
<header class="header">
    <div class="logo">Airport.Co</div>

    <div class="nav-container">
        <ul class="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#">About</a></li>

            <!-- Tickets Dropdown -->
            <li class="dropdown-container" tabindex="0">
                <a href="#">Tickets</a>
                <ul class="dropdown-glass">
                    <li><a href="domestic.jsp">Domestic Tickets</a></li>
                    <li><a href="internation.jsp">International Tickets</a></li>
                </ul>
            </li>

            <!-- Help & Support Dropdown -->
            <li class="dropdown-container" tabindex="0">
                <a href="#">Help & Support</a>
                <ul class="dropdown-glass">
                    <li><a href="insurance.jsp">Insurance</a></li>
                    <li><a href="report.jsp">Report</a></li>
                </ul>
            </li>

            <li><a href="#">Contact</a></li>

            <!-- Auth Section -->
            <li>
                <%
                    String firstName = (String) session.getAttribute("firstName");
                    if (firstName != null) {
                %>
                    <a href="#"><strong><%= firstName %></strong></a>
                    <form action="LogoutServlet" method="post" style="display:inline;">
                        <button type="submit">Logout</button>
                    </form>
                <%
                    } else {
                %>
                    <a href="signup.jsp"><button>Sign Up</button></a>
                    <a href="login.jsp"><button>Login</button></a>
                <%
                    }
                %>
            </li>
        </ul>
    </div>
</header>

<div class="report-container">
    <h1>🛠 Report an Issue</h1>
    <p>If you faced any issue with booking, kindly fill the form below.</p>

    <!-- ✅ Message Display Section -->
    <%
        String status = (String) request.getAttribute("status");
        String message = (String) request.getAttribute("message");
        if (status != null && message != null) {
    %>
        <div class="message <%= status.equals("success") ? "success" : "error" %>">
            <%= message %>
        </div>
    <% } %>

    <!-- Report Form -->
    <form action="ReportServlet" method="post" class="report-form">
        <label for="name">Your Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="issueType">📌 Issue Type</label>
        <select id="issueType" name="issueType" required>
            <option value="">-- Select an issue --</option>
            <option value="payment">Payment Problem</option>
            <option value="ticket">Ticket not received</option>
            <option value="seat">Seat not allocated</option>
            <option value="Flight Booking">Flight Booking</option>
            <option value="Insurance Issue">Insurance Issue</option>
            <option value="Food Order / Delivery">Food Order / Delivery</option>
            <option value="Check-in Problem">Check-in Problem</option>
            <option value="others">Other</option>
        </select>

        <label for="message">Describe your problem</label>
        <textarea id="message" name="message" rows="5" placeholder="Write in detail..." required></textarea>

        <button type="submit">Submit Report</button>
    </form>
</div>

</body>
</html>
