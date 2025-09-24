<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    String[] cities = {
        "Hissar, Haryana", "Bathinda, Punjab", "Jaipur, Rajasthan", "Gwalior, Madhya Pradesh", "Ajmer, Rajasthan",
        "Haridwar, Uttarakhand", "Chandigarh, Chandigarh", "Amritsar, Punjab", "Shimla, Himachal Pradesh", "Bhopal, Madhya Pradesh",
        "Ahmedabad, Gujarat", "Varanasi, Uttar Pradesh", "Prayagraj, Uttar Pradesh", "Kanpur, Uttar Pradesh", "Gorakhpur, Uttar Pradesh"
    };
String[] images = {
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmPCXL5rUMtY63fEgDUyEPTFpjSrirp_Rqwg&s",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Mumbai_Skyline_at_Night.jpg/640px-Mumbai_Skyline_at_Night.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/India_Gate_in_New_Delhi_03-2016_img3.jpg/640px-India_Gate_in_New_Delhi_03-2016_img3.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Victoria_Memorial_Kolkata.jpg/640px-Victoria_Memorial_Kolkata.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Bangalore_Skyline.jpg/640px-Bangalore_Skyline.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Hussain_Sagar_Lake_Hyderabad.jpg/640px-Hussain_Sagar_Lake_Hyderabad.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Sabarmati_Ashram_Ahmedabad.jpg/640px-Sabarmati_Ashram_Ahmedabad.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Shaniwar_Wada_Pune.jpg/640px-Shaniwar_Wada_Pune.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Hawa_Mahal_Jaipur.jpg/640px-Hawa_Mahal_Jaipur.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Bara_Imambara_Lucknow.jpg/640px-Bara_Imambara_Lucknow.jpg"
    };
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Flight Fare Slider</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f3f3;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .slider-wrapper {
            max-width: 1250px;
            margin: auto;
            position: relative;
        }

        .slider-track {
            display: flex;
            overflow-x: auto;
            scroll-behavior: smooth;
            scrollbar-width: none; /* Firefox */
            -ms-overflow-style: none;  /* IE/Edge */
        }

        .slider-track::-webkit-scrollbar {
            display: none;
        }

        .fare-card {
            flex: 0 0 auto;
            width: 240px;
            margin: 0 5px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .fare-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .fare-info {
            padding: 10px;
        }

        .fare-info h3 {
            margin: 0;
            font-size: 16px;
        }

        .fare-info p {
            font-size: 14px;
            color: #555;
            margin: 5px 0;
        }

        .book-btn {
            margin-top: 5px;
            padding: 6px 12px;
            background: #fff;
            color: orange;
            border: 2px solid orange;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        .nav-btn {
            position: absolute;
            top: 40%;
            transform: translateY(-50%);
            background: white;
            border: 1px solid #ccc;
            padding: 10px;
            cursor: pointer;
            border-radius: 50%;
            z-index: 10;
        }

        .prev-btn { left: 0; }
        .next-btn { right: 0; }

    </style>
</head>
<body>

<h2>Cheapest Fares From Chennai</h2>

<div class="slider-wrapper">
    <button class="nav-btn prev-btn">&#10094;</button>
    <div class="slider-track" id="sliderTrack">
        <% for (int i = 0; i < cities.length; i++) {
            String[] parts = cities[i].split(",");
            String city = parts.length > 0 ? parts[0].trim() : "";
            String state = parts.length > 1 ? parts[1].trim() : "";
        %>
            <div class="fare-card">
                <img src="https://via.placeholder.com/240x150.png?text=<%=city.replace(" ", "%20")%>" alt="<%=city%>">
                <div class="fare-info">
                    <h3><%=city%>, <%=state%></h3>
                    <p>Fri, <%=10 + i%> Jul</p>
                    <p><strong>₹<%=1600 + i * 100%></strong> onwards</p>
                    <button class="book-btn">Book Flight</button>
                </div>
            </div>
        <% } %>
    </div>
    <button class="nav-btn next-btn">&#10095;</button>
</div>

<script>
    const slider = document.getElementById("sliderTrack");
    const cardWidth = 250; // including margin
    const scrollAmount = cardWidth * 5;

    document.querySelector(".next-btn").addEventListener("click", () => {
        if (slider.scrollLeft + scrollAmount >= slider.scrollWidth - slider.clientWidth) {
            slider.scrollLeft = 0; // reset to start
        } else {
            slider.scrollLeft += scrollAmount;
        }
    });

    document.querySelector(".prev-btn").addEventListener("click", () => {
        slider.scrollLeft -= scrollAmount;
    });

   
</script>

</body>
</html>
