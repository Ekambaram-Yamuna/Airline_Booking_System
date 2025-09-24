<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, java.text.*" %>
<%
    String foodItem = request.getParameter("foodItem");

    Map<String, String> prices = new HashMap<>();
    prices.put("Sandwich", "120");
    prices.put("Veg Roll", "100");
    prices.put("Masala Dosa", "130");
    prices.put("Samosa", "80");
    prices.put("Coffee", "60");
    prices.put("Pongal", "110");
    prices.put("Poori", "140");
    prices.put("Paneer Rice", "160");
    prices.put("Idli", "90");
    prices.put("Fruit Bowl", "70");

    String price = prices.getOrDefault(foodItem, "100");

    // Calculate estimated delivery time (20 mins from now)
    Calendar calendar = Calendar.getInstance();
    calendar.add(Calendar.MINUTE, 20);
    SimpleDateFormat sdf = new SimpleDateFormat("hh:mm a");
    String deliveryTime = sdf.format(calendar.getTime());
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation</title>
    <style>
        body {
            background: #e0f7fa;
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .confirmation-box {
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(15px);
            padding: 35px;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
            text-align: center;
            width: 420px;
        }

        .confirmation-box h2 {
            color: #006064;
        }

        .confirmation-box p {
            font-size: 18px;
            margin: 12px 0;
        }

        .confirmation-box select {
            padding: 8px;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            width: 80%;
        }

        .confirm-btn {
            margin-top: 25px;
            padding: 10px 25px;
            background-color: #006064;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 16px;
        }

        .confirm-btn:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>

<div class="confirmation-box">
    <h2> Order Summary</h2>
    <p><strong>Item:</strong> <%= foodItem %></p>
    <p><strong>Price:</strong> ₹<%= price %></p>

    <form action="#">
        <p><strong>Select Payment Mode:</strong></p>
        <select name="paymentMode" required>
            <option value="">-- Choose --</option>
            <option value="UPI">UPI</option>
            <option value="Card">Credit/Debit Card</option>
            <option value="Cash">Cash on Delivery</option>
        </select>

        <p><strong>Delivery Time:</strong> Before <%= deliveryTime %></p>

        <button type="submit" class="confirm-btn">Confirm Order</button>
    </form>
</div>

</body>
</html>