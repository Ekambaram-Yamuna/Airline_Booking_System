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
            padding: 30px;
            background-color:lightblue;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: rgba(0, 60, 143, 0.85);
            color: white;
            padding: 15px 30px;
            flex-wrap: wrap;
            border-radius: 10px;
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

        h1 {
            text-align: center;
            color: #ffffff;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.8);
            margin-bottom: 30px;
        }

        .guide-section {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            margin-bottom: 30px;
            max-width: 900px;
            margin-left: auto;
            margin-right: auto;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .guide-section h2 {
            color: #ffffff;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.7);
            margin-top: 0;
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            margin-bottom: 10px;
            line-height: 1.6;
            color: black;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.7);
        }
    </style>
</head>
<body>

<!-- Header Section -->
<header class="header">
    <div class="logo">FlyHigh.Co</div>

    <div class="nav-container">
        <ul class="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="index.jsp">Services</a></li>
            <li><a href="about.jsp">About</a></li>
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
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </div>
</header>

<h1>Passenger Guide</h1>

<div class="guide-section" style="display: flex; align-items: center; gap: 20px; flex-wrap: wrap;">
    <div style="flex: 1; min-width: 280px;">
        <h2>1. Pre-Departure Preparation</h2>
        <ul>
            <li>Check your flight status and terminal info before leaving.</li>
            <li>Arrive at the airport at least 2 hours before a domestic flight and 3 hours before an international flight.</li>
            <li>Make sure your passport, visa, and ID are valid and accessible.</li>
        </ul>
    </div>
    <div style="flex: 1; min-width: 50px;">
        <img src="https://tse3.mm.bing.net/th/id/OIP.00T66V738_YsalgojZPCUAHaEK?pid=Api&P=0&h=180"
             alt="Pre-Departure Preparation"
             style="width: 100%; max-height: 230px; object-fit: cover; border-radius: 5px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);">
    </div>
</div>


<div class="guide-section" style="display: flex; align-items: center; gap: 20px; flex-wrap: wrap;">
 <div style="flex: 1; min-width: 280px;">
    <h2>2. Check-In & Baggage</h2>
    <ul>
        <li>Use online check-in to save time.</li>
        <li>Follow airline rules for baggage weight and restricted items.</li>
        <li>Tag your checked baggage and keep your claim tags safe.</li>
    </ul>
</div>
<div style="flex: 1; min-width: 50px;">
        <img src="https://www.beumergroup.com/app/uploads/dynamic/2019/03/CrisCheck-570px-637x637-c-default.jpg" alt="Security Check" style="width: 100%; max-height: 250px; object-fit: cover; border-radius: 5px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);">
    </div>
</div>

<div class="guide-section" style="display: flex; align-items: center; gap: 20px; flex-wrap: wrap;">
    <div style="flex: 1; min-width: 280px;">

    <h2>3. Security Procedures</h2>
    <ul>
        <li>Have boarding pass and ID ready at the security gate.</li>
        <li>Remove laptops, liquids, and belts when going through security.</li>
        <li>Follow instructions from security staff promptly.</li>
    </ul>
</div>
<div style="flex: 1; min-width: 280px;">
        <img src="https://static1.simpleflyingimages.com/wordpress/wp-content/uploads/2024/07/shutterstock_768349297.jpg" alt="Security Check" style="width: 100%; border-radius: 12px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);">
    </div>
</div>

<div class="guide-section" style="display: flex; align-items: center; gap: 20px; flex-wrap: wrap;">
    <div style="flex: 1; min-width: 280px;">
        <h2>4. Boarding the Flight</h2>
        <ul>
            <li>Wait for your group or zone to be called before boarding.</li>
            <li>Keep your boarding pass and passport ready at the gate.</li>
            <li>Follow cabin crew instructions once on board.</li>
        </ul>
    </div>
    <div style="flex: 1; min-width: 50px;">
        <img src="https://static.vecteezy.com/system/resources/previews/008/978/480/large_2x/asian-passenger-is-showing-her-boarding-pass-to-the-airline-ground-crew-at-departure-gate-into-the-airplane-for-final-inspection-before-boarding-the-plane-free-photo.jpg"
             alt="Boarding the Flight"
             style="width: 100%; max-height: 250px; object-fit: cover; border-radius: 5px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);">
    </div>
</div>


<div class="guide-section" style="display: flex; align-items: center; gap: 20px; flex-wrap: wrap;">
    <div style="flex: 1; min-width: 280px;">
        <h2>5. In-Flight Conduct</h2>
        <ul>
            <li>Keep your seatbelt fastened while seated.</li>
            <li>Follow instructions for electronic devices usage.</li>
            <li>Be courteous to fellow passengers and crew.</li>
        </ul>
    </div>
    <div style="flex: 1; min-width: 50px;">
        <img src="https://tse1.mm.bing.net/th/id/OIP.TZkHbeonY2YD9EXdhl-wOwHaFV?pid=Api&P=0&h=180"
             alt="In-Flight Conduct"
             style="width: 100%; max-height: 250px; object-fit: cover; border-radius: 5px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);">
    </div>
</div>


<div class="guide-section" style="display: flex; align-items: center; gap: 20px; flex-wrap: wrap;">
    <div style="flex: 1; min-width: 280px;">
        <h2>6. Arrival & Immigration</h2>
        <ul>
            <li>Have your documents ready for immigration checks.</li>
            <li>Collect your baggage from the correct carousel.</li>
            <li>Declare any items as required by customs rules.</li>
        </ul>
    </div>
    <div style="flex: 1; min-width: 50px;">
        <img src="https://immigrationnewscanada.ca/wp-content/uploads/2022/10/Immigration-Check-At-Aiport.jpeg"
             alt="Arrival and Immigration"
             style="width: 100%; max-height: 250px; object-fit: cover; border-radius: 5px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);">
    </div>
</div>



</body>
</html>
