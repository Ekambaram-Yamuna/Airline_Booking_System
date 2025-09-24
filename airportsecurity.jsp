<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Airport Security Guide</title>
    <style>
        body {
            margin: 0 ;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            padding: 0px;
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
            margin: 30px 0;
        }

        .guide-section {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 16px;
            padding: 25px 30px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            max-width: 900px;
            margin-left: auto;
            margin-right: auto;
            color: #003c8f;
        }

        .guide-section h2 {
            margin-top: 0;
            border-bottom: 2px solid #003c8f;
            padding-bottom: 5px;
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

    <!-- Header -->
    <header class="header">
        <div class="logo">Airport.Co</div>

        <div class="nav-container">
            <ul class="nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#services">Services</a></li>
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

    <!-- Main Heading -->
    <h1>Airport Security Guide</h1>

    <!-- Sections -->
    <div class="guide-section">
        <h2>1. Security Screening Process</h2>
        <ul>
            <li>Show boarding pass and ID at security gates.</li>
            <li>Remove belts, electronics, and liquids for scanning.</li>
            <li>Cooperate with security personnel instructions.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>2. Liquid Restrictions</h2>
        <ul>
            <li>Liquids must be in containers of 100ml or less.</li>
            <li>All liquids must fit in a 1-liter zip-lock bag.</li>
            <li>Includes toiletries, sanitizer, creams, and gels.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>3. Baggage Rules</h2>
        <ul>
            <li>No sharp objects, flammable items, or weapons.</li>
            <li>Use tags and locks on all luggage items.</li>
            <li>Follow airline weight limits for carry-ons and check-ins.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>4. Prohibited Items</h2>
        <ul>
            <li>No firearms, knives, lighters, fireworks, or stun guns.</li>
            <li>Power banks over 160Wh not allowed in luggage.</li>
            <li>Check with airline for full restricted list.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>5. Random Checks</h2>
        <ul>
            <li>You may be selected randomly for extra screening.</li>
            <li>This is normal — cooperate calmly and respectfully.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>6. Special Needs Assistance</h2>
        <ul>
            <li>Priority for elderly, pregnant, and disabled passengers.</li>
            <li>Notify security staff about pacemakers or implants.</li>
        </ul>
    </div>

    <div class="guide-section">
        <h2>7. General Safety Tips</h2>
        <ul>
            <li>Do not leave bags unattended in terminals.</li>
            <li>Report suspicious items or behavior immediately.</li>
            <li>Listen to airport announcements and staff directions.</li>
        </ul>
    </div>

</body>
</html>