<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIT Clubs</title>
    <link rel="stylesheet" href="home_pg_style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <i class="fa fa-bars" onclick="showmenu()"></i>
    </nav>
    <section class="header">
        <div class="text-box">
            <h1>Welcome to Silicon's Club World</h1>
            <p>A place to explore your interests, hidden talents, showcase your abilities......<br>
            So, what are you waiting for?<br>
             Scroll over!!!</p>
        </div>
    </section>
    <section class="clubs">
        <h1>CATEGORIES </h1>
        <p class="p1">Have a look at what kind of clubs we have to offer you!</p>

        <div class="row">
            <div class="clubs-col">
                <h3>TECHNICAL CLUBS</h3>
                <p>Presenting you the much sought-out one.
                     Here, you get to sharpen your minds and meet coders.Technical events are held from time to time to enhance the technical knowledge of students.<br>
                </p>
            </div>
            <div class="clubs-col">
                <h3>LITERATURE CLUBS</h3>
                <p>Presenting you the one, where you get to sharpen your personality, your public speaking ablity
                    as well lighten your mind and heart
                </p>
            </div>
            <div class="clubs-col">
                <h3>ENTERTAINMENT CLUBS</h3>
                <p>ART.DRAMA.DANCE.DESIGN.AND MUCH MORE.What entertaining sector are you looking for? </p>
            </div>

        </div>

    </section>
    <section class="Events">
        <h1>A GLIMPSE</h1>
        <p>Here is a glimpse of wide range of clubs we have to offer you!</p>
        <div class="row">
            <div class="Events-col">
                <img src="images/home_pg/open mic.jpeg">
                <div class="layer">
                    <h3>META ACADEMICS CELL</h3>
                </div>
            </div>
            <div class="Events-col">
                <img src="images/home_pg/switch.jpeg">
                <div class="layer">
                    <h3>SWITCH CORE</h3>
                </div>
            </div>
            <div class="Events-col">
                <img src="images/home_pg/uiz2.jpeg">
                <div class="layer">
                    <h3>QUIZ</h3>
                </div>
            </div>                        
        </div>
    </section>
</section>
<section class="Events1">
    <h1>UPCOMING EVENTS....</h1>
    <p>Here is a list of upcoming events</p>
    <div class="row">
        <div class="Events1-col">
            <img src="images/home_pg/2 fav.jpeg">
        </div>
        <div class="Events1-col">
            <img src="images/home_pg/1fav.jpeg">
        </div>
        <div class="Events1-col">
            <img src="images/home_pg/CCC (2).jpeg">
        </div>                        
    </div>
</section class="btm">

<section id="footer">
    <div class="footer-bottom">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis, consequatur.</p>
    </div>
</section>

    <script>
    var navLinks = document.getElementById("navLinks");
    function showmenu() {
        navLinks.style.left = "0";
    }
    function hidemenu() {
        navLinks.style.left = "-200px";
    }
</script>
</body>
</html>