<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Club Announcements</title>
    <link rel="stylesheet" type="text/css" href="check_announcement_style.css">
    <style>
        /* Additional inline styles for demonstration */
        .club-card {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .club-card h3 {
            margin-bottom: 5px;
            font-size: 18px;
            color: #333;
        }
        .club-card p {
            margin: 0;
            color: #666;
        }
    </style>
</head>
<body>
<div><jsp:include page="admin_nav.jsp" /></div><br>
<div class="content-above">
    <h2>Welcome to the Club Registration details Page!</h2>
    <p>Check out the number of registered students for each club below:</p>
</div>
<div class="cards-container">
    <%
        ResultSet clubRs = (ResultSet) request.getAttribute("clubs");
        if (clubRs == null) {
            System.out.println("No clubs found.");
        } else {
            while (clubRs.next()) {
                String clubName = clubRs.getString("club");
                int studentCount = clubRs.getInt("student_count");
    %>
    <div class="club-card">
        <h3><%= clubName %></h3>
        <p>Number of Registered Students: <%= studentCount %></p>
    </div>
    <%
            }
        }
    %>
</div>
</body>
</html>
