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
    .shoes{ 
    padding: 50px;
    background-color:lightslategrey;
    
}
.shoes h1
{
    text-align: center;
    justify-content: center;
    padding-top: 10px; 
    font-family: "Gill Sans Extrabold", sans-serif;  
}
.navbar {
    margin-left: 1400px;
    margin-top: -30px;   
}
.navbar a {
    text-decoration: none;
    padding: 10px;
    color: black;
    text-align: center;
    background-color: orangered;
    border-radius: 10px;
    margin-top: 1px;    
}
.navbar a:hover{
    background-color: cornflowerblue;
}
.row
{
    padding: 10px;
    
}
.action
{
  width:50px;
}
a{
    width: 100px;s
}
button{
    width: 200px;
}
.add
{
    padding: 30px;
}
</style>
<body>
    <div align ="center">
        <div class="shoes">
        <h1>KIDS SHOES LIST</h1>
        </div>
        <div class="add">
        <a href="addkidsShoes"> 
        <button type="button" class="btn btn-primary">Add Product</button>
    </a>
    </div>
    <div class = "container">
    <div class="row">
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Product Id</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Price</th>   
            <th scope="col">Actions</th>   
            <th scope="col">Actions</th>    
          </tr>
        </thead>
        <c:forEach  items="${kidsShoes}" var="kidsShoes"  >
        <tbody>
          <tr>
            <td>${kidsShoes.id}</td>
            <td>${kidsShoes.productName}</td>
            <td>${kidsShoes.price}</td>
            <td><a href="updateKidsShoes${kidsShoes.id}">
                <button type="button" class="btn btn-primary">Update</button>
                </a>
            </td>
            <td><a href="deleteKidsShoes${kidsShoes.id}">
                <button type="button" class="btn btn-danger">Delete</button>
               </a>
            </td>
          </tr>
        </tbody>
        </c:forEach>          
      </table>    
    </div>
    </div>
  
</body>
</html>

