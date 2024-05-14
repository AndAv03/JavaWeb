<%-- 
    Document   : index
    Created on : 13-May-2024, 11:16:36 pm
    Author     : sandeeprongali
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My First Java Web Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        p {
            color: #666;
            text-align: center;
            margin-bottom: 20px;
        }
        .welcome-message {
            color: #007bff;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to My First Java Web Application!</h1>
        <p>Hello JSP page.</p>
        <div class="welcome-message-class">
            <% String name = "Sandeep Rongali"; %>
            Hello, <%= name %>! Kudos!
        </div>
    </div>
</body>
</html>

