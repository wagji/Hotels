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
    <title>Hotel BT - Contact Us</title>
    <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        background-color: #333;
        color: #ccc;
      }
      .box {
        width: 300px;
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
      #showcase {
        height: 600px;
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
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a class="current" href="contact.jsp">Contact Us</a></li>
          </ul>
        </div>
      </nav>
    </header>

    <section id="contact-form" class="py-3">
      <div class="container">
        <h1 class="l-heading"><span class="text-primary">Contact </span> Us</h1>
        <p>Please fill in all spots so you can contact us</p>
        <form action="process.php">
          <div class="form-group">
            <label for="Name">Name</label>
            <input type="text" name="Name" id="Name" />
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" />
          </div>
          <div class="form-group">
            <label for="message">Message</label>
            <textarea name="message" id="message"></textarea>
          </div>
          <button type="submit" class="btn">Submit</button>
        </form>
      </div>
    </section>
    <section id="contact-info" class="bg-dark">
      <div class="container">
        <div class="box">
          <i class="fas fa-hotel fa-3x"></i>
          <h3>Location</h3>
          <p>Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
        </div>
        <div class="box">
          <i class="fas fa-phone fa-3x"></i>
          <h3>Telefone Number</h3>
          <p>(+82)-456-7890</p>
        </div>
        <div class="box">
          <i class="fas fa-envelope fa-3x"></i>
          <h3>Email Address</h3>
          <p>wolk4@gmail.com></p>
        </div>
      </div>
    </section>
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
  </body>
</html>
