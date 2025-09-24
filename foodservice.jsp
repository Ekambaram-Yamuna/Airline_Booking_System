<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Airport Food Stall</title>
    <style>
        /* (Your existing CSS - unchanged) */
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #e0e0e0;
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
 

        .glass-container {
            max-width: 1100px;
            margin: 40px auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .glass-container h2 {
            text-align: center;
            color: #003c8f;
            margin-bottom: 30px;
        }

        .time-section {
            margin-bottom: 30px;
        }

        .time-section h3 {
            color: #003c8f;
            border-bottom: 2px solid #003c8f;
            padding-bottom: 5px;
        }

        .food-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .food-card {
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(6px);
            border-radius: 15px;
            padding: 20px;
            width: 220px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s;
        }

        .food-card:hover {
            transform: scale(1.05);
        }

        .food-card h4 {
            margin: 10px 0 5px;
            color: #003c8f;
        }

        .food-card p {
            font-size: 14px;
            color: #333;
        }

        .order-btn {
            margin-top: 10px;
            padding: 8px 16px;
            border: none;
            background-color: #003c8f;
            color: white;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
        }

        .order-btn:hover {
            background-color: #0059c1;
        }
    </style>
</head>
<body>
<%
    String foodItem = request.getParameter("foodItem");
    String price = request.getParameter("price");
    if (foodItem != null && price != null) {
%>
    <div style="background: #dff0d8; color: #3c763d; border: 1px solid #d6e9c6; padding: 15px; margin: 20px auto; max-width: 800px; border-radius: 8px; text-align: center;">
        ✅ Your order for <strong><%= foodItem %></strong> has been placed successfully! <br>
        💸 Total Price: ₹<%= price %>
    </div>
<%
    }
%>
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
    
<div class="glass-container">
    <h2>Order Before Boarding (Sealed & Hygienic)</h2>

    <!-- Morning Section -->
    <div class="time-section">
        <h3> Morning Snacks</h3>
        <div class="food-grid">
            <div class="food-card">
                <h4>Idli & Vada</h4>
                <p>With chutney & sambar</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Idli & Vada" />
                    <input type="hidden" name="price" value="80" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image: url('https://media.giphy.com/media/gQG3k2Fh20QF2/giphy.gif'); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
    <h4>Sandwich</h4>
    <p>Veg cheese grilled</p>
    <form action="order.jsp" method="get">
        <input type="hidden" name="foodItem" value="Sandwich" />
        <input type="hidden" name="price" value="90" />
        <button class="order-btn" type="submit">Order</button>
    </form>
</div>
            
            <div class="food-card" style="background-image:url('https://media.giphy.com/media/10VqBZY5yX4nkY/giphy.gif'); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">  
                <h4>Boiled Egg Box</h4>
                <p>2 eggs, pepper salt mix</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Boiled Egg Box" />
                    <input type="hidden" name="price" value="60" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Afternoon Section -->
    <div class="time-section">
        <h3> Afternoon Meals</h3>
        <div class="food-grid">
            <div class="food-card">
                <h4>Veg Biryani</h4>
                <p>With raita & pickle</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Veg Biryani" />
                    <input type="hidden" name="price" value="120" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://media3.giphy.com/media/XFihfrMMOqMLObyfXh/giphy.gif);background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Chicken Rice Box</h4>
                <p>Boneless chicken curry + rice</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Chicken Rice Box" />
                    <input type="hidden" name="price" value="140" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style=background-image:url(https://i.pinimg.com/originals/c8/1a/4a/c81a4ae75ccb8a3c0ff4cb0038264d92.png);background-size: cover; background-position: center; color: white; border-radius: 12px; padding:20px;">
                <h4>Chapati Combo</h4>
                <p>2 chapati + sabji + curd</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Chapati Combo" />
                    <input type="hidden" name="price" value="100" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Evening Section -->
    <div class="time-section">
        <h3> Evening Snacks</h3>
        <div class="food-grid">
            <div class="food-card" style="background-image:url(https://c.tenor.com/uoyHBqmTXQoAAAAM/cheese-samosa-sprinkled.gif);background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Samosa Pack</h4>
                <p>2 samosas + mint dip</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Samosa Pack" />
                    <input type="hidden" name="price" value="40" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://media.tenor.com/ip5EMEfMqqMAAAAM/croissants-pastry.gif); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Puff Pastry</h4>
                <p>Veg-filled spicy puff</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Puff Pastry" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://media.tenor.com/3q8ZUGwwv4QAAAAC/cup-noodles-lunch.gif);background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Noodles Box</h4>
                <p>Spicy Hakka noodles (mild)</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Noodles Box" />
                    <input type="hidden" name="price" value="85" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Night Section -->
    <div class="time-section">
        <h3>Night Dinner</h3>
        <div class="food-grid">
            <div class="food-card" style="background-image:url(https://img.freepik.com/premium-photo/delicious-paneer-butter-masala-photography_928503-847.jpg?w=2000);background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">>
                <h4>Paneer Butter Masala</h4>
                <p>With rice + roti + salad</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Paneer Butter Masala" />
                    <input type="hidden" name="price" value="150" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card">
                <h4>Lemon Rice</h4>
                <p>With pickle + curd</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Lemon Rice" />
                    <input type="hidden" name="price" value="70" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card">
                <h4>Curd Rice</h4>
                <p>Light & cool with fried chili</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Curd Rice" />
                    <input type="hidden" name="price" value="65" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
        </div>
    </div>

</div>

</body>
</html>