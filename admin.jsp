<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null || !session.getAttribute("user").equals("Admin")) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body { font-family: sans-serif; margin: 0; display: flex; }
        .sidebar { width: 200px; background: #333; color: white; height: 100vh; padding: 20px; }
        .content { padding: 20px; flex-grow: 1; }
        .stats-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
        .card { background: #eee; padding: 20px; border-radius: 5px; text-align: center; }
    </style>
</head>
<body>
    <div class="sidebar">
        <h3>Admin ERP</h3>
        <p>Manage Users</p>
        <p>Attendance Logs</p>
        <p>Fee Reports</p>
        <a href="login.jsp" style="color: lightcoral;">Logout</a>
    </div>
    <div class="content">
        <h1>Welcome, Administrator</h1>
        <div class="stats-grid">
            <div class="card"><h3>Total Students</h3><p>1,250</p></div>
            <div class="card"><h3>Pending Requests</h3><p>12</p></div>
            <div class="card"><h3>Faculty Count</h3><p>45</p></div>
        </div>
    </div>
</body>
</html>