<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="Login.css">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&display=swap');

    

* {
	margin: 0;
	padding: 0;
    box-sizing: border-box;
	font-family: 'Lato', sans-serif;
}
section
{
    position: relative;
    min-height: 100vh;
    background: skyblue;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}
#errorBox
{
    color: red;
    font-size: 16px;
    font-weight: bolder;
}
#errorBoxs
{
    color: red;
    font-size: 16px;
    font-weight: bolder;
}
section .container{
    position: relative;
    width: 800px;
    height: 500px;
    background: #fff;
    box-shadow: 0 15px 50px rgba(0,0,0,0.1);
    overflow: hidden;
}
section .container .user{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
}
section .container .user .imgBx 
{
    position: relative;
    width: 50%;
    height: 100%;
    background: skyblue;
    transition: 0.5s;
    transform-origin: right;
}
section .container .user .imgBx img
{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
section .container .user .formBx{
    position: relative;
    width: 50%;
    height: 100%;
    background: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px;
    transition: 0.5s;
    transform-origin: right;
}
section .container .user .formBx form h2{
    font-size: 18px;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 2px;
    text-align: center;
    width: 100%;
    margin-bottom: 10px;
    color: #555;
}
section .container .user .formBx form input{
    position: relative;
    width: 100%;
    padding: 10px;
    background: #f5f5f5;
    color: #333;
    border: none;
    outline: none;
    box-shadow: none;
    margin: 8px 0;
    font-size: 14px;
    letter-spacing: 1px;
    font-weight: 300;

}
section .container .user .formBx form input[type="submit"]
{
    max-width: 100px;
    background: #677eff;
    color: #fff;
    cursor: pointer;
    font-size: 14px;
    font-weight: 500;
    letter-spacing: 1px;
    transition: 0.5s;
}
section .container .user .formBx form .signup{
    position: relative;
    margin-top: 20px;
    font-size: 12px;
    letter-spacing: 1px;
    color: #555;
    text-transform: uppercase;
    font-weight: 300;
}
section .container .user .formBx form .signup a{
    font-weight: 600;
    text-decoration: none;
    color: #677eff;
}
section .container .signupBx{
    pointer-events: none;
}
section .container.active .signupBx{
    pointer-events: initial;
}
section .container .signupBx .formBx{
    left: 100%;
}
section .container.active .signupBx .formBx{
    left: 0;
}
section .container .signupBx .imgBx{
    left: -100%;
}
section .container.active .signupBx .imgBx{
    left: 0%;
}
section .container .signinBx .formBx{
    left: 0;
}
section .container.active .signinBx .formBx{
    left: 100;
}
section .container .signinBx .imgBx{
    left: 0%;
}
section .container.active .signinBx .imgBx{
    left: -100%;
}
p.fail{
    
    color:red;
    font-weight: bolder;
}
.title
{
  position: absolute;
  top: 40px;
  text-align: center;
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  font-size: 22px;
}
.design
{
  color: orangered;
  font-weight: bolder;
  font-size: larger;
}
    </style>

    <script>
      function validateForm()
       {
         let userName = document.forms["myForm"]["userName"].value;
         let Email = document.forms["myForm"]["email"].value;
         var passWord = document.forms["myForm"]["password"].value;
         var repassWord = document.forms["myForm"]["rePassword"].value;
         
         var emailPattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$";
         var format =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
         var passw =  /^[A-Za-z]\w{7,14}$/;

         if (userName == "")
         {
          document.getElementById("errorBoxs").innerHTML = "username must be filled out";
          return false;
         }
         if (!(isNaN(userName)))
         {
          document.getElementById("errorBoxs").innerHTML = "Digits should not filled out";
          return false;
         }
         if (Email == "")
         {
          document.getElementById("errorBoxs").innerHTML = "Email must be filled out";
          return false;
         }
         if (passWord == "")
         {
          document.getElementById("errorBoxs").innerHTML = "Password must be filled out";
          return false;
         }
         
         if(!format.test(passWord)) 
         {
          document.getElementById("errorBoxs").innerHTML = "Password Should be Minimum 8 character, atleast one upper and lowercase case,special character,digits";
          return false;
         }
           
          if (repassWord == "")
         {
          document.getElementById("errorBoxs").innerHTML = "Confirm Password must be filled out";
          return false;
         }
         if (passWord != repassWord)
         {
          document.getElementById("errorBoxs").innerHTML = "Passwords did not match";
          return false;
         }
         alert("Successfully signup");

       }
       function validateForms()
       {
         let username = document.forms["myFor"]["username"].value;
         let password = document.forms["myFor"]["pswd"].value;
         if (username == "")
         {
           document.getElementById("errorBox").innerHTML = "Username must be filled out";
           return false;
         }
         else if (password == "")
         {
           document.getElementById("errorBox").innerHTML = "Password must be filled out";
           return false;
         }
         
       }

    </script>

</head>
<body>
    <section>
    <div class = "title">
     <h1><span class="design">E</span>A SHOES</h1>
    </div>
		<div class="container">
		
          <div class="user signinBx">
            <div class="imgBx">
                <img src="images/background.jfif">
            </div>
            <div class="formBx">
                <form name = "myFor" action = "successLogin"  onsubmit="return validateForms()" method="POST">
                   <h2>sign In</h2>
                   <div id = "errorBox"></div>
                   <input type="text" name="username" value="" placeholder="username">
                   <input type="password" name="pswd" value="" placeholder="password">
                   <p class = "fail">${fail}</p><br>
                   <a href="Home.html">
                      <input type="submit" name="" value="Login">
                   </a>
                   <p class="signup">Don't have an account? <a href="#" onclick="toggleForm();">Sign Up.</a></p>
                    <p class="signup">Administrator only <a href = "admin">Admin</a>
                </form>
            </div>
        </div>
        <div class="user signupBx">
            <div class="formBx">
                <form name = "myForm" action = "Success" onsubmit="return validateForm()" modelAttribute = "register" method="POST">
                   <h2>Create an account</h2>
                   <div id = "errorBoxs"></div>
                   <input type="text" name="userName" value = "" placeholder="Username">
                   <input type="email" name="email" value = "" placeholder="Enter Email Address">
                   <input type="password" name="password"  value = "" placeholder="Create Password">
                   <input type="password" name="rePassword" id = "rePswd"  value = "" placeholder="Confirm Password">
                   <input type="submit" name="" value="Sign Up">
                   <p class="signup">Already have an account? <a href="#" onclick="toggleForm();">Sign in.</a></p>
                  
                </form>
            </div>
            <div class="imgBx">
                <img src="images/background1.jpg">
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    function toggleForm()
    {
        var container = document.querySelector('.container');
        container.classList.toggle('active');
    }
 </script>
</body>
</html>