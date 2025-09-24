<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Info</title>
    <style>
   body {
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
    background-color: #2dc6eb; /* Light blue background */
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

.contact-section {
    padding: 30px;
    color: #fff;
}

.info-boxes {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin-bottom: 40px;
}

.info-card {
    background: white;
    color: #333;
    width: 22%;
    padding: 20px;
    border-radius: 6px;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.info-card .icon {
    font-size: 32px;
    margin-bottom: 10px;
}

.info-card h3 {
    margin-bottom: 10px;
    font-size: 16px;
}

.info-card p {
    font-size: 14px;
    line-height: 1.4;
}

.info-card a {
    color: #333;
    text-decoration: none;
}

.contact-content {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 40px;
}

.contact-left, .contact-right {
    flex: 1;
    min-width: 300px;
}

.contact-left h2 {
    font-size: 24px;
    margin-bottom: 10px;
}

.contact-left p {
    color: #e9f8fc;
    font-size: 14px;
    line-height: 1.6;
}

.truck-img {
    width: 180px;
    height: 180px;
    object-fit: cover;
    border-radius: 50%;
    margin-top: 20px;
}
.highlight-contact {
    color: black;
    font-size: 26px;
    font-weight: bold;
    text-align: left;
    margin-top: 15px;
}


.contact-right form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.contact-right label {
    font-size: 14px;
    font-weight: bold;
}

.contact-right input,
.contact-right textarea {
    padding: 10px;
    border: none;
    border-bottom: 2px solid #fff;
    background: transparent;
    color: #fff;
    font-size: 14px;
    outline: none;
}

.contact-right textarea {
    height: 80px;
    resize: none;
}

.contact-right button {
    padding: 10px;
    background: white;
    color: #2dc6eb;
    border: none;
    font-weight: bold;
    cursor: pointer;
    transition: background 0.3s;
}

.contact-right button:hover {
    background: #e6e6e6;
}
    </style>
</head>
<body>
<header class="header">
    <div class="logo">Airport.Co</div>

    <div class="nav-container">
        <ul class="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="about.jsp">About</a></li>

            <!-- Dropdown Container -->
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
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </div>
<div class="contact-section">
    <div class="info-boxes">
        <div class="info-card">
            <div class="icon">📍</div>
            <h3>OUR MAIN OFFICE</h3>
            <p>Soho 94 Broadway St New York, NY 1001</p>
        </div>
        <div class="info-card">
            <div class="icon">📞</div>
            <h3>PHONE NUMBER</h3>
            <p>234-9876-5400<br>888-0123-4567 (Toll Free)</p>
        </div>
        <div class="info-card">
            <div class="icon">📠</div>
            <h3>FAX</h3>
            <p>1-234-567-8900</p>
        </div>
        <div class="info-card">
            <div class="icon">✉️</div>
            <h3>EMAIL</h3>
            <p><a href="mailto:hello@theme.com">hello@theme.com</a></p>
        </div>
    </div>

    <div class="contact-content">
        <div class="contact-left">
            <h2>Contact info</h2>
            <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <img src="https://t4.ftcdn.net/jpg/03/14/15/07/240_F_314150765_q2DxXZrbll9KQhe8KnVCvvFPnvv2NbM4.jpg" alt="Truck Image" class="truck-img">
            <p class="highlight-contact">Feel Free To Contact Us</p>
        </div>
        <div class="contact-right">
            <form>
                <label>Email</label>
                <input type="email" placeholder="Enter a valid email address" required>

                <label>Name</label>
                <input type="text" placeholder="Enter your Name" required>

                <label>Message</label>
                <textarea placeholder="Enter your message" required></textarea>

                <button type="submit">SUBMIT</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
