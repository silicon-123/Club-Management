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
    <style>
     
     
        .content{
        margin-right:-130px;
            text-align: center;
        }
        
        .content body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        .content h1 {
            color: #333;
            font-size: 36px;
            margin-bottom: 20px;
        }

        .content p {
            color: #666;
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 30px;
        }
    </style>
    
    </head>
<body>
<div><jsp:include page="student_sidenav.jsp" /></div><br>
        <div class="content">
    	<h1>Welcome to Student Dashboard</h1>
    <p>
        This is your personalized dashboard where you can access various features and stay updated with the latest information.
    </p>
     <p>
        Take full advantage of the student dashboard and make the most out of your experience!
    </p>
   
    </div>
     
</body>
</html>
    	