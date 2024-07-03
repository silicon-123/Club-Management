<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Join a Club</title>
    <style>
        /* CSS styles for the container */
        .card-container {
        margin-top:100px;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }

        /* CSS styles for the cards */
        .card {
            width: 300px;
            background-color: #f2f2f2;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
            text-align: center;
            margin: 20px;
        }

        .card h2 {
            font-size: 24px;
            color: #003366;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 16px;
            color: #333;
            margin-bottom: 20px;
        }

        .card img {
            width: 200px;
            height: 150px;
            margin-bottom: 10px;
        }

        .card a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #003366;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .card a:hover {
            background-color: #002244;
        }
    </style>
</head>
<body>
<div><jsp:include page="nav_bar.jsp" /></div><br>
    <div class="card-container">
        <div class="card">
            <img src="./images/join_a_club/switch1.png" alt="Club 1">
            <h2>Switch Club</h2>
            <p>Unlock the power of coding and ignite your passion for technology with Switch, the official coding club of SiliconTech</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>

        <div class="card">
            <img src="./images/join_a_club/MUSIC.jpg" alt="Club 2">
            <h2>Silicon Music Club</h2>
            <p>Harmonize your passion for music with like-minded enthusiasts in the Silicon Music Club.</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>

        <div class="card">
            <img src="./images/join_a_club/ed1.png" alt="Club 3">
            <h2>ED Cell</h2>
            <p>Empowering minds and fostering innovation, Ed Cell is SiliconTech's platform for educational excellence</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>

        <!-- Repeat the above card code for other clubs -->

        <div class="card">
            <img src="./images/join_a_club/creative1.png" alt="Club 8">
            <h2>Creative Club</h2>
            <p>Unleash your creativity and join the vibrant community of the Creative Club at SiliconTech</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>
        
        <div class="card">
            <img src="./images/join_a_club/photo1.png" alt="Club 8">
            <h2>Photography Club</h2>
            <p>Capture the world through your lens and explore the art of photography with the SiliconTech Photography Club</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>
        
        <div class="card">
            <img src="./images/join_a_club/cinemax1.png" alt="Club 8">
            <h2>SIT Cinemax</h2>
            <p>Experience the magic of cinema at its finest with Sit Cinemax, where entertainment meets technology.</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>
        
        <div class="card">
            <img src="./images/join_a_club/yfs1.png" alt="Club 8">
            <h2>YFS Club</h2>
            <p>Join the Youth for Sustainability Club and be part of the driving force for positive change in the world</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>
        
        <div class="card">
            <img src="./images/join_a_club/iste.png" alt="Club 8">
            <h2>ISTE</h2>
            <p>The ISTE Silicon Chapter is your gateway to networking, learning, and innovation in the ever-evolving world of technology.</p>
            <a href="club_registration.jsp">Join Now</a>
        </div>
    </div>
</body>
</html>
