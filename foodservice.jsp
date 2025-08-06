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
        <div class="logo">FlyHigh.Co</div>

        <div class="nav-container">
            <ul class="nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="index.jsp">Services</a></li>
                <li><a href="about.jsp">About</a></li>
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
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </div>

        
    </header>
    
<div class="glass-container">
    <h2>Order Before Boarding (Sealed & Hygienic)</h2>

    <!-- Morning Section -->
    <div class="time-section">
        <h3> Morning Snacks</h3>
        <div class="food-grid">
            <div class="food-card" style="background-image:url(https://www.shutterstock.com/image-photo/south-indian-breakfastidli-sambar-wada-260nw-1465035395.jpg); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Idly& vada</h4>
                <p>Idly and vada </p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Idly-vada" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://www.gifcen.com/wp-content/uploads/2022/05/donut-gif-6.gif); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Donut</h4>
                <p>Donut chocolate</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Donut" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://tamilarivu.org/grade2/images/poori.gif); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Poori</h4>
                <p>Poori & Masala </p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Poori" />
                    <input type="hidden" name="price" value="35" />
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

   <div class="food-card" style="background-image:url(https://kannada.cdn.zeenews.com/kannada/sites/default/files/2022/02/03/228727-dosa.gif); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Dosa</h4>
                <p>Dosa </p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Dosa" />
                    <input type="hidden" name="price" value="35" />
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
            <div class="food-card" style="background-image:url(https://st2.depositphotos.com/5653638/11810/i/950/depositphotos_118102788-stock-photo-indian-veg-biryani-veg-pulav.jpg);background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Veg Biryani</h4>
                <p>With raita & pickle</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Veg Biryani" />
                    <input type="hidden" name="price" value="120" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://www.secondrecipe.com/wp-content/uploads/2020/08/lemon-rice-2021.jpg);background-size: cover; background-position: center; color: white; border-radius: 10px; padding: 18px;">
                <h4>Lemon Rice</h4>
                <p>With pickle + curd</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Lemon Rice" />
                    <input type="hidden" name="price" value="70" />
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
            <div class="food-card" style="background-image:url(https://media.tenor.com/DIgfFhPbg_AAAAAC/pizza-food.gif);background-size: cover; background-position: center; color: white; border-radius: 10px; padding: 18px;">
                <h4>Pizza</h4>
                <p>Pizza ketch up</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Pizza"/>
                    <input type="hidden" name="price" value="70" />
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
            <div class="food-card" style="background-image:url(https://recipesblob.oetker.in/assets/d65e637c02454051b6d7c11d05fd5a9d/964x526/grilled-peanut-butter-and-jam-sandwich.webp); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Bread & Jam</h4>
                <p>Bread with Jam </p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Bread & Jam"/>
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            
            <div class="food-card" style="background-image:url(https://tse2.mm.bing.net/th/id/OIP.1MsmjCLdKQTWLXdRH-uL7QHaEK?pid=Api&P=0&h=180); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Burger</h4>
                <p>Burger with cheese</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Burger" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://media1.tenor.com/m/u79vBIX7dfMAAAAC/waffle.gif); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Waffle</h4>
                <p>Waffle Chocolate</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Waffle" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://media.giphy.com/media/28gWDaE3qujze42mqQ/giphy.gif); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>PopCorn</h4>
                <p>PopCorn</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="PopCorn" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://media.tenor.com/k1-nz5UC2yMAAAAM/subway-honey-mustard-chicken-wrap.gif); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Shawarma</h4>
                <p>Shawaram</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Shawaram" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            
            <div class="food-card" style="background-image:url(https://media2.giphy.com/media/HZMBatubcJ1sY/giphy.gif); background-size: cover; background-position: center; color: white; border-radius: 8px; padding: 2px;">
                <h4>Muffins</h4>
                <p>Muffins with cream</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Muffins" />
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Night Section -->
    <div class="time-section">
        <h3>Night Dinner</h3>
        <div class="food-grid">
            <div class="food-card" style="background-image:url(https://img.freepik.com/premium-photo/delicious-paneer-butter-masala-photography_928503-847.jpg?w=2000);background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Paneer Butter Masala</h4>
                <p>With rice + roti + salad</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Paneer Butter Masala" />
                    <input type="hidden" name="price" value="150" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            
             <div class="food-card" style="background-image:url(https://4.bp.blogspot.com/-tU45OgFrGhE/WTVTxisPOiI/AAAAAAAABNs/Ltr_xh3zWsgBKK1x_9bfpXzmImd3OiZcQCLcB/s1600/Chapati-Stock-Photos-Images-Pictures.png);background-size: cover; background-position: center; color: white; border-radius: 10px; padding: 18px;">
                <h4>Chapati Combo</h4>
                <p>2 chapati + sabji +Lemon</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Chapati Combo" />
                    <input type="hidden" name="price" value="100" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            <div class="food-card" style="background-image:url(https://gifdb.com/images/high/fast-food-chain-mcdonalds-famous-french-fries-e41l7t915prpmfrn.gif);background-size: cover; background-position: center; color: white; border-radius: 10px; padding: 18px;">
                <h4>French Fries</h4>
                <p>Fries with ketch up</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="French Fries"/>
                    <input type="hidden" name="price" value="70" />
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
            <div class="food-card" style="background-image:url(https://media.tenor.com/GTwTZ0vjQOAAAAAC/mcdonalds-spicy-chicken-mcnuggets.gif);background-size: cover; background-position: center; color: white; border-radius: 10px; padding: 18px;">
                <h4>Nuggest</h4>
                <p>Nuggest with ketch up</p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Nuggest"/>
                    <input type="hidden" name="price" value="70" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
             <div class="food-card" style="background-image:url(https://recipesblob.oetker.in/assets/d65e637c02454051b6d7c11d05fd5a9d/964x526/grilled-peanut-butter-and-jam-sandwich.webp); background-size: cover; background-position: center; color: white; border-radius: 12px; padding: 20px;">
                <h4>Bread & Jam</h4>
                <p>Bread with Jam </p>
                <form action="order.jsp" method="get">
                    <input type="hidden" name="foodItem" value="Bread & Jam"/>
                    <input type="hidden" name="price" value="35" />
                    <button class="order-btn" type="submit">Order</button>
                </form>
            </div>
            
           
        </div>
    </div>

</div>

</body>
</html>
