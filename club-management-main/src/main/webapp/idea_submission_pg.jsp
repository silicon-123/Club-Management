<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Idea Submission Form</title>
    <link rel="stylesheet" type="text/css" href="idea_submission_style.css">
</head>
<body>
<div><jsp:include page="admin_student_nav.jsp" /></div><br>
<div><jsp:include page="student_sidenav.jsp" /></div><br>

<h1 style="text-align: center;">Idea Submission Form</h1>
<form action="idea_submission" method="post">
    <div class="form-row">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
    </div>

    <div class="form-row">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
    </div>

    <div class="form-row">
        <label for="title">Idea Title:</label>
        <input type="text" id="title" name="title" required>
    </div>

    <div class="form-row">
        <label for="description">Idea Description:</label>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea>
    </div>

    <div class="form-row">
        <input type="submit" value="Submit">
    </div>
</form>
</body>
</html>
