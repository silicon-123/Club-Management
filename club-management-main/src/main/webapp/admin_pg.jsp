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
    
        <style>
        
        .content{
            text-align: center;
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
    <div><jsp:include page="admin_nav.jsp" /></div><br>
        
    <div class="content">
    <h1>Welcome to the Admin Page</h1>
    <p>Here, you can perform various administrative tasks and manage the system.</p>
    </div>
</body>
</html>

