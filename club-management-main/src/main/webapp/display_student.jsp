<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Student</title>
    <link rel="stylesheet" href="display_student_style.css">
</head>
<body>
    <div><jsp:include page="admin_nav.jsp" /></div><br>
    <h3>DETAILS OF THE STUDENTS</h3>
    <table class="content-table">
        <tr>
            <th>NAME</th>
            <th>SIC</th>
            <th>GENDER</th>
            <th>BRANCH</th>
            <th>YEAR OF GRADUATION</th>
            <th>PHONE NUMBER</th>
            <th>EMAIL</th>
            <th>PASSWORD</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>

        <% ResultSet rs = (ResultSet) request.getAttribute("resultSet"); %>
        <% while (rs.next()) { %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("sic") %></td>
            <td><%= rs.getString("gender") %></td>
            <td><%= rs.getString("branch") %></td>
            <td><%= rs.getString("year_of_gradn") %></td>
            <td><%= rs.getString("ph_no") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("password") %></td>
            <td><a href="updateStudent?email=<%= rs.getString("email") %>">Edit</a></td>
            <td><a href="deleteStudent?email=<%= rs.getString("email") %>">Delete</a></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
