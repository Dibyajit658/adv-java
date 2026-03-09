<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>ERP Login</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; display: flex; justify-content: center; margin-top: 50px; }
        .login-card { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); width: 300px; }
        input { width: 90%; padding: 10px; margin: 10px 0; border: 1px solid #ddd; }
        button { width: 100%; padding: 10px; background: #007bff; color: white; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <div class="login-card">
        <h2>ERP System Login</h2>
        <form method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>

        <%
            String user = request.getParameter("username");
            String pass = request.getParameter("password");

            if (user != null && pass != null) {
                if (user.equals("admin") && pass.equals("admin123")) {
                    session.setAttribute("user", "Admin");
                    response.sendRedirect("admin.jsp");
                } else if (user.equals("student") && pass.equals("student123")) {
                    session.setAttribute("user", "Student");
                    response.sendRedirect("student.jsp");
                } else {
                    out.println("<p style='color:red;'>Invalid Username or Password!</p>");
                }
            }
        %>
    </div>
</body>
</html>