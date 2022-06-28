<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
.row
{
  padding:40px;
}
.calculate 
{
    right: 0;
    margin-left: 850px;
    font-size: 26px;
    font-weight: bolder;
}
.calculate span 
{
  color:red;
  font-weight: bolder;
    
}
.pay
{

  margin-left: 500px;
}
.pay button
{
  font-size: 20px;

}
.title
{
  margin-top: 30px;
  text-align: center;
  font-size: 18px;
  font-weight: bolder;
}
</style>
<body>
        <nav class="navbar navbar-expand-lg navbar-dark" id = "navbar">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">SHO<span>ES</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false">
            <span class="navbar-toggler-icon"></span>
          </button>
              <div class="btn-group">
                <img src="/images/Avatar.jpg" alt="Avatar" class="avatar" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">${message}</a>
                  <a class="dropdown-item" href="/">Logout</a>
                </div>
              </div>
              
            </div>
        
      </nav>
        <div class="title">
        <h1>Receipt Page</h1>
      </div>
    <div class = "container">
    <div class="row">
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Product Id</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Price</th>
            </tr>
        </thead>
        <c:forEach  items="${listKids}" var="listKids"  >
        <tbody>
          <tr>
            <td>${listKids.id}</td>
            <td>${listKids.getProductName()}</td>
            <td>${listKids.getPrice()}</td>
          
          </tr>
        </tbody>
       </c:forEach>
      </table>  
      <div class="calculate">  
      <p class = "amt"><span>Total:</span> Rs.${amount} </p>
    </div>
    <div class="pay">  
      <a href="payment">
        <button type="button" class="btn btn-success">pay now</button>
      </a>
  </div>
    </div>
    </div>
</body>
</html>
