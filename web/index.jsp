<%-- 
    Document   : index
    Created on : Oct 6, 2023, 10:55:49 AM
    Author     : hp
--%>

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Promo Plus</title>
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
        <!-- navbar -->
        <%@include file="normal_navbar.jsp" %>
        
        <!--banner-->
        <div class="container-sm ">
            
            <div class="jumbotron text-white primary-background banner-background">
                <div class="container">
                <h3 class="display-3">Welcome to Promo Plus</h3>
                <p>A programming language is a system of notation for writing computer programs.Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.</p>
                <a href="register.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-external-link"></span>Sign Up</a>
                <a  href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle-o fa-spin"></span> Login</a>
                </div>  
            </div>
            <!--cards-->
            <div class="container">
                <div class="row mb-2">
                    
                    <div class="col-md-4">
                        
                        <div class="card" >
                        <div class="card-body">
                       <h5 class="card-title"> Java Programing</h5>
                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn text-white primary-background">Read more</a>
  </div>
</div>
                        
                    </div>
                     <div class="col-md-4">
                        
                        <div class="card" >
                        <div class="card-body">
                       <h5 class="card-title"> Java Programing</h5>
                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn text-white primary-background">Read more</a>
  </div>
</div>
                        
                    </div>
                     <div class="col-md-4">
                        
                        <div class="card" >
                        <div class="card-body">
                       <h5 class="card-title"> Java Programing</h5>
                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn text-white primary-background">Read more</a>
  </div>
</div>
                        
                    </div>
                    
                    
                </div>
                
                
                
                  <div class="row ">
                    
                    <div class="col-md-4">
                        
                        <div class="card" >
                        <div class="card-body">
                       <h5 class="card-title"> Java Programing</h5>
                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn text-white primary-background">Read more</a>
  </div>
</div>
                        
                    </div>
                     <div class="col-md-4">
                        
                        <div class="card" >
                        <div class="card-body">
                       <h5 class="card-title"> Java Programing</h5>
                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn text-white primary-background">Read more</a>
  </div>
</div>
                        
                    </div>
                     <div class="col-md-4">
                        
                        <div class="card" >
                        <div class="card-body">
                       <h5 class="card-title"> Java Programing</h5>
                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn text-white primary-background">Read more</a>
  </div>
</div>
                        
                    </div>
                    
                    
                </div>
            </div>
            
            
            
        </div>
        <!-- JavaScript -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/js.js" type="text/javascript"></script>


    </body>
</html>
