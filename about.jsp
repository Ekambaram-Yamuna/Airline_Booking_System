<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ixigo - Travel Booking</title>
    <style >
    body {
    font-family: Arial, sans-serif;
    line-height: 1.6; 
    margin: 0;
    padding: 0;
    color: #333;
}

.header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: black;
            padding:0;
            margin:0;
            flex-wrap: wrap;
           
             
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            font-family: 'Georgia', serif;
              background: blue;
          
        }

        .nav-container {
            display: flex;
            justify-content: center; 
             background: blue;
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
            color: black;
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


.container {
    max-width: 1100px;
    margin: auto;
    padding: 20px 40px;
}

h1, h2 {
    color: #000;
    font-weight: bold;
    margin-top: 30px;
}

a {
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

.service-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.service-table td {
    border: 1px solid #eee;
    padding: 12px 16px;
    vertical-align: top;
    background-color: #f8f9fa;
}

.service-table td:first-child {
    font-weight: bold;
    width: 150px;
}

.flight-links {
    list-style: none;
    padding-left: 0;
}

.flight-links li {
    margin-bottom: 8px;
}

.flight-grid {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.flight-grid td {
    width: 50%;
    padding: 10px;
    background-color: #f8f9fa;
    border: 1px solid #e1e1e1;
}

.flight-grid a {
    display: block;
    color: #007bff;
}
    
    </style>
</head>
<body>

<header class="header">
    <div class="logo">FlyHigh.Co</div>
    <div class="nav-container">
        <ul class="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="ixigo.jsp">About</a></li>
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

<div class="container">
    <h1>About FlyHigh.Co</h1>
    <p>Launched in 2007, FlyHigh is a technology company focused on empowering Indian travellers to plan, book and manage their trips across rail, air, buses and hotels. We assist travellers in making smarter travel decisions by leveraging artificial intelligence, machine learning, and data science led innovations on our OTA platforms, comprising our websites and mobile applications. Our vision is to become the most customer-centric travel company, by offering the best customer experience to our users.</p>
    
    <p>Our OTA platforms allow travellers to book train tickets, flight tickets, bus tickets, hotels and cabs, while providing travel utility tools and services. Let us help you plan your next vacation with our <a href="#">trip planner</a>.</p>

    <h2>Here's how we can help you:</h2>
    <table class="service-table">
        <tr>
            <td><strong>Flights</strong></td>
            <td>Book domestic as well as international flights on FlyHigh. Check <a href="#">Flight Status</a> for domestic or international flights.</td>
        </tr>
        <tr>
            
            <td><strong>Hotels</strong></td>
            <td>Find thousands of <a href="#">cheap hotels</a> on FlyHih.Co. We have something for every budget.</td>
        </tr>
    </table>

    <h2>Flight Booking on FlyHigh.Co</h2>
    <p>FlyHigh flights app and website simplify flight booking. Travellers can finalise their bookings in just a matter of a few clicks. It's both simple and fast. Get free cancellation on your flight tickets. Also, we have multiple <a href="#Exciting Flight Offers">flight booking offers</a> to help you save money.</p>

    <h2>Domestic Flights on FlyHigh.Co</h2>
    <p>We offer Cancellation protection on domestic flights. Get the cheapest domestic airfare with help of fare drop alerts. Our technology helps travellers book <a href="#">cheap flights</a>, hotels and cabs on arrival or departure.</p>
    
    <table class="flight-grid">
        <tr>
            <td><a href="domestic.jsp">Chennai  to Delhi </a></td>
            <td><a href="domestic.jsp">Chennai to Gao</a></td>
        </tr>
        <tr>
            <td><a href="domestic.jsp">Chennai to Kerala</a></td>
            <td><a href="domestic.jsp">Delhi to Chennai</a></td>
        </tr>
        <tr>
            <td><a href="domestic.jsp">Mumbai to Thailand Flights</a></td>
            <td><a href="domestic.jsp">Delhi to Turkey Flights</a></td>
        </tr>
        <tr>
            <td><a href="domestic.jsp">Mumbai to Canada Flights</a></td>
            <td><a href="domestic.jsp">Mumbai to Turkey Flights</a></td>
        </tr>
        <tr>
            <td><a href="domestic.jsp">Delhi to Kerala</a></td>
            <td><a href="domestic.jsp">Mumbai to Chennai</a></td>
        </tr>
    </table>
    

    <h2>Flight Status Tracking on FlyHigh</h2>
    <p>Our Flight Status Tracker Pro feature provides real-time updates, keeping you informed about your flight, boarding gate, and baggage belt information.</p>
    <p><strong>Airline-Specific Flight Status:</strong></p>
    <ul class="flight-links">
        <li><a href="#">Indigo Flight Status</a></li>
        <li><a href="#">Air India Flight Status</a></li>
        <li><a href="#">Air India Express Flight Status</a></li>
        <li><a href="#">Akasa Air Flight Status</a></li>
        <li><a href="#">Spicejet Flight Status</a></li>
    </ul>

    <h2>International Flights on FlyHigh.Co</h2>
    <p>Our helpful filters will assist in finding a suitable international destination for your next vacation. Get personalised recommendations on <a href="#">international flight ticket</a> booking and hotels.</p>

    <table class="flight-grid">
        <tr>
            <td><a href="internation.jsp">Chennai to Canada Flights</a></td>
            <td><a href="internation.jsp">Chennai to Malaysia Flights</a></td>
        </tr>
        <tr>
            <td><a href="internation.jsp">Chennai to Thailand Flights</a></td>
            <td><a href="internation.jsp">Chennai to Nepal Flights</a></td>
        </tr>
        <tr>
            <td><a href="internation.jsp">Chennai to Thailand Flights</a></td>
            <td><a href="internation.jsp">Chennai to Turkey Flights</a></td>
        </tr>
        <tr>
            <td><a href="internation.jsp">Chennai to Canada Flights</a></td>
            <td><a href="internation.jsp">Chennai to Turkey Flights</a></td>
        </tr>
        <tr>
            <td><a href="internation.jsp">Chennai to Vietnam Flights</a></td>
            <td><a href="internation.jsp">Chennai to Vietnam Flights</a></td>
        </tr>
    </table>

    <h2>Online  booking on FlyHigh.co</h2>
    <p>FlyHigh.co has made <a href="booknow.jsp">online  booking</a> completely easy. Enter details – To and from cities, date and the number of bus tickets. Choose from a wide variety of buses suited for every budget.</p>
</div>

</body>
</html>
