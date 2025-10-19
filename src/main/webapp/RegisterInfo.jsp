<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Registration Successful</title>
<style>
body {
    font-family: Arial, sans-serif;
    background: #f0fdf4;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}
.container {
    background: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0,0,0,0.1);
    text-align: center;
    width: 400px;
}
h2 {
    color: #16a34a;
    margin-bottom: 20px;
}
p {
    margin: 10px 0;
    color: #374151;
}
.btn {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 16px;
    border: none;
    border-radius: 6px;
    background: #2563eb;
    color: white;
    font-size: 15px;
    cursor: pointer;
    text-decoration: none;
}
.btn:hover { background: #1d4ed8; 
}
</style>
</head>
<body>
<div class="container">
    <h2>✅ Booking Successful!</h2>
    <p>You can now explore our tours and packages.</p>
    <a href="Login.jsp" class="btn">Continue</a>
    
</div>
</body>
</html>
