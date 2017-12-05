<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Activation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #4682B4;">

<div class="container">
  <h1 style="color: white;">${status}</h1>
  
    <img src="images/1.jpg" style="margin:0cm 0cm 0cm 1.5cm; height: 10cm; width: 10cm;"/>
         
    <c:if test = "${status == 'your account is activated'}">
     
     </c:if>
  
</div>

</body>
</html>
