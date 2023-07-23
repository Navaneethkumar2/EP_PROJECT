<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <style>
   body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color:rgba(0, 0, 0, 0);
      overflow: hidden;
      margin-top: 20px;
      display: flex;
      justify-content: center; /* Center the items horizontally */
    }

    .navbar a {
      float: left;
      color: #fff;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      
    }

   .navbar a:hover {
      color: white;
    }


    .navbar .middle-button {
      color: #fff;
      background-color: #4CAF50;
      padding: 14px 20px;
      margin: 0 10px; /* Adjust the spacing as desired */
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
     body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-image:url('https://shipsy.io/wp-content/uploads/2021/02/Blog-82.jpg');
      background-size: cover;
      background-repeat: no-repeat;
    }
    h1{
    color: white;
    }
    center{
    color: white;
    }
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f2f2f2;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }

    h1 {
      color: white;
      font-size: 32px;
      text-align: center;
      margin-bottom: 20px;
    }

    p {
      color: white;
      font-size: 18px;
      line-height: 1.5;
      margin-bottom: 20px;
      
    }

    .logout-link {
      text-align: center;
      margin-top: 20px;
    }
    a{text-align: right;}
  </style>
</head>
<body>
<div class="navbar">
    <a href="index.html"><h2>Home</h2></a>
    <a href="products.html"><h2>products</h2></a>
    <a href="about.html"><h2>About</h2></a>
    <a href="contact.html"><h2>Contact</h2></a>
    
    
    <a href="index.html"><h2>Logout</h2></a>
  </div>
  <div class="container">
    <header>
    <h1 style="color: white;">Courier Management System</h1>
  </header>
 <h2 style="color: white; font-size: 40px; margin-left:800px ;margin-top:-170px;position:absolute;"> welcome:<%=request.getParameter("user") %></h2>
  
  <main>
    <!-- <h1> this home page</h1> -->
    <a href="main.html" style="margin-left:200px;text-decoration:none; color:orange;font-size:30px;"><h1>WELCOME TO OUR SERVICES</h1></a>
  </main>
  
  </div>
</body>
</html>
