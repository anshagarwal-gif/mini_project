<%-- 
    Document   : register
    Created on : Oct 6, 2023, 4:07:14 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            
            .banner-background{
                
                
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 81%, 70% 100%, 28% 88%, 0 95%, 0 0);
            }
            
            
        </style>
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>
        <main class="primary-background  banner-background " style="padding-bottom: 100px; padding-right: 200px" >
            <div class="container " >
                <div class="col-mid-6 offset-md-4" >
                    <div class="card">
                        <div class="card-header text-center">
                            <span class="fa fa-3x fa-user-circle"></span>
                            Register Here
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="registerServlet"  method="post">
  <div class="form-group">
    <label for="user_name">User Name</label>
    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter your user name">
    
  </div>
                                <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email address">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter password">
  </div>
  <div class="form-group">
    <label for="gender">Select Gender</label>
    <br>
    
    <input type="radio" id="gender" name="gender">Male
    <input type="radio" id="gender" name="gender">Female
  </div>
  <div class="form-group">
      <textarea name="about" id="" cols="30" rows="5" class="form-control" placeholder="Tell about yourself"></textarea>
  </div>
  <div class="form-group form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Terms and Condition</label>
  </div>
                                <div class="container text-center" id="loader" style="display:none">
                                    
                                    <span class="fa fa-refresh fa-spin fa-3x"></span>
                                    <h4>Please wait!!</h4>
                                </div>
                                    
  <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                                
</form>
                            
                        </div>
                       
                        
                        
                        
                        
                    </div>
                    
                    
                    
                </div> 
                
                
                
            </div>
                
             
            
            
            
        </main>
        
        
        
         <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/js.js" type="text/javascript"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>    
    $(document) .ready(function () {
console.log("loaded........")

 

$('#reg-form').on('submit', function (event) {
event.preventDefault () ;

let form = new FormData(this) ;
$("#submit-btn").hide();
$("#loader").show();
//send register servlet
$.ajax({
url: "registerServlet",
type: 'POST',
data: form,
success: function (data, textStatus, jqXHR) {
console.log(data)
$("#submit-btn").show();
$("#loader").hide();
if(data.trim()==="done"){
swal("Register Succesfully!!!")
.then((value) => {
  window.location="login_page.jsp";
});
}

else{
swal(data);
}
 },

error: function (jqXHR, textStatus, errorThrown) {
console.log(jqXHR)
$("#submit-btn").show();
$("#loader").hide();
swal("Something went wrong...");
},
processData:false,
contentType:false
});
});
    });
    
    
</script>
    </body>
</html>
