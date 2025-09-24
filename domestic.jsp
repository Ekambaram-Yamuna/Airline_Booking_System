<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AirLink - Flight Search</title>
    <style>
        /* Header & Navigation */
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f5f9;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #003c8f;
            color: white;
            padding: 15px 30px;
            flex-wrap: wrap;
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

        .auth-buttons {
            display: flex;
            gap: 15px;
        }

        .auth-buttons button {
            background-color: #ffffff;
            color: #003c8f;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        .auth-buttons button:hover {
            background-color: #e1eaff;
        }

        /* Search Form */
        .search-wrapper {
            background-color: #e1ecff;
            padding: 20px;
            display: flex;
            justify-content: center;
        }

        .search-bar {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .search-item {
            display: flex;
            flex-direction: column;
        }

        .search-item input {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
            min-width: 200px;
        }

        .search-btn {
            padding: 10px 20px;
            background-color: #003c8f;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
        }

        .search-btn:hover {
            background-color: #002f6c;
        }

        /* Flight Results */
        .flight-list-container {
            width: 100%;
            margin-top: 20px;
        }

        .result-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            border-bottom: 2px solid #ddd;
            background: #fff;
            flex-wrap: wrap;
        }

        .result-row:last-child {
            border-bottom: none;
        }

        .result-row div {
            flex: 1;
            text-align: center;
            font-size: 15px;
        }

        .flight-no {
            font-weight: bold;
            color: #0057d8;
        }

        .book-btn form {
            display: inline;
        }

        .book-btn button {
            background-color: #007bff;
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
        }

        .book-btn button:hover {
            background-color: #0056b3;
        }

        .no-results {
            text-align: center;
            margin: 40px;
            font-size: 18px;
            color: #555;
        }

        @media screen and (max-width: 768px) {
            .result-row {
                flex-direction: column;
                text-align: center;
            }

            .result-row div {
                padding: 10px 0;
            }
        }
    </style>
</head>
<body>

<!-- Header -->
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

<!-- Search Section -->
<div class="search-wrapper">
    <form class="search-bar" action="domesticFlightSearchServlet" method="post">
        <div class="search-item">
            <label>From</label>
            <input type="text" name="from" placeholder="From Location" required>
        </div>
        <div class="search-item">
            <label>To</label>
            <input type="text" name="to" placeholder="To Location" required>
        </div>
        <div class="search-item">
            <label>&nbsp;</label>
            <button type="submit" class="search-btn">🔍 Search</button>
        </div>
    </form>
</div>

<!-- Flight Results Section -->

<%
    List<Map<String, String>> flights = (List<Map<String, String>>) request.getAttribute("flights");
    if (flights != null && !flights.isEmpty()) {
%>
<div class="flight-list-container">
    <% for (Map<String, String> flight : flights) { %>
    <div class="result-row">
        <div class="flight-no"><%= flight.get("flight_no") %></div>
        <div class="time"><%= flight.get("departure_time") %> → <%= flight.get("arrival_time") %></div>
        <div class="duration"><%= flight.get("duration") %></div>
        <div class="stops"><%= flight.get("stops") %></div>
        <div class="stop-location"><%= flight.get("stop_location") != null ? flight.get("stop_location") : "-" %></div>
        <div class="route"><%= flight.get("source") %> → <%= flight.get("destination") %></div>
        <div class="fare">₹<%= flight.get("fare") %></div>
        <div class="book-btn">
            <form action="booknow.jsp" method="post">
                <input type="hidden" name="flight_no" value="<%= flight.get("flight_no") %>">
                <button type="submit">Book Now</button>
            </form>
        </div>
    </div>
    <% } %>
</div>
<% } else if (flights != null) { %>
    <p class="no-results">No flights found for the selected route.</p>
<% } %>


</body>
</html>