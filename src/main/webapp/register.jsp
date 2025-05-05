<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #fdf2f8, #dbeafe);
        }

        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            display: flex;
            flex-direction: column;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        label {
            margin-bottom: 8px;
            font-weight: 600;
            color: #444;
        }

        input {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input:focus {
            border-color: #007BFF;
            outline: none;
        }

        button {
            padding: 12px;
            background-color: #007BFF;
            color: white;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }
        
        p {
        margin: auto;
        margin-top: 10px;
        }
        
        a {
        color:gray;
        curson:pointer;
        }
    </style>
</head>
<body>
    <form action="RegisterServlet" method="post">
        <h1>Register Page</h1>

        <label>Name</label>
        <input type="text" placeholder="UserName" name="name" required>

        <label>Email</label>
        <input type="email" placeholder="user@gmail.com" name="email" required>

        <label>Contact</label>
        <input type="number" placeholder="+91 1234567890" name="phone" required>

        <label>Password</label>
        <input type="password" placeholder="Password" name="password" required>

        <label>Confirm Password</label>
        <input type="password" placeholder="Confirm Password" name="conpassword" required>

        <button type="submit">Register</button>
        
        <p>Already have an account? <a href="login.jsp">login</a> </p>
    </form>
</body>
</html>