<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    

    <title>Add mens shoes</title>

  </head>
<style>
html,
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: -webkit-box;
  display: flex;
  -ms-flex-align: center;
  -ms-flex-pack: center;
  -webkit-box-align: center;
  align-items: center;
  -webkit-box-pack: center;
  justify-content: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
p.fail{
    
    color:red;
    font-weight: bolder;
}
</style>
  <body class="text-center">
    <form action = "kidsProducts" class="form-signin" modelAttribute = "ImgUplod">
      <h1 class="h3 mb-3 font-weight-normal">Update Shoes</h1>
      <label for="id" class="sr-only">product Name</label>
      <input type="number"  name = "id" class="form-control" value = "${list.getId()}"placeholder="Enter product Id" required autofocus><br>
      <label for="productName" class="sr-only">product Name</label>
      <input type="text"  name = "productName" class="form-control" value = "${list.getProductName()}"placeholder="Enter product name" required autofocus><br>
      <label for="price" class="sr-only">price</label>
      <input type="text" id="price" name = "price" class="form-control" value = "${list.getPrice()}" placeholder="Enter price" required><br>
       <button class="btn btn-lg btn-primary btn-block" type="submit">Update</button>
  </form>
  </body>
</html>