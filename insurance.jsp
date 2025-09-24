<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Travel Insurance Entry</title>
    <link rel="stylesheet" href="insurance.css">
</head>
<body>
<!-- Header Section -->
<header class="header">
    <div class="logo">Airport.Co</div>

    <div class="nav-container">
        <ul class="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="index.jsp">Services</a></li>
            <li><a href="#">About</a></li>

            <li class="dropdown-container" tabindex="0">
                <a href="#">Tickets</a>
                <ul class="dropdown-glass">
                    <li><a href="domestic.jsp">Domestic Tickets</a></li>
                    <li><a href="internation.jsp">International Tickets</a></li>
                </ul>
            </li>

            <li class="dropdown-container" tabindex="0">
                <a href="#">Help & Support</a>
                <ul class="dropdown-glass">
                    <li><a href="insurance.jsp">Insurance</a></li>
                    <li><a href="report.jsp">Report</a></li>
                </ul>
            </li>

            <li><a href="#">Contact</a></li>
        </ul>
    </div>

    <div class="auth-buttons">
        <button>Sign Up</button>
        <button>Login</button>
    </div>
</header>

<div class="form-container">
    <form class="glass-form" action="addInsuranceServlet" method="post">
        <h2>Travel Insurance Entry</h2>

        <%-- Success/Error message block --%>
        <%
            String status = (String) request.getAttribute("status");
            String msg = (String) request.getAttribute("message");
            if (status != null && msg != null) {
        %>
            <div class="form-message <%= status.equals("success") ? "success" : "error" %>">
                <%= msg %>
            </div>
        <% } %>

        <input type="text" name="provider" placeholder="Insurance Provider" required>
        <input type="text" name="policyNumber" placeholder="Policy Number" required>

        <div class="date-group">
            <input type="date" name="startDate" required>
            <input type="date" name="expiryDate" required>
        </div>

        <select name="coverageType" required>
            <option value="" disabled selected>Coverage Type</option>
            <option value="Health">Health</option>
            <option value="Trip Cancellation">Trip Cancellation</option>
            <option value="Lost Luggage">Lost Luggage</option>
            <option value="Emergency Evacuation">Emergency Evacuation</option>
            <option value="All Inclusive">All Inclusive</option>
        </select>

        <textarea name="notes" rows="3" placeholder="Notes"></textarea>

        <button type="submit">Submit Insurance</button>
    </form>
</div>
</body>
</html>