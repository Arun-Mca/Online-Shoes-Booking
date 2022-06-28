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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />


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
.title
{
  margin-top: 30px;
  text-align: center;
  font-size: 18px;
  font-weight: bolder;
  padding:30px;
}
.row
{
   top:300px;
}
</style>
<body>
            <div class="title">
        <h1>Queries Page</h1>
      </div>

    <div class = "container">
    <div class="row">
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Email Id</th>
            <th scope="col">Comment</th>
            <th scope="col">Remove</th>
          </tr>
        </thead>
        <c:forEach  items="${queries}" var="queries"  >
        <tbody>
          <tr>
            <td>${queries.firstName}</td>
            <td>${queries.lastName}</td>
            <td>${queries.emailId}</td>
            <td>${queries.comments}</td>
            <td><a href="deleteMensShoes${queries.id}">
                <button type="button" class="btn btn-danger"><i class="fas fa-user-times"></i>
                Remove</button>
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

