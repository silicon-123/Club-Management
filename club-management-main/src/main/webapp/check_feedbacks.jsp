<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedbacks</title>
    <link rel="stylesheet" href="check_feedback_style.css">
</head>
<body>
<div><jsp:include page="admin_nav.jsp" /></div><br>
    
    <table>
        <tr>
            <th>Feedbacks</th>
        </tr>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("feedbacks");
            while (rs.next()) {
                String feedbackText = rs.getString("msg");
        %>
        <tr>
            <td><%= feedbackText %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
