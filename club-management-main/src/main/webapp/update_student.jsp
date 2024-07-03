<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
<link rel="stylesheet" href="update_profile_style.css"/>
</head>
<body>
<div><jsp:include page="admin_student_nav.jsp" /></div><br>
<div><jsp:include page="student_sidenav.jsp" /></div><br>
<%
    if (session.getAttribute("msg") != null) {
        out.print(session.getAttribute("msg"));
        session.setAttribute("msg", null);
    }
    String[] student = (String[]) request.getAttribute("student");
%>
<div class="container">
    <div class="form-container">
        <form action="updateStudent" method="POST">
            <h3>Enter New Details</h3>
            <div class="form-row">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%= student[0] %>"/>
            </div>
            
            <div class="form-row">
                <label for="sic">SIC:</label>
                <input type="text" id="sic" name="sic" value="<%= student[1] %>"/>
            </div>
            
            <div class="form-row">
                <label for="gender">Gender:</label>
                <input type="text" id="gender" name="gender" value="<%= student[2] %>"/>
            </div>
            
            <div class="form-row">
                <label for="branch">Branch:</label>
                <input type="text" id="branch" name="branch" value="<%= student[3] %>"/>
            </div>
            
            <div class="form-row">
                <label for="yog">Year of Graduation:</label>
                <input type="number" id="yog" name="yog" value="<%= student[4] %>"/>
            </div>
            
            <div class="form-row">
                <label for="phno">Phone Number:</label>
                <input type="tel" id="phno" name="phno" value="<%= student[5] %>"/>
            </div>
            
            <div class="form-row">
                <label for="email">E-mail:</label>
                <input type="email" id="email" name="email" value="<%= student[6] %>"/>
            </div>
            
            <div class="form-row">
                <label for="pass">Password:</label>
                <input type="password" id="pass" name="pass" value="<%= student[7] %>"/>
            </div>
            
            <br/>
            <input type="submit" value="Update">
        </form>
    </div>
</div>
</body>
</html>
