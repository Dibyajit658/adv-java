<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null || !session.getAttribute("user").equals("Student")) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <style>
        body { font-family: sans-serif; background: #f9f9f9; padding: 20px; }
        .container { max-width: 800px; margin: auto; background: white; padding: 20px; border-top: 5px solid #28a745; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Portal</h1>
        <p>Logged in as: <strong><%= session.getAttribute("user") %></strong> | <a href="login.jsp">Logout</a></p>
        
        <h3>Current Semester Status</h3>
        <table>
            <tr><th>Subject</th><th>Attendance %</th><th>Grade</th></tr>
            <tr><td>Web Development</td><td>92%</td><td>A</td></tr>
            <tr><td>Database Management</td><td>85%</td><td>B+</td></tr>
            <tr><td>Software Engineering</td><td>78%</td><td>B</td></tr>
        </table>
    </div>
</body>
</html>