<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <link
     href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'
      rel="stylesheet"
    />
    <link href="./regn_success_style.css" rel="stylesheet" />
    <title>popup2</title>
  </head>
  <body>   
    <div class="popup" id="success">
      <div class="popup-content">
        <div class="imgbox">
          <img src="images/checked.png" alt="" class="img">
        </div>
        <div class="title">
          <h3>Success!</h3>
        </div>
        <p class="para">Your account has been created successfully</p>
        <form action="">
          <a href="#" class="button" id="s_button">OKAY</a>
        </form>
      </div>
    </div>
    
    <div class="popup" id="error">
      <div class="popup-content">
        <div class="imgbox">
          <img src="images/cancel.png" alt="" class="img">
        </div>
        <div class="title">
          <h3>Sorry !! </h3>
        </div>
        <p class="para">Something went wrong. Please try again !</p>
        <form action="">
        	<a href="#" class="button" id="e_button">OKAY</a>
        </form>
      </div>
    </div>
       
    <script type="text/javascript">
    const success_popup = document.getElementById('success');
    const error_popup = document.getElementById('error');

    const urlParams = new URLSearchParams(window.location.search);
    const registration = urlParams.get('registration');
    
    success_popup.style.display = "block";
    error_popup.style.display = "block";

    if (registration === 'success') {
    	error_popup.style.display="none";
    } else if (registration === 'error') {  
    	success_popup.style.display="none";
    	
    }
    </script>
  </body>
   
</html>