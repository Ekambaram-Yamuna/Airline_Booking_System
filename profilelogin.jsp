<%@ page session="true" %>
<%
    String firstName = (String) session.getAttribute("firstName");
    String lastName = (String) session.getAttribute("lastName");
    String email = (String) session.getAttribute("email");

    if (firstName == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Travel Profile Settings</title>
    <style>
    body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #f2f9ff;
}

.settings-container {
    display: flex;
    height: 100vh;
}

/* Sidebar */
.settings-sidebar {
    width: 260px;
    background-color: #003366;
    color: white;
    padding: 20px;
    box-shadow: 2px 0 8px rgba(0,0,0,0.1);
}

.settings-sidebar h2 {
    font-size: 22px;
    margin-bottom: 30px;
}

.settings-sidebar a {
    display: block;
    margin-bottom: 15px;
    padding: 10px 15px;
    text-decoration: none;
    color: white;
    background-color: #004080;
    border-radius: 6px;
    transition: 0.3s;
}

.settings-sidebar a:hover {
    background-color: #00bcd4;
    color: #003366;
    font-weight: bold;
}

/* Main Panel */
.settings-main {
    flex-grow: 1;
    padding: 30px;
    background-color: #ffffff;
    overflow-y: auto;
}

/* Profile Header */
.profile-header {
    display: flex;
    align-items: center;
    margin-bottom: 30px;
}

.profile-img {
    width: 80px;
    height: 80px;
    background-color: #00bcd4;
    border-radius: 50%;
    color: white;
    font-size: 36px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 20px;
}

.profile-details h2 {
    margin: 0;
    font-size: 24px;
    color: #003366;
}

.profile-details p {
    margin: 5px 0 0;
    color: #555;
}

/* Section Area */
.profile-section {
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 10px;
}
    </style>
</head>
<body>
    <div class="settings-container">
        
        <!-- Sidebar -->
        <div class="settings-sidebar">
            <h2>Account Settings</h2>
            <a href="profilelogin.jsp?page=accountSettings.jsp"> Account Settings</a>
            <a href="profilelogin.jsp?page=changePassword.jsp">Change Password</a>
            <a href="LogoutServlet">Logout</a>
        </div>
        
        <!-- Main Content -->
        <div class="settings-main">
            <div class="profile-header">
                <div class="profile-img">
                    <%= firstName.substring(0, 1).toUpperCase() %>
                </div>
                <div class="profile-details">
                    <h2><%= firstName %> <%= lastName %></h2>
                    <p><%= email %></p>
                </div>
            </div>
            
            <div class="profile-section">
                <jsp:include page='<%= request.getParameter("page") != null ? request.getParameter("page") : "accountSettings.jsp" %>' />
            </div>
        </div>
    </div>
</body>
</html>
