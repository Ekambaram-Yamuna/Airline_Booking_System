<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Passenger Guide</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            background-color: #f4f7fb;
            padding: 30px;
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

        /* Dropdown Glass Style */
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

        h1 {
            text-align: center;
            color: #003c8f;
            margin-bottom: 10px;
        }

        .guide-section {
            background-color: white;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            max-width: 900px;
            margin-left: auto;
            margin-right: auto;
        }

        .guide-section h2 {
            color: #003c8f;
            margin-top: 0;
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            margin-bottom: 10px;
            line-height: 1.6;
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
                <li><a href="index.jsp">Services</a></li>
                <li><a href="#">About</a></li>
                <!-- Dropdown Container -->
            <li class="dropdown-container" tabindex="0">
                <a href="index.jsp">Tickets</a>
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
    <h1>Passenger Guide</h1>

    <div class="guide-section">
        <h2>1. Pre-Departure Preparation</h2>
        <ul>
            <li>Check your flight status and terminal info before leaving.</li>
            <li>Arrive at the airport at least 2 hours before a domestic flight and 3 hours before an international flight.</li>
            <li>Make sure your passport, visa, and ID are valid and accessible.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>2. Check-In & Baggage</h2>
        <ul>
            <li>Use online check-in to save time.</li>
            <li>Follow airline rules for baggage weight and restricted items.</li>
            <li>Tag your checked baggage and keep your claim tags safe.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>3. Security Procedures</h2>
        <ul>
            <li>Have boarding pass and ID ready at the security gate.</li>
            <li>Remove laptops, liquids, and belts when going through security.</li>
            <li>Follow instructions from security staff promptly.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>4. Boarding the Flight</h2>
        <ul>
            <li>Wait for your group or zone to be called before boarding.</li>
            <li>Keep your boarding pass and passport ready at the gate.</li>
            <li>Follow cabin crew instructions once on board.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>5. In-Flight Conduct</h2>
        <ul>
            <li>Keep your seatbelt fastened while seated.</li>
            <li>Follow instructions for electronic devices usage.</li>
            <li>Be courteous to fellow passengers and crew.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>6. Arrival & Immigration</h2>
        <ul>
            <li>Have your documents ready for immigration checks.</li>
            <li>Collect your baggage from the correct carousel.</li>
            <li>Declare any items as required by customs rules.</li>
        </ul>
    </div>

</body>
</html>