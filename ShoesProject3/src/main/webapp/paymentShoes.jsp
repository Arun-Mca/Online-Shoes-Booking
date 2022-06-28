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

</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

.container
{
  margin-left: 500px;
  margin-top: 50px;
}
.title
{
  font-size: 36px;
  font-weight: bolder;
  margin-top: 10px;
  background-color: gray;
  width: 100%;
  margin-top: 0%;
  padding: 25px;
}
.title .payment
{
  margin-left: 650px; 
}
.row h3{
  font-weight: bolder;
}
.row a{
  text-decoration: none;
}
</style>
<body>
     <div class = "title">
       <p class="payment">Payment Details</p>
     </div>
    <form action = "paymentSuccess1">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-6 ">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <h3 class="text-center">Debit Card</h3>
                        </div>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                          <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group"> <label>CARD OWNER</label> <input type="text" class="form-control" placeholder="Card Owner Name"  required/> </div>
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="form-group"> <label>CARD NUMBER</label>
                                        <div class="input-group"> <input type="tel" class="form-control" placeholder="Valid Card Number" required/> <span class="input-group-addon"><span class="fa fa-credit-card"></span></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-7 col-md-7">
                                    <div class="form-group"> <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline"></span> DATE</label> <input type="tel" class="form-control" placeholder="MM / YY" required /> </div>
                                </div>
                                <div class="col-xs-5 col-md-5 pull-right">
                                    <div class="form-group"> <label>CV CODE</label> <input type="password" class="form-control" placeholder="CVC" required/> </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-xs-12"> <button class="btn btn-success btn-lg btn-block">Confirm Payment</button></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>