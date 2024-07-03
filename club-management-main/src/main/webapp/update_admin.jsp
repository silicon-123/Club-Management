
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="update_profile_style.css"/>
</head>
<body>
<div><jsp:include page="nav_bar.jsp" /></div><br>
<%
	if(session.getAttribute("msg")!=null){
		out.print(session.getAttribute("msg"));
		session.setAttribute("msg", null);
	}
	String[] admin = (String[])request.getAttribute("admin");
%>
<div class="container">
    <div class="form-container">
        <form action="updateTeam" method="POST">
            <h3>Enter New Details</h3>
            <div class="form-row">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%=admin[0]%>"/>
            </div>
            
            <div class="form-row">
                <label for="clubid">Club Id:</label>
                <input type="text" id="clubid" name="clubid" value="<%=admin[1]%>"/>
            </div>
            
            <div class="form-row">
                <label for="gender">Gender:</label>
                <input type="text" id="gender" name="gender" value="<%=admin[2]%>"/>
            </div>
            <div class="form-row">
                <label for="ph_no">Phone Number:</label>
                <input type="tel" id="ph_no" name="ph_no" value="<%=admin[3]%>"/>
            </div>
            
            <div class="form-row">
                <label for="email">E-mail:</label>
                <input type="email" id="email" name="email" value="<%=admin[4]%>"/>
            </div>
            
            <div class="form-row">
                <label for="pass">Password:</label>
                <input type="password" id="pass" name="pass" value="<%=admin[5]%>"/>
            </div>
            
            
            <br/>
            <input type="submit" value="Update">
        </form>
    </div>
</div>
</body>
</html>

