<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap-5.1.0-dist/css/bootstrap.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" type = "text/css" href="./css/style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

*{
    margin: 0;
    left: 0;
    top: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
#navbar{
    position: sticky;
    top: 0;
    left: 0;
    z-index: 100;
    padding: .5rem 5rem;
    box-shadow: 5px 5px 2px rgba(31, 26, 26, 0.5);
    background: black;
}
.navbar .navbar-brand{
    font-size: 25px;
    font-weight: 800;
    color: orangered;
    text-transform: uppercase;
}
.navbar .navbar-brand span{
    color: white;
}

#caption{
    width: 100%;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}
/*******Home******/

section{
    width: 100%;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}
#home{
    background: linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.8)),url(/images/New.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    flex-direction: column;
}
#home h1{
    font-size: 80px;
    color: white;
    letter-spacing: 3px;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    text-shadow: 0px 1px 0px #ccc,
                 0px 2px 0px #ccc,
                 0px 3px 0px #ccc,
                 0px 4px 0px #ccc,
                 0px 5px 0px #ccc,
                 0px 6px 0px #ccc,
                 0px 7px 0px #ccc;
}
#home p{
    color: white;
    font-size: 18px;
    letter-spacing: 1px;
}
#home .input-group{
    width: 40%;
    height: 45px;
}
.signin{
    background: orangered !important;
    color: white;
    box-shadow: 2px 4px 5px rgba(0,0,0,.3);
    padding-right: 20px;
}

#about{
    background: #333;
}
#about h5{
    font-weight: 800;
    color: white;
    font-size: 30px;
    font-weight: bolder;
    
}
#about p{
    color: white;
    font-size: 18px;
    
}
.profile a{
  padding-right:20px;
}
.logout
{
    padding-left: 10px;
}
.avatar {
  vertical-align: middle;
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
.dropdown.item
{
   color: red;
   background-color: red;
}
</style>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" id = "navbar">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">SHO<span>ES</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto ">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#home">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="MensShoes">Mens Shoes</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="womansShoes">Womens Shoes</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="kidsShoes">Kids Shoes</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="contact">Contact Us</a>
              </li>
              </ul>

            </div>

              <div class="btn-group">
                <img src="/images/Avatar.jpg" alt="Avatar" class="avatar" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">${message }</a>
                  <a class="dropdown-item" href="/">Logout</a>
                </div>
              </div>
              
            </div>
        </div>
        
      </nav>

      <!-----Home---->
          <section id = "home">
            <h1>SHOES</h1>
            <p>Available all type of shoes</p>
            <div class="input-group m-4">
              <input type="text" class = "form-control" placeholder="Enter items">
                <button class="btn signin">Search</button>
            </div>
          </section>
</body>
</html>