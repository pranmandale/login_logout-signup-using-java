<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
            background: linear-gradient(135deg, #dbeafe, #fef3c7);
        }

        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
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
        
        h1{
        margin: auto;
        margin-bottom: 10px;
        }
        
        p{
        margin: auto;
        margin-top: 10px;
        }
        
        a{
        color: gray;
        cursor: pointer;
        }
    </style>
</head>
<body>
    <form action="LoginServlet" method="post">
    	<h1>Login Form</h1>
        <label>Email</label>
        <input type="email" placeholder="user@gmail.com" name="email" required>

        <label>Password</label>
        <input type="password" placeholder="password" name="password" required>

        <button type="submit">Login</button>
        
       <p>Don't have an account? <a href="register.jsp">Register</a> </p>
       
       
       <%--display error message if login fails --%>
    		 <% 
   			String error = request.getParameter("error");
   				if(error != null && error.equals("1")) { 
			%>
   			<p style="color: red;">Invalid Email or Password</p>
			<% 
   			} 
			%>
			
			<%-- display a message if registration successful --%>
				
				 <% 
   			String rs = request.getParameter("registration");
   				if(rs != null && rs.equals("successful")) { 
			%>
   			<p style="color: green;">Registration Successful Please login</p>
			<% 
   			} 
			%>
			

    </form>
</body>
</html>
