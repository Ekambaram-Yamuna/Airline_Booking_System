<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Your Flight - AirLine</title>
    <link rel="stylesheet" href="booknow.css">
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
            <li><a href="#">Contact</a></li>
        </ul>
    </div>

    <div class="auth-buttons">
        <button>Sign Up</button>
        <button>Login</button>
    </div>
</header>


    <div class="main-container">
        <h1>Flight Booking Form</h1>
        <form class="booking-form" action="BookingServlet" method="post">
            
            <!-- 1. Flight Details -->
            <fieldset>
                <legend>Flight Details</legend>
                <div class="row">
                    <select name="from" required>
                      
                 <option value="">From</option>
                 <option>Chennai (MAA)</option>
            <option>Delhi (DEL)</option>
            <option>Mumbai (BOM)</option>
            <option>Bangalore (BLR)</option>
            <option>Hyderabad (HYD)</option>
            <option>Kolkata (CCU)</option>
            <option>Ahmedabad (AMD)</option>
            <option>Pune (PNQ)</option>
            <option>Goa (GOI)</option>
            <option>Trivandrum (TRV)</option>
            <option>Cochin (COK)</option>
            <option>Jaipur (JAI)</option>
            <option>Lucknow (LKO)</option>
            
            <option>Singapore (SIN)</option>
            <option>Dubai (DXB)</option>
            <option>London Heathrow (LHR)</option>
            <option>New York (JFK)</option>
            <option>Paris Charles de Gaulle (CDG)</option>
            <option>Frankfurt (FRA)</option>
            <option>Doha (DOH)</option>
            <option>Toronto (YYZ)</option>
            <option>Tokyo Haneda (HND)</option>
            <option>Bangkok (BKK)</option>
            <option>Kuala Lumpur (KUL)</option>
            <option>Sydney (SYD)</option>
            <option>Melbourne (MEL)</option>
            
                         
                    </select>

                    <select name="to" required>
                        <option value="">To</option>
                       
                       <option>Singapore (SIN)</option>
            <option>Dubai (DXB)</option>
            <option>London Heathrow (LHR)</option>
            <option>New York (JFK)</option>
            <option>Paris Charles de Gaulle (CDG)</option>
            <option>Frankfurt (FRA)</option>
            <option>Doha (DOH)</option>
            <option>Toronto (YYZ)</option>
            <option>Tokyo Haneda (HND)</option>
            <option>Bangkok (BKK)</option>
            <option>Kuala Lumpur (KUL)</option>
            <option>Sydney (SYD)</option>
            <option>Melbourne (MEL)</option>
             <option>Delhi (DEL)</option>
            <option>Mumbai (BOM)</option>
            <option>Bangalore (BLR)</option>
            <option>Hyderabad (HYD)</option>
            <option>Kolkata (CCU)</option>
            <option>Ahmedabad (AMD)</option>
            <option>Pune (PNQ)</option>
            <option>Goa (GOI)</option>
            <option>Trivandrum (TRV)</option>
            <option>Cochin (COK)</option>
            <option>Jaipur (JAI)</option>
            <option>Lucknow (LKO)</option>
                       
                    </select>
                </div>

                <div class="row">
                    <select name="airline">
                        <option value="">Preferred Airline</option>
                       
                               <!-- Indian Airlines -->
    <option>IndiGo</option>
    <option>SpiceJet</option>
    <option>Air India</option>
    <option>Vistara</option>
    <option>Go First</option>
    <option>Akasa Air</option>
    
    <!-- International Airlines -->
    <option>Emirates</option>
    <option>Singapore Airlines</option>
    <option>Qatar Airways</option>
    <option>Etihad Airways</option>
    <option>Lufthansa</option>
    <option>British Airways</option>
    <option>Thai Airways</option>
    <option>Malaysia Airlines</option>
    <option>Turkish Airlines</option>
                    
                       
                    </select>

                    <select name="seating">
                        <option value="">Preferred Seating</option>
                        <option>Window</option>
                        <option>Aisle</option>
                        <option>Middle</option>
                    </select>
                </div>

                <div class="row">
                    <input type="date" name="departureDate" required>
                    <input type="time" name="departureTime" required>
                </div>

                <div class="row">
                    <input type="date" name="returnDate" placeholder="Return Date">
                    <input type="time" name="returnTime" placeholder="Return Time">
                </div>

                <div class="row">
                    <input type="number" name="seats" placeholder="No. of Seats" required>
                </div>

                <div class="row">
                    <label><input type="radio" name="fare" value="One Way" required> One Way</label>
                    <label><input type="radio" name="fare" value="Round-Trip"> Round-Trip</label>
                </div>
            </fieldset>

            <!-- 2. Passenger Count -->
            <fieldset>
                <legend>Passenger Count</legend>
                <div class="row">
                    <select name="adults">
                        <option value="">Adults (12+)</option>
                        <option>1</option><option>2</option><option>3</option><option>4+</option>
                    </select>
                    <select name="children">
                        <option value="">Children (2-11)</option>
                        <option>0</option><option>1</option><option>2+</option>
                    </select>
                    <select name="infants">
                        <option value="">Infants (&lt;2)</option>
                        <option>0</option><option>1</option>
                    </select>
                </div>
            </fieldset>

            <!-- 3. Passenger Details -->
            <fieldset>
                <legend>Passenger Details</legend>
                <div class="row">
                    <input type="text" name="name" placeholder="Full Name" required>
                    <input type="email" name="email" placeholder="Email Address" required>
                </div>
                <div class="row">
                    <input type="text" name="phone" placeholder="Phone Number" required>
                    <input type="text" name="passport" placeholder="Passport Number">
                </div>
            </fieldset>

            <!-- 4. Payment Method -->
            <fieldset>
                <legend>Payment Method</legend>
                <div class="row">
                    <label><input type="radio" name="payment" value="Credit Card" required> Credit Card</label>
                    <label><input type="radio" name="payment" value="Debit Card"> Debit Card</label>
                    <label><input type="radio" name="payment" value="UPI"> UPI</label>
                    <label><input type="radio" name="payment" value="Net Banking"> Net Banking</label>
                </div>
            </fieldset>

            

            <!-- Submit buttons -->
            <div class="form-buttons">
                <button class="submit-btn" type="submit">Book & Pay</button>
                <button class="clear-btn" type="reset">Clear</button>
            </div>
        </form>

        <footer>
            &copy; 2025 AirLine. All rights reserved.
        </footer>
    </div>
</div>
</body>
</html>