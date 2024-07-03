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
            <form action="admin_register" method="POST">
                <h3>Register here</h3>
                <input type="text" placeholder="Name" name="name" required/>
                <input type="number" placeholder="Club ID" name="clubid" required/>
                <input type="text" placeholder="Gender" name="gender" required/>
                <input type="tel" placeholder="Phone Number" name="ph_no" required/>
                <input type="email" placeholder="E-mail" name="email" required/>
                <input type="password" placeholder="Password" name="pass" required/>                            
                <br/>
                <button type="submit">Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="Login" method="POST">
                <h1>Sign In</h1>
                <input type="email" name="email" placeholder="Email" required/>
                <input type="password" name="pass" placeholder="Password" required/>
                <a href="#">Forgot your password?</a>
                <button type="submit">Sign In</button>
                <a href="admin_login_page.jsp" class="admin-link">For Admin</a>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Already have an Account?</h1>
                    <p>To connect with us please login with your account here</p>
                    <button class="ghost" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Create your account</h1>
                    <p>Enter your personal detail and start your journey with us</p>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
    <script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });
    </script>
</body>
</html>
