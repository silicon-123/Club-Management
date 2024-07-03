<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="nav_bar_style.css">

</head>
<body>
	<nav>
            <a href="home_pg.jsp.html"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hidemenu()"></i>
                <ul>
                    <li><a href="home_pg.jsp">HOME</a></li>
                    <li><a href="clubs.jsp">CLUBS</a></li>
                    <li><a href="join_a_club.jsp">JOIN A CLUB</a></li>
                    <li><a href="event_pg.jsp">EVENTS</a></li>
                    <li><a href="logout">LOGOUT</a></li>
                </ul>
            </div>
    </nav>
</body>
</html>