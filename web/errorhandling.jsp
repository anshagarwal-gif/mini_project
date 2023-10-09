<%-- 
    Document   : errorhandling
    Created on : Oct 7, 2023, 3:25:49 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="True"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry! Something went wrong</title>
        
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
        <div class="container  text-center">
            <img src="images/computer.png" class="img-fluid"> 
            <%=exception%>
            <h3 class="display-3">Sorry! Something went wrong</h3>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>         
        </div>
    </body>
</html>
