<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Enter Feedback</title>
    <link rel="stylesheet" type="text/css" href="give_feedback_style.css">
</head>
<body>
    <div><jsp:include page="admin_student_nav.jsp" /></div><br>
    <div><jsp:include page="student_sidenav.jsp" /></div><br>

    <div class="container">
    <div class="content-above-form">
            <p>Welcome to the feedback submission page!</p>
            <p>Please provide your valuable feedback below:</p>
        </div>
        <form action="FeedbackServlet" method="post">
            <textarea name="feedback" rows="5" cols="50"></textarea>
            <br>
            <input type="submit" value="Submit Feedback">
        </form>
    </div>
</body>
</html>

