<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="description" content="Dobro dosli u najbolji kafic na svetu" />
    <meta name="keywords" content="Kafic" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
      integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="styles.css" />
    <title>Hotel and Flight Reservation</title>

    <style>
    
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        background-color: #333;
        color: #ccc;
      }

      .a {
        color: #ccc;
      }
      ul {
        list-style-type: none;
        background-color: #333;
      }

      body {
        font-family: "맑은 고딕", "돋움", Arial, sans-serif;
        background-color: #222; /* Dark background color */
        color: #fff; /* Light text color */
        font-size: 12px;
        background-color: #333;
      }

      [class*="c_"] {
        float: left;
        padding: 10px;
      }
      /* 너비가 600픽셀 미만인 스마트폰을 위한 기본 설정 */

      [class*="c_"] {
        width: 100%;
      }
      /* 너비가 600픽셀 이상인 태블릿을 위한 설정 */

      @media only screen and (min-width: 600px) {
        .c_m_1 {
          width: 8.33%;
        }
        .c_m_2 {
          width: 16.66%;
        }
        .c_m_3 {
          width: 25%;
        }
        .c_m_4 {
          width: 33.33%;
        }
        .c_m_5 {
          width: 41.66%;
        }
        .c_m_6 {
          width: 50%;
        }
        .c_m_7 {
          width: 58.33%;
        }
        .c_m_8 {
          width: 66.66%;
        }
        .c_m_9 {
          width: 75%;
        }
        .c_m_10 {
          width: 83.33%;
        }
        .c_m_11 {
          width: 91.66%;
        }
        .c_m_12 {
          width: 100%;
        }
      }
      /* 너비가 768픽셀 이상인 데스크톱 컴퓨터, 노트북 등 */

      @media only screen and (min-width: 768px) {
        .c_1 {
          width: 8.33%;
        }
        .c_2 {
          width: 16.66%;
        }
        .c_3 {
          width: 25%;
        }
        .c_4 {
          width: 33.33%;
        }
        .c_5 {
          width: 41.66%;
        }
        .c_6 {
          width: 50%;
        }
        .c_7 {
          width: 58.33%;
        }
        .c_8 {
          width: 66.66%;
        }
        .c_9 {
          width: 75%;
          font-size: 12px;
        }
        .c_10 {
          width: 83.33%;
        }
        .c_11 {
          width: 91.66%;
        }
        .c_12 {
          width: 100%;
        }
      }

      aside#menu {
        color: #ffffff;
        font-size: 12px;
        background-color: #333;
      }

      aside#menu li {
        padding: 10px;
        margin: 5px 0 0 0;
        font-size: 12px;
        background-color: #333;
      }

      section#main {
        padding: 15px;
        font-size: 12px;
        background-color: #333;
      }

      section#main p {
        padding: 5px;
        font-size: 0.95em;
        line-height: 130%;
        font-size: 12px;
        background-color: #333;
      }

      aside#photos img {
        width: 100%;
        background-color: #333;
      }

      aside#photos li {
        margin: 5px 0 0 0;
        font-size: 12px;
        background-color: #333;
      }

      footer {
        height: 60px;
        padding: 10px;
        clear: both;
        text-align: center;
        background-color: #333;
        font-size: 12px;
      }

      body {
        font-family: "맑은 고딕", "돋움", Arial, sans-serif;
        background-color: #333;
        font-size: 12px;
        color: #ccc;
      }

      header {
        background-color: #333;
        color: white;
        text-align: center;

        font-size: 12px;
      }

      main {
        display: flex;
        flex-direction: column;

        font-size: 12px;
        background-color: #333;
        color: #ccc;
      }

      aside {
        width: 100%;
        background-color: #333; /* Darker aside background color */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(64, 149, 228, 0.1);
        margin-bottom: 20px;
        color: #ccc;

        font-size: 12px;
      }

      section {
        width: 100%;
        background-color: #333; /* Darker section background color */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(64, 195, 255, 0.1);
        font-size: 14px;
        color: #fff; /* Light text color */
      }
      form {
        display: flex;
        flex-direction: column;
        gap: 10px;
        font-size: 12px;
        background-color: #333;
        color: #ccc;
      }

      label {
        font-weight: bold;
        background-color: #333;
        color: #ccc;
      }

      input {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 12px;
      }

      button {
        background-color: #333;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 12px;
      }

      button:hover {
        background-color: #333;
        font-size: 12px;
        color: #ccc;
      }
      #hotelList {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        color: #ccc;
      }

      .hotel-card {
        background-color: #333;
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 10px;
        max-width: 100%;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        font-size: 12px;
      }

      .hidden {
        display: none;
        color: #ccc;
      }

      footer {
        background-color: #111; /* Darker footer background color */
        color: white;
        text-align: center;
        padding: 20px;
        clear: both;
        position: relative;

        flex-shrink: 0;
        height: 10%;
        font-size: 12px;
      }

      footer a {
        color: white;
        text-decoration: none;
        margin: 0 10px;
      }

      .footer-logo {
        width: 200px;
        height: 100px;
        margin-bottom: 10px;
        color: #ccc;
      }

      #login-container,
      #signup-container {
        text-align: center;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        margin-top: 20px;
        font-size: 12px;
      }

      .login-btn,
      .signup-btn {
        background-color: #333;
        color: #ccc;
        padding: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-bottom: 10px;
        font-size: 14px;
      }

      .login-btn:hover,
      .signup-btn:hover {
        background-color: #333;
        font-size: 12px;
        color: #ccc;
      }
      .container {
      }
     
      #showcase .showcase-content {
        color: #fff;
        text-align: center;
        padding-top: 40px;
      }
      #showcase-content {
        width: 88%;
        height: 48%;
      }
        #showcase {
            width: 100%;
            background-image: url(".img/rom.jpg");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 50%;
        }
      .navbar {
      }
      .text-primary {
      }

      @media screen and (min-width: 768px) {
        main {
          flex-direction: row;
        }
        aside {
          width: 30%;
          margin-right: 20px;
          font-size: 12px;
        }
      }
    </style>
  </head>

  <body>
    <header>
      <nav id="navbar">
        <div class="container">
          <h1 class="logo"><a href="index.jsp">HOTELS</a></h1>
          <ul>
            <li><a class="current" href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
          </ul>
        </div>
      </nav>

     <div class= "showcase">
             <img id="showcase" src="./img/room.jpg" >
     
        <div class="container">
          <div class="showcase-content">
            <h1><span class="text-primary">Enjoy</span> your stay</h1>
            <p class="lead"></p>
            <a class="btn" href="about.jsp">About our hotel</a>
          </div>
        </div>
      </div>
    </header>

    <main>
      <aside>
        <section class="c3" id="loginSection">
          <h2>로그인</h2>
          <form id="loginForm">
            <label for="username">id:</label>
            <input type="text" id="username" name="username" required />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />

            <button type="button">로그인</button>
            <a class="a" href="test3.html">아이디 생성</a>
          </form>
        </section>

        <section id="signupSection" class="hidden">
          <h2>Sign Up</h2>
          <form id="signupForm">
            <label for="newUsername">Username:</label>
            <input type="text" id="newUsername" name="newUsername" required />

            <label for="newPassword">Password:</label>
            <input
              type="password"
              id="newPassword"
              name="newPassword"
              required
            />

            <button type="button" onclick="signup()">Sign Up</button>
          </form>
        </section>
        <div class="c9" id="login-container">
          <h2>Login with</h2>
          <button class="login-btn" onclick="googleLogin()">Google</button>
          <button class="login-btn" onclick="kakaoLogin()">Kakao</button>
          <button class="login-btn" onclick="naverLogin()">Naver</button>
        </div>
      </aside>
      <section id="searchSection">
        <h2>Find Your Perfect Hotel or Flight</h2>
        <form id="searchForm">
          <label for="location">Location:</label>
          <input type="text" id="location" name="location" required />

          <label for="checkin">Check-in Date:</label>
          <input type="date" id="checkin" name="checkin" required />

          <label for="checkout">Check-out Date:</label>
          <input type="date" id="checkout" name="checkout" required />

          <label for="flightType">Flight Type:</label>
          <select id="flightType" name="flightType">
            <option value="oneWay">One Way</option>
            <option value="roundTrip">Round Trip</option>
          </select>

          <label for="departureCountry">Departure Country:</label>
          <input
            type="text"
            id="departureCountry"
            name="departureCountry"
            required
          />

          <label for="arrivalCountry">Arrival Country:</label>
          <input
            type="text"
            id="arrivalCountry"
            name="arrivalCountry"
            required
          />

          <label for="passengers">Passengers:</label>
          <input
            type="number"
            id="passengers"
            name="passengers"
            min="1"
            required
          />

          <button type="button" onclick="searchHotels()">Search Hotels</button>
          <button type="button" onclick="searchFlights()">
            Search Flights
          </button>
        </form>

        <div id="hotelList"></div>
      </section>

      <section id="home-info" class="bg-dark">
        <div
          class="info-img"
          style="background-image: url('./img/of.jpg'); background-size: cover"
        ></div>
        <div class="info-content">
          <h2><span class="text-primary">History</span> of our Hotel</h2>
          <p>Your text goes here.</p>
          <a href="about.jsp" class="btn btn-light">Read More</a>
        </div>
      </section>
    </main>

    <footer id="main-footer">
      <p>&copy; 2024 Hotel and Flight Reservation. All rights reserved.</p>
      <nav>
        <a href="#">도움말</a>
        <a href="#">개인정보설정</a>

        <a href="#">쿠키정책</a>
        <a href="#">개인정보처리방침</a>
        <a href="#">회사정보</a>
        <a href="#">파트너</a>
        <a href="#">여행일정</a>
      </nav>
    </footer>

    <script src="script.jsp"></script>
  </body>
</html>

    