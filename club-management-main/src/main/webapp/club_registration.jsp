<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Club Registration</title>
    <link rel="stylesheet" type="text/css" href="club_registration.css">
    <link rel="stylesheet" type="text/css" href="nav_bar_style.css">
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
                    <li><a href="login_pg.jsp">LOGIN</a></li>
                </ul>
            </div>
    </nav>
    <br/>
    <br/>
    <div class="container">
        <h2>Club Registration</h2>
        <form action="join_club" method="post"> <!-- Changed action to /join_club -->
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="sic">SIC:</label>
            <input type="text" id="sic" name="sic" required>
            <label for="gender">Gender:</label>
            <input type="text" id="gender" name="gender" required>
            <label for="branch">Branch:</label>
            <input type="text" id="branch" name="branch" required>
            <label for="year">Year:</label>
            <input type="text" id="year" name="year" required>
            
            <label for="phno">Phone Number:</label>
            <input type="text" id="phno" name="phno" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="club">Choose Club:</label>
            <select id="club" name="club" required>
                <option value="Switch Club">Switch Club</option>
                <option value="Silicon Music Club">Silicon Music Club</option>
                <option value="ED Cell">ED Cell</option>
                <option value="Creative Club">Creative Club</option>
                <option value="Photography Club">Photography Club</option>
                <option value="SIT Cinemax">SIT Cinemax</option>
                <option value="YFS Club">YFS Club</option>
                <option value="ISTE">ISTE</option>
            </select>
            
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
