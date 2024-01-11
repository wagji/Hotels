<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="Dobro dosli u najbolji kafic na svetu">
    <meta name="keywords" content="Kafic">
    <link rel="stylesheet" href="css/style.css">
    <title>Hotel BT - About</title>

    <style>
   
      [class*="c_"] {
        float: left;
        padding: 10px;
      }
      /* 너비가 600픽셀 미만인 스마트폰을 위한 기본 설정 */

      [class*="c_"] {
        width: 100%;
      }
      /* 너비가 600픽셀 이상인 태블릿을 위한 설정 */

      @media only screen and (min-width: 768px) {
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
      .clr{
        }
        #testimonials{
    height:20%;
    background:url("./img/test-bg.jpg") no-repeat center center/cover;
    padding-top:100px;
    width: 100%;
}
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
        width: 200px;
        float: left;
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
      .signupForm{
        width: 100%;
      }

      @media screen and (min-width: 786px) {
    main {
        flex-direction: row;
        align-items: center;
        
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
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a class="current" href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
              </div>
            </nav>  
          
    </header>
   

    <section id="about-info" class="bg-light py-3">
        <div class="container">
            <div class="info-left">
                <h1 class="l-heading"> <span class="text-primary">New Password /</span> NEW ID </h1>
              
            <div class="info-right">
            </div>
        </div>
    </section>
    <section id="home-info" class="bg-dark">
     <div  class="info-img" style="background-image: url('./img/of.jpg'); background-size: cover;"></div>
     <div class="info-content">
         <h2><span class="text-primary">History</span> of our Hotel</h2>
         <p>Your text goes here.</p>
         <a href="contact.jsp" class="btn btn-light">Read More</a>
     </div>
 </section>
   <main>
    
    <aside>
    <form id="signupForm">
        <label for="username">아이디:</label>
        <input type="text" id="username" name="username" required />

        <label for="password">암호:</label>
        <input type="password" id="password" name="password" required />

        <label for="confirmPassword">암호 확인:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required />

        <label for="fullName">이름:</label>
        <input type="text" id="fullName" name="fullName" required />

        <label for="nickname">대화명:</label>
        <input type="text" id="nickname" name="nickname" required />

        <label for="residentNumber">주민등록번호:</label>
        <input type="text" id="residentNumber" name="residentNumber" pattern="\d{6}-\d{7}" placeholder="YYMMDD-1234567" required />

        <label for="birthdate">생년월일:</label>
        <input type="date" id="birthdate" name="birthdate" required />

        <label>성별:</label>
        <div>
            <label for="male">
                <input type="radio" id="male" name="gender" value="male" required />
                남성
            </label>
            <label for="female">
                <input type="radio" id="female" name="gender" value="female" required />
                여성
            </label>
        </div>

        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" required />

        <label>메일 수신 동의:</label>
        <label for="mailConsent">
            <input type="checkbox" id="mailConsent" name="mailConsent" required />
            동의합니다.
        </label>

        <label for="zipcode">우편번호:</label>
        <input type="text" id="zipcode" name="zipcode" required />

        <label for="address">주소:</label>
        <input type="text" id="address" name="address" required />

        <label for="phoneNumber">전화번호:</label>
        <input type="tel" id="phoneNumber" name="phoneNumber" required />

        <label for="mobileNumber">핸드폰번호:</label>
        <input type="tel" id="mobileNumber" name="mobileNumber" required />

        <label for="occupation">직업:</label>
        <input type="text" id="occupation" name="occupation" required />

        <label for="introduction">자기소개:</label>
        <textarea id="introduction" name="introduction" required></textarea>

        <button type="button" onclick="submitForm()">가입하기</button>
    </form>
</aside>


   <div class="clr"></div>

   <section id="testimonials" class="py-3">
    <div class="container">
       <h2 class="l-heading ">What our guest says</h2>
       <div class="testimonial bg-primary">
           <img src="./img/fl.jpg" alt="Samanta">
           <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, eveniet! Possimus neque nobis quis cum tenetur harum error exercitationem ab, quia obcaecati illo praesentium, dolore inventore suscipit iusto laborum nostrum ratione, illum aliquid repellat quas impedit. Voluptatum omnis voluptatem assumenda.</p>

       </div>

       <div class="testimonial bg-primary">
        <img src="./img/at.jpg" alt="Jen">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, eveniet! Possimus neque nobis quis cum tenetur harum error exercitationem ab, quia obcaecati illo praesentium, dolore inventore suscipit iusto laborum nostrum ratione, illum aliquid repellat quas impedit. Voluptatum omnis voluptatem assumenda.</p>

    </div>
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
</body>
</html>