<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <title>Submitted Ideas</title>
    <link rel="stylesheet" href="check_ideas_style.css">
</head>
<body>
    <div><jsp:include page="admin_nav.jsp" /></div><br>
    <div class="container">
        <h1>Submitted Ideas</h1>
        
        <table>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Idea Title</th>
                <th>Description</th>
            </tr>
            <% 
                ResultSet rs = (ResultSet) request.getAttribute("ideaResultSet");
                
                while (rs.next()) {
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String title = rs.getString("title");
                    String description = rs.getString("description");
            %>
            <tr>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= title %></td>
                <td><%= description %></td>
            </tr>
            <%  
                }
                rs.close();
            %>
        </table>
    </div>
</body>
</html>
