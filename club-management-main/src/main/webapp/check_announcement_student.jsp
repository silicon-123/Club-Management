<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Announcements</title>
    <link rel="stylesheet" type="text/css" href="check_announcement_style.css">
</head>
<body>
<div><jsp:include page="admin_student_nav.jsp" /></div><br>
<div><jsp:include page="student_sidenav.jsp" /></div><br>
    <div class="content-above">
        <h2>Welcome to the Announcements Page!</h2>
        <p>Check out the latest announcements below:</p>
    </div>
    <table>
        <tr>
            <th>Announcements</th>
        </tr>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("announcement");
            while (rs.next()) {
                String announcementText = rs.getString("msg");
        %>
        <tr>
            <td><%= announcementText %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
