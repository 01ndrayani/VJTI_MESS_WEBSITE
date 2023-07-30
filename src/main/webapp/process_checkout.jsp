<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta charset="ISO-8859-1">
<title> USER ACCOUNT</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="CSS/style1.css">  
		<link rel="stylesheet" href="CSS/style.css">  
    <link rel="stylesheet" href="CSS/bootstrap.min_alpha.css">
   
     <style>
     h5{
     	color : green;
     }
         body,html {
      background-color: black;
            width: 100%;
            min-height: 100%;
            padding: 0;
            margin: 0;
        }
          .bg {
    background-image: url("IMG/vegetables-italian-knife-placed-left-black-table.jpg");
    background-attachment: inherit;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    width: 100%;
}

        h4{
        	color: white;
        	 padding-bottom: 20px;
        	 font-weight: bold;
        }
        h3{
            color: white;
            padding-bottom: 20px;
        }

      
        .btn-primary{
            padding-left: 10px;
        }

</style>
</head>
 <body>			<div class="bg">
    <div id="header" class="display_none fixed-top" style>
        <div class="container-fluid common_header">
        <div class="row">
            <nav class="navbar navbar-default navbar-fixed-top navbar-me navbar-toggleable-md navbar-light">
                <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                <div class="top_img">
                    <img class="mx-auto before_scroll" src="img/LOGO21.png" alt="" style="display: none;">
                    <img class="mx-auto after_scroll" src="" alt="">
                </div>
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pr-0" id="nav-left">
                    <ul class="nav navbar-nav ml-auto nav_left">
                        <li class="nav-item active"> <a class="nav-link" href="process_checkout.jsp"> HOME<span class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link" href="sign_up.html">  LOGIN/ SIGN UP</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="contact_us.html">CONTACT US</a> </li>
                        </ul>
                </div>
                <a class="navbar-brand set_height col-sm-8 col-md-2 col-lg-2 col-xl-2 text-center p-0 m-0" href="index.jsp">
                </a>
                <img class="mx-auto after_scroll" src="img/logo_bg2.png?v10" alt="">
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pl-0" id="nav-right">
                    <ul class="nav navbar-nav nav_right mr-5">
                        <li class="nav-item"> <a class="nav-link" href="mess_rules.html">MESS RULES  </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="menu.html">MENU </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="online_payment.html">PAY ONLINE </a> </li>
                    </ul>
                </div>
                <div class="nav_full_width collapse" id="navbarMobile" style>
                    <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                    <ul class="nav navbar-nav">
                        <li class="nav-item active"> <a class="nav-link" href="process_checkout.jsp"> HOME<span class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link" href="sign_up.html">  LOGIN/ SIGN UP</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="contact_us.html">CONTACT US</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="mess_rules.html">MESS RULES  </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="menu.html">MENU </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="online_payment.html">PAY ONLINE </a> </li>
                   </ul>
                </div>
            </nav>
        </div>
    </div>
</div>
    <div class="container-fluid no-gutters p-0">
      <div class="header_bg abt-header-background align-items-center align-middle">
        <div class="container text-center header_title align-middle">
          <h2 class="align-middle">PROCESS CHECKOUT</h2>
        </div>
      </div>
    </div>
</div>
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">mess_rules/ INSTRUCTIONS</h2> -->
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> --> 
                    <%-- Retrieve the form data from the request --%>
                   <%
String paymentType = request.getParameter("paymentType");

if (paymentType != null) {
    if (paymentType.equals("meals")) {
    	 String name = request.getParameter("name");
    	session.setAttribute("name", name);
       String phone = request.getParameter("phone");
       session.setAttribute("phone", phone);
       String email = request.getParameter("email");
       
       String address = request.getParameter("address");
       String city = request.getParameter("city");
       String zipcode = request.getParameter("zipcode");
       int numberOfDays = Integer.parseInt(request.getParameter("days"));
      String numberDays = request.getParameter("days");
      session.setAttribute("numberDays", numberDays);
      String date = request.getParameter("date");
      session.setAttribute("date", date);
       // Calculate the total amount
   
       double fixedPricePerDay = 98.0;
       double totalAmount = fixedPricePerDay * numberOfDays;
    %>

    <p>Name: <%= name %></p>
    <p>Phone Number: <%= phone %></p>
    <p>E-mail: <%= email %></p>
    <p>Number of Days: <%= numberOfDays %></p>
    <p>Fixed Price Per Day: Rs.<%= fixedPricePerDay %></p>
    <p>Total Amount for <%= numberOfDays %> days: Rs.<%= totalAmount %></p>
    <p>Address: <%= address %></p>
    <p>City: <%= city %></p>
    <p>Zip Code: <%= zipcode %></p>
    <p>Date Paid: <%= date %></p>
    <p>Please review the details and click the "Pay Now" button to proceed with payment.</p>
   <form method="post" action ="receipt.jsp" >
    <div class="form-group text-center">
                    <input type="submit" class="btn btn-primary green" name="action" value="PAY" ></div>
    <!-- You can add more order details here as needed -->
<%
    } else if (paymentType.equals("snacks")) {
        // Payment for Snacks
        String amountString = request.getParameter("amount");
        double amountForSnacks = Double.parseDouble(amountString);
        // ... Process the payment for snacks

        // No receipt generation for snacks payment

        // Show the review and pay section only for snacks payment
%>
    <div class="form-group text-center amount">
        <p>Payment Type: Snacks</p>
        <p>Amount for Snacks (Rs.): <%= amountForSnacks %></p>
        <button type="submit" class="btn btn-primary green" name="action" value="PAY" onclick="showAlert()">PAY</button>
    </div>
<% } %>

<%
} else {
    // Handle the case when no payment type is selected (optional)
}
%>

               </form>
               </div>
               </div>
               </div>

    <div id="footer">
    <div class="container-fluid pad_mar border_top">
        			<div class="row margin_top">
            			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block moveUp text-center animated">
                			<h2 class="Footer_text with_font">VJTI GIRL'S MESS </h2>
                			<!--<h2 class="Footer_text">Summa Semmaya irukum ! </h2>
                		    <p class="Footer_text">Made with <span><img class="icon_img_small" src="img/heart.png"/></span> </p> -->
                			 <p class="Footer_text">
                <a href="https://www.instagram.com/vjti_girl's_mess/" target="_blank"><img class="icon_img_big" src="IMG/instagram.png"></a>
                <a href="https://www.facebook.com/vjtigirl'smess/" target="_blank"> <img class="icon_img_big" src="IMG/facebook.png"></a>
            </p>
                			<p class="Footer_text">Follow us on Facebook &amp; Instagram </p>
            			</div>
        			</div>
    			</div>
    			
    			<div class="container pad_mar border_top">
        			<div class="row margin_top">
            			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 text-center">
                			<ul class="Footer_text">
                    			<li><a href="contact_us.html" class="ui-box bottom-inOutSpread">Customer feedback</a></li>
                    	</ul>
            			</div>
        			</div>
    			</div>
    			
    			
    		<script src="JS/jquery.min.js"></script>
    		<script src="JS/popper.min.js"></script>
    		<script src="JS/custom.js"></script>
    		<script src="JS/bootstrap.min.js"></script>
<script>
    function showAlert() {
        // Perform any other payment processing or API calls here
        // If the payment is successful, show the alert
        alert("Payment successful!");
    }
</script>

            <script>
            // Get the current date
             var today = new Date().toISOString().split('T')[0];
                
            // Set the minimum date of the input field to disable current and previous dates
            document.getElementById("date").setAttribute("min", today);
          </script>
    
    </body></html>