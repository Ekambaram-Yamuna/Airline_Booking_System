<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession userSession = request.getSession(false);
    String firstName = null;
    if (userSession != null && userSession.getAttribute("firstName") != null) {
        firstName = (String) userSession.getAttribute("firstName");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Airport Dashboard</title>
    <style>
        html {
            scroll-behavior: smooth;
        }
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #fff;
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
        
        .heading {
  text-align: center;
  padding: 3rem 2rem;
  
  max-width: 900px;
  margin: 0 auto;
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
            align-items: center;
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
        .auth-buttons button {
            background-color: #ffffff;
            color: #003c8f;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
            font-size: 14px;
            margin-left: 8px;
        }
        .auth-buttons button:hover {
            background-color: #e1eaff;
        }
        .hero img {
            width: 100%;
            height: 60vh;
            object-fit: cover;
        }
        .services-heading {
            text-align: center;
            padding: 40px 0 10px;
        }
        .services-heading h2 {
            font-size: 32px;
            color: #003c8f;
            margin: 0;
        }
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            padding: 40px 60px;
            background-color: #ffffff;
        }
        .feature-card {
            text-align: center;
            margin: 15px;
        }
        .feature-card img {
            width: 200px;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 10px;
        }
        
        

        /* Promo Slider */
        .promo-slider {
            width: 100%;
            background-color: #f5f7fa;
            padding: 50px 0;
            position: relative;
            overflow: hidden;
        }

        .slider-wrapper {
            max-width: 1200px;
            margin: auto;
            position: relative;
        }

        .slide {
            display: none;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            gap: 40px;
            text-align: center;
        }

        .slide.active {
            display: flex;
            animation: fade 1s ease-in-out;
        }

        @keyframes fade {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .slide img {
            width: 300px;
            height: auto;
            border-radius: 10px;
        }

        .slide-text {
            max-width: 500px;
        }

        .slide-text h1 {
            font-size: 36px;
            font-weight: bold;
            margin: 0 0 10px;
            color: #000;
        }

        .slide-text p {
            font-size: 20px;
            margin-bottom: 10px;
            color: #444;
        }

        .book-now-btn {
            background-color: #003c8f;
            color: white;
            padding: 12px 24px;
            border-radius: 6px;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
        }

        .book-now-btn:hover {
            background-color: #002f6c;
        }

        .tnc {
            font-size: 12px;
            color: #777;
        }

        .nav.prev,
        .nav.next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 30px;
            color: #003c8f;
            background: white;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 50%;
            user-select: none;
            transition: background-color 0.3s;
        }

        .nav.prev:hover,
        .nav.next:hover {
            background-color: #eee;
        }

        .nav.prev {
            left: 10px;
        }

        .nav.next {
            right: 10px;
        }

        @media screen and (max-width: 768px) {
            .slide-text h1 {
                font-size: 28px;
            }
            .slide-text p {
                font-size: 16px;
            }
            .book-now-btn {
                padding: 10px 20px;
            }
            .slide {
                flex-direction: column;
            }
           .inflight-carousel-section {
    padding: 60px 20px;
    background: #f9f9f9;
    text-align: center;
}

.inflight-carousel-wrapper {
    position: relative;
    max-width: 1000px;
    margin: auto;
    overflow: hidden;
}

.inflight-carousel-track {
    display: flex;
    transition: transform 0.5s ease-in-out;
    width: 300%; /* 3 videos */
}

.inflight-video {
    flex: 0 0 100%;
    padding: 10px;
    box-sizing: border-box;
}

.inflight-video video {
    width: 100%;
    border-radius: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.inflight-video p {
    margin-top: 10px;
    font-weight: bold;
    font-size: 16px;
    color: #003c8f;
}

.carousel-btn {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: #003c8f;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 50%;
    cursor: pointer;
    z-index: 2;
}

.carousel-btn:hover {
    background: #002f6c;
}

.carousel-btn.prev {
    left: 10px;
}

.carousel-btn.next {
    right: 10px;
}
           
        }
        
     .team {
  background: linear-gradient(#f5f5f5 50%, #fff 50.1%);
  padding: 2rem;
  display: flex;
  flex-direction: column;
  align-items: center;
}
     

.team .box-container {
  display: flex;
  justify-content: center;
  gap: 2rem;
  flex-wrap: nowrap; /* This forces all boxes to stay in one line */
}

.team .box {
  border: 0.2rem solid #222;
  text-align: center;
  background-color: #fff;
  overflow: hidden;
  transition: 0.3s ease;
}

.team .box-container .box {
  width: 80%;
  min-width: 200px;
  max-width: 310px;
}
.team .box-container .box .image {
  height: 20rem; /* reduced from 50rem */
  width: 100%;
  position: relative;
  overflow: hidden;
}


.team .box:hover .image img {
  transform: scale(1.1);
}

.team .box:hover .image .share {
  left: 0;
}

.team .image {
  height: 40rem;
  width: 100%;
  position: relative;
  overflow: hidden;
}

.team .image img {
  height: 100%;
  width: 100%;
  object-fit: cover;
  transition: 0.5s ease;
}

.team .image .share {
  position: absolute;
  top: 0;
  left: -8rem;
  background: #222;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 0 1rem;
  gap: 1rem;
  transition: 0.4s ease;
}

.team .image .share a {
  height: 3.2rem;
  width: 3.2rem;
  border: 0.2rem solid #fff;
  font-size: 1.6rem;
  color: #fff;
  line-height: 3.2rem;
  text-align: center;
  text-decoration: none;
}

.team .image .share a:hover {
  background: #fff;
  color: #222;
}

.team .content {
  border-top: 0.2rem solid #222;
  padding: 1.5rem;
}

.team .content h3 {
  font-size: 2rem;
  color: #222;
  margin: 0;
  text-transform: capitalize;
}

.team .content p {
  font-size: 1.5rem;
  color: #e84393;
  margin-top: 0.5rem;
  text-transform: lowercase;
}

.reviews-slider {
  padding: 20px;
}

.reviews-slider .slide {
  background: #ffffff;
  border-radius: 10px;
  padding: 15px;
  text-align: left;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
  width: 220px; /* Reduced width */
  margin: auto;
  height: auto;
}

.reviews-slider .slide .user {
  display: flex;
  align-items: center;
  gap: 0.8rem;
}

.reviews-slider .slide .user img {
  height: 50px;
  width: 50px;
  border-radius: 50%;
  object-fit: cover;
}

.reviews-slider .slide .info h3 {
  font-size: 16px;
  color: #222;
  margin: 0;
}

.reviews-slider .slide .stars {
  margin-top: 4px;
}

.reviews-slider .slide .stars i {
  font-size: 14px;
  color: #e84393;
}

.reviews-slider .slide .text {
  padding: 12px;
  background: #f7f7f7;
  border-radius: 6px;
  line-height: 1.5;
  font-size: 13px;
  color: #444;
  margin-top: 10px;
  position: relative;
}

.reviews-slider .slide .text::before {
  content: '';
  position: absolute;
  top: -10px;
  left: 20px;
  height: 20px;
  width: 20px;
  background: #f7f7f7;
  transform: rotate(45deg);
}



    </style>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
     
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
</head>
<body>
<header class="header">
    <div class="logo">Airport.Co</div>
    <div class="nav-container">
        <ul class="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="about.jsp">About</a></li>
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
            <li><a href="contact">Contact</a></li>
        </ul>
    </div>
    <div class="auth-buttons">
        <% if (firstName == null) { %>
            <form action="signup.jsp" method="get" style="display:inline">
                <button type="submit">Sign Up</button>
            </form>
            <form action="login.jsp" method="get" style="display:inline">
                <button type="submit">Login</button>
            </form>
        <% } else { %>
            <form action="profile.jsp" method="get" style="display:inline">
                <button type="submit">Profile (<%= firstName %>)</button>
            </form>
            <form action="LogoutServlet" method="post" style="display:inline">
                <button type="submit">Logout</button>
            </form>
        <% } %>
    </div>
</header>

<section class="hero">
    <img src="https://www.nlgi.com.np/media/fyigqzjs/plane3.gif" alt="Airplane" />
</section>

<section id="services" class="services-heading">
    <h2>Services</h2>
</section>

<section class="features">
    <div class="feature-card">
        <a href="passangerguide.jsp">
            <img src="https://tse4.mm.bing.net/th?id=OIP.SsC49MpY_yxeNd9AmiFFCwHaE8&pid=Api&P=0&h=180" alt="Guide">
            <p>Passengers Guide</p>
        </a>
    </div>
    <div class="feature-card">
        <img src="https://tse3.mm.bing.net/th?id=OIP.cKKdM-oJu3SqIcAnebRiVAHaF7&pid=Api&P=0&h=180" alt="Booking">
        <p>Booking Passengers</p>
    </div>
    <div class="feature-card">
        <a href="airportsecurity.jsp">
            <img src="https://tse4.mm.bing.net/th?id=OIP.mDFqQO7HVYWxG0O3Gk57qQHaFb&pid=Api&P=0&h=180" alt="Security">
            <p>Airport Security</p>
        </a>
    </div>
    <div class="feature-card">
        <a href="foodservice.jsp">
            <img src="https://tse1.mm.bing.net/th?id=OIP.SYUKPv53Lo1TM1zLzzKWeAHaE8&pid=Api&P=0&h=180" alt="Food">
            <p>Food Service</p>
        </a>
    </div>
</section>

<!-- Promo Slider Section -->
<section class="promo-slider">
    <div class="slider-wrapper">
        <div class="slide active">
            <img src="https://media.lordicon.com/icons/wired/lineal/2115-refund.gif" alt="30% Cashback">
            <div class="slide-text">
                <h1>Lowest fares or<br>5x refund</h1>
                <p>Book now</p>
                <a href="domestic.jsp" class="book-now-btn">Book Now</a>
                <div class="tnc">*T&C Apply</div>
            </div>
        </div>
        <div class="slide">
            <img src="https://www.shutterstock.com/image-vector/cashback-5-percent-icon-isolated-260nw-2433200393.jpg" alt="5% Cashback">
            <div class="slide-text">
                <h1>5% Cashback<br>on every booking</h1>
                <p>Hurry up!</p>
                <a href="internation.jsp" class="book-now-btn">Book Now</a>
                <div class="tnc">*T&C Apply</div>
            </div>
        </div>
        <div class="slide">
            <img src="https://img.freepik.com/premium-vector/flash-sale-background-flat-style_23-2147766285.jpg" alt="Flash Sale">
            <div class="slide-text">
                <h1>Flash Sale!<br>Up to 50% Off</h1>
                <p>Limited time offer</p>
                <a href="offers.jsp" class="book-now-btn">Book Now</a>
                <div class="tnc">*T&C Apply</div>
            </div>
        </div>

        <div class="nav prev">&#10094;</div>
        <div class="nav next">&#10095;</div>
    </div>
</section>

<section class="inflight-carousel-section">
    <h2 style="text-align: center; font-size: 28px; margin-top: 50px; color: #003c8f;">Best In-flight Experiences</h2>
    <div class="inflight-carousel-wrapper">
        <button class="carousel-btn prev" onclick="moveVideo(-1)">&#10094;</button>
        <div class="inflight-carousel-track" id="inflightCarousel">
            <div class="inflight-video">
                <video autoplay muted loop>
                    <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
                </video>
                <p>Premium Leather Seats</p>
            </div>
            <div class="inflight-video">
                <video autoplay muted loop>
                    <source src="https://www.w3schools.com/html/movie.mp4" type="video/mp4">
                </video>
                <p>In-flight Entertainment</p>
            </div>
            <div class="inflight-video">
                <video autoplay muted loop>
                    <source src="https://media.w3.org/2010/05/sintel/trailer_hd.mp4" type="video/mp4">
                </video>
                <p>Delicious Meals</p>
            </div>
        </div>
        <button class="carousel-btn next" onclick="moveVideo(1)">&#10095;</button>
    </div>
</section>

<!-- team section starts  -->

<section class="team" id="team">

    <div class="heading">
        <h1>our team</h1>
        <p>We are a group of passionate and dedicated individuals who have come together to build a seamless and modern flight booking experience. Our team believes in innovation, simplicity, and putting passengers first.</p>
    <br>“To build a reliable, user-friendly airline booking system that simplifies air travel for everyone.”
    </div>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="https://scontent.fmaa2-1.fna.fbcdn.net/v/t51.75761-15/468707240_18368434471117884_9081978925404770783_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=127cfc&_nc_ohc=ruwKgLDEAxcQ7kNvwG_G3BT&_nc_oc=Adm6x6EO76uYvK6jY5RQ0Gqp7o4jAWonxsoVgyR-GeBvavn2EWElFuOcUcLjm3qhRImROVZB4gbzuTiBO4sXRZbD&_nc_zt=23&_nc_ht=scontent.fmaa2-1.fna&_nc_gid=1Rz7AINuvclxMVJH7cx2ug&oh=00_AfRvSHrY2BZ-gGFnSPQlY94BHi-NaeT_KScj7okfAatU4A&oe=6873D8CF" alt="Manveen">
                <div class="share">
                    <a href="https://www.facebook.com/" class="fab fa-facebook-f"></a>
                    <a href="https://x.com/?lang=en-in" class="fab fa-twitter"></a>
                    <a href="https://x.com/?lang=en-in" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
            </div>
            <div class="content">
                <h3>Anuj team,</h3>
                <p>HR Team</p>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="https://nfa.org.na/wp-content/uploads/2025/06/image0-6.jpeg" alt="Sana Shaikh">
                <div class="share">
                    <a href="https://www.facebook.com/" class="fab fa-facebook-f"></a>
                    <a href="https://x.com/?lang=en-in" class="fab fa-twitter"></a>
                    <a href="https://x.com/?lang=en-in" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
            </div>
            <div class="content">
                <h3>Namibia</h3>
                <p>Football Association</p>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="https://media.licdn.com/dms/image/v2/D4D22AQHRHeWwQA1Fkg/feedshare-shrink_800/B4DZSTT7iMGcAk-/0/1737638266749?e=2147483647&v=beta&t=bV1oWrEMF1RNz2ExjXjd_7l0H_EEFaUuGvA9DBDKLCo" alt="Aarti">
                <div class="share">
                    <a href="https://www.facebook.com/" class="fab fa-facebook-f"></a>
                    <a href="https://x.com/?lang=en-in" class="fab fa-twitter"></a>
                    <a href="https://x.com/?lang=en-in" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
            </div>
            <div class="content">
                <h3>Hema</h3>
                <p>Marketing and Corporate Business Team</p>
            </div>
        </div>

    </div>

</section>

<!-- team section ends -->

<!-- reviews section starts -->
<section class="reviews">
  <div class="swiper reviews-slider">
    <div class="swiper-wrapper">

      <div class="swiper-slide slide">
        <div class="user">
          <img src="https://5.imimg.com/data5/EF/GL/OS/SELLER-96336455/fairness-cream-500x500.jpeg" alt="">
          <div class="info">
            <h3>Maya</h3>
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
          </div>
        </div>
        <p class="text">Helping to reduce dark spots and uneven skin tone. It's a great product!</p>
      </div>

      <div class="swiper-slide slide">
        <div class="user">
          <img src="https://media.starquik.com/catalog/product/SQ106889.jpg" alt="">
          <div class="info">
            <h3>Kavy</h3>
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
          </div>
        </div>
        <p class="text">Keeps skin hydrated all day long. Excellent one!</p>
      </div>

      <div class="swiper-slide slide">
        <div class="user">
          <img src="https://i.ytimg.com/vi/UKk-SwgbwGk/hq720.jpg" alt="">
          <div class="info">
            <h3>Aadhya</h3>
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
          </div>
        </div>
        <p class="text">Easy to apply. I'm happy to use this product.</p>
      </div>

      <div class="swiper-slide slide">
        <div class="user">
          <img src="https://smytten-image.gumlet.io/shop_item/NIE0055AB11.jpg" alt="">
          <div class="info">
            <h3>Meera</h3>
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
          </div>
        </div>
        <p class="text">I love the product, but it's a bit pricey.</p>
      </div>

    </div>
  </div>
</section>

<!-- reviews section ends -->



<script>
    const slides = document.querySelectorAll('.slide');
    const next = document.querySelector('.next');
    const prev = document.querySelector('.prev');
    let index = 0;

    function showSlide(i) {
        slides.forEach((slide, idx) => {
            slide.classList.remove('active');
            if (idx === i) slide.classList.add('active');
        });
    }

    function nextSlide() {
        index = (index + 1) % slides.length;
        showSlide(index);
    }

    function prevSlide() {
        index = (index - 1 + slides.length) % slides.length;
        showSlide(index);
    }

    next.addEventListener('click', nextSlide);
    prev.addEventListener('click', prevSlide);
    setInterval(nextSlide, 6000); // Auto slide every 4 seconds

    showSlide(index); // Initial display
    
    let currentVideo = 0;
    const inflightCarousel = document.getElementById("inflightCarousel");
    const totalVideos = inflightCarousel.children.length;

    function moveVideo(direction) {
        currentVideo += direction;
        if (currentVideo < 0) currentVideo = totalVideos - 1;
        if (currentVideo >= totalVideos) currentVideo = 0;
        inflightCarousel.style.transform = `translateX(-${currentVideo * 100}%)`;
    }

    
    
</script>

</body>
</html>
