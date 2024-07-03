<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./login_style.css"/>
    <title>Document</title>
</head>
<body>
	<div class="navbar"><jsp:include page="nav_bar.jsp" /></div>
	
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="register" method="POST">
                <h3>Register here</h3>
                 <input type="text" placeholder="Name" name="name"/>
                <input type="text" placeholder="SIC" name="sic"/>
                <input type="text" placeholder="Gender" name="gender"/>
                <input type="text" placeholder="Branch" name="branch"/>
                <input type="number" placeholder="Year of Graduation" name="yog"/>
                <input type="tel" placeholder="Phone Number" name="phno"/>
                <input type="email" placeholder="E-mail" name="email"/>
                <input type="password" placeholder="Password" name="pass"/>                            
                <br/>
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="Login" method="POST">
                <h1>Sign In</h1>
                <input type="email" name="email" placeholder="Email"/>
                <input type="password"  name="pass" placeholder="Password"/>
                <a href="#">Forgot your password ?</a>
                <button type="submit">Sign In</button>
                 <a href="admin_login_page.jsp" class="admin-link">For Admin</a>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Already have an Account ?</h1>
                    <p>To connect with us please login with your account here</p>
                    <button class="ghost" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right" style="">
                    <h1>Create your account</h1>
                    <p>Enter your personal detail and start journey with us</p>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
    <script>
    const signUpButton = document.getElementById('signUp')
    const signInButton = document.getElementById('signIn')
    const container = document.getElementById('container')

    signUpButton.addEventListener('click',()=>{
        container.classList.add("right-panel-active")
    })

    signInButton.addEventListener('click',()=>{
        container.classList.remove("right-panel-active")
    })

    </script>
</body>
</html>
