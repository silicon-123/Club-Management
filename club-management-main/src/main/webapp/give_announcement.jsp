<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="give_announcement_style.css">
</head>
<body>
<div><jsp:include page="admin_nav.jsp" /></div><br>
    
    <form action="Insert_Announcement" method="post">
    <h1>Enter the Announcement to be circulated</h1>
        <textarea name="announcement" rows="5" cols="50"></textarea>
        <br>
        <input type="submit" value="Submit Announcement">
    </form>
</body>
</html>
