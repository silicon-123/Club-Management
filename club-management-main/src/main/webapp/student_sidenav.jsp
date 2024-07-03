<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>side nav</title>
    <link rel="stylesheet" href="student_pg_style.css">
         
</head>
<body>
<div><jsp:include page="admin_student_nav.jsp" /></div><br>
    <div class="wrapper">
        <div class="sidebar">
            <div class="c1">
                <h3>Student Dashboard</h3>
            </div>

            <ul>
                <li><a href="updateProfile"><span>Edit your profile</span></a></li>               
                <li><a href="idea_submission_pg.jsp"><span>Have any idea?</span></a></li>
                <li><a href="give_feedback.jsp"><span>Suggestions / Feedbacks</span></a></li>
                <li><a href="Check_announcement_student"><span>Check Announcements</span></a></li>
            </ul>
        </div>
    </div>
    
      
</body>
</html>