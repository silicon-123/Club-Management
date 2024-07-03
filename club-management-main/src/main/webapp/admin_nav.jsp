<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>side nav</title>
    <link rel="stylesheet" href="admin_nav.css">
</head>
<body>
<div><jsp:include page="admin_student_nav.jsp" /></div><br>
<div class="wrapper">
        <div class="sidebar">
            <div class="c1">
                <h3>Admin Page</h3>
            </div>

            <ul>
                <li><a href="https://docs.google.com/forms/u/0/?tgif=d" target="_blank"><span></span></a></li>
                <li><a href="display_ideas"><span>Check ideas</span></a></li>
                <li><a href="give_announcement.jsp"><span>Circulate an announcement</span></a></li>
                <li><a href="<%= request.getContextPath() %>/Check_announcement_admin"><span>Check club registration</span></a></li>
                <li><a href="Check_Feedback"><span>Check Feedbacks</span></a></li>
                <li><a href="view_student"><span>Details of Registered students</span></a></li>
                <li><a href="view_team"><span>Details of Team Members</span></a></li>
            </ul>
        </div>
    </div>

</body>
</html>
