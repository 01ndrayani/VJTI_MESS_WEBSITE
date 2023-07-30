<!DOCTYPE html>
<html lang="en">

<head>
    <title>VJTI GIRL'S MESS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/bootstrap.min_alpha.css">
     <link rel="stylesheet" href="CSS/style1.css">
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
   <style>
        
        /* .fixed-top{
            background-color: #000;
        } */
        body,
        html {
            background-color: #000;
            width: 100%;
            min-height: 100%;
            padding: 0;
            margin: 0;
        }
        
        .scroll-downs {
            position: absolute;
            top: 0; 
            right: 0;
            bottom: 40px;
            left: 0;
            margin: auto;
            z-index: 9999;
            width: 34px;
            height: 55px;
        }
        .scroller {
            width: 3px;
            height: 10px;
            border-radius: 25%;
            background-color: #fff;
            animation-name: scroll;
            animation-duration: 2.2s;
            animation-timing-function: cubic-bezier(.15, .41, .69, .94);
            animation-iteration-count: infinite;
        }
        
        a.scroll-downs.displaynone {
            display: none;
        }
        
        .scroll_text {
            position: absolute;
            right: 0;
            left: 0;
            margin: 0 auto;
            z-index: 9999;
            width: 110px;
            margin-right: -54px;
        }
        h4{
        color: green;
        }
        @keyframes scroll {
            0% {
                opacity: 0;
            }
            10% {
                transform: translateY(0);
                opacity: 1;
            }
            100% {
                transform: translateY(15px);
                opacity: 0;
            }
        }
        table {
            font-family: 'Pangolin', cursive !important;
            border-collapse: collapse;
            color:white;
            width: 100%;
        }

        td, th {
            border: 1px solid white;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: black;
        }
        .btn-primary{
            padding-left: 10px;
        }

button:hover {
  opacity: 0.8;
}
    </style>
</head>

<body class="bg">
    <header>
        <div class="overlay"></div>
        <video class="header_video" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop"> 
    <source src="VIDEO/_import_62c7cdc8224a01.35117630_preview.mp4" type="video/mp4">
  </video>
        <div class="container h-100">
            <div class="d-flex h-100 text-center">
                <div class="w-100 text-white"> <img class="mx-auto d-block" src="IMG/LOGO.png" alt="" /> </div>
            </div>
        </div>
    </header>
    <div id="header" class="display_none fixed-top" >
        <div class="container-fluid common_header">
        <div class="row">
            <nav class="navbar navbar-default navbar-fixed-top navbar-me navbar-toggleable-md navbar-light">
                <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                <div class="top_img">
                    <img class="mx-auto before_scroll" src="IMG/LOGO.png" alt="" style="display: none;">
                    <img class="mx-auto after_scroll" src="" alt="">
                </div>
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pr-0" id="nav-left">
                    <ul class="nav navbar-nav ml-auto nav_left">
                        <li class="nav-item active"> <a class="nav-link" href="index.jsp"> HOME<span class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link" href="sign_up.html">  LOGIN/ SIGN UP</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="admin_login.html">ADMIN LOGIN</a> </li>
                        </ul>
                </div>
                <a class="navbar-brand set_height col-sm-8 col-md-2 col-lg-2 col-xl-2 text-center p-0 m-0" href="index.jsp">
                </a>
                <img class="mx-auto after_scroll" src="IMG/LOGO.png" alt="">
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pl-0" id="nav-right">
                    <ul class="nav navbar-nav nav_right mr-5">
                        <li class="nav-item"> <a class="nav-link" href="mess_rules.html">MESS RULES  </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="mess_menu.html">MENU </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="online_payment.html">PAY ONLINE </a> </li>
                    </ul>
                </div>
                <div class="nav_full_width collapse" id="navbarMobile" >
                    <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                    <ul class="nav navbar-nav">
                        <li class="nav-item active"> <a class="nav-link" href="index.jsp"> HOME<span class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link" href="sign_up.html">  LOGIN/ SIGN UP</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="admin_login.html">ADMIN LOGIN</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="mess_rules.html">MESS RULES  </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="mess_menu.html">MENU </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="online_payment.html">PAY ONLINE </a> </li>
                   </ul>
                </div>
            </nav>
        </div>
    </div>
</div>
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <h2 class="title pad_mar move_up_2">RULES/ INSTRUCTIONS</h2>
                    <h2>MESS SCHEDULE</h2>
                    <table>
                        <tr>
                          <th></th>
                          <th>WEEKDAY</th>
                          <th>WEEKEND</th>
                        </tr>
                        <tr>
                          <td>BREAKFAST</td>
                          <td>7:30am to 9:00am</td>
                          <td>8:00am to 9:00am</td>
                        </tr>
                        <tr>
                          <td>LUNCH</td>
                          <td>12:30pm to 2:00pm</td>
                          <td>12:30pm to 2:00pm</td>
                        </tr>
                        <tr>
                          <td>DINNER</td>
                          <td>7:30pm to 9:00pm</td>
                          <td>7:30pm to 9:00pm</td>
                        </tr>
                    </table>
                    <a href="mess_rules.html" class="sub_title_text pad_mar"> Know more...</a> 
                </div>
            </div>
        </div>
    

    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <h2 class="title pad_mar">OUR MENU</h2>
                <p class="title_text no-min-height"> Our menu is carefully chosen and handpicked for you, so you could experience the ultimate richness and authentic taste of the Chettinad cuisine</p>
            		<h4>TODAY'S MENU</h4>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<form >

<table border="2">
   <tr>
        <td>BREAKFAST</td>
        <td>LUNCH</td>
        <td>DINNER</td>
   </tr>
   <%
   Connection con = null;
   try
   {
	   long millis = System.currentTimeMillis();
       java.sql.Date date= new java.sql.Date(millis);
       
       Class.forName("oracle.jdbc.driver.OracleDriver");
       con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Jk@191997");
       
		Statement stmt=con.createStatement();
		 String query= "SELECT *FROM menu WHERE menu_date='"+date+"'";
		//String query= "SELECT *FROM leave WHERE name='jk'";
        ResultSet rs=stmt.executeQuery(query);
        
        while(rs.next())
        {
        	   %>		
        	           <tr>
        	           <td><%out.print(rs.getString(1)); %></td>
        	           <td><%out.print(rs.getString(2)); %></td>
        	           <td><%out.print(rs.getString(3)); %></td>
        	           </tr>
        	         
        	   <%
        	       }
        	   %>
        	   </table>

        	   <%
 
        rs.close();
        stmt.close();
        con.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>`
        </div>
        </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center"> <a href="mess_menu.html" class="sub_title_text pad_mar"> View Full Menu...</a> </div>
        </div>
    
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <h2 class="title pad_mar">CONTACT US </h2>
                <p class="title_text" style="min-height:inherit;"> We are always happy to listen to you, kindly take a minute to submit your reviews / feedbacks for us to improve. Click here to get in touch !</p>
                <a href="contact_us.html" class="sub_title_text pad_mar">Contact Us...   </a> 
            </div>
        </div>
    </div>


    <div id="footer"><div class="container-fluid pad_mar border_top">
        <div class="row margin_top">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block moveUp text-center animated">
                <h2 class="Footer_text with_font">VJTI GIRL'S MESS </h2>
                
                <!-- <p class="Footer_text">Made with <span><img class="icon_img_small" src="img/heart.png"/></span> </p> -->
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
    </div>
    <script src="JS/jquery.min.js"></script>
    <script src="JS/popper.min.js"></script>
    <script src="JS/custom.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <script>
        // jQuery(document).ready(function($) {

       // var bodyheight_scroll = $(window).height() / 6;
        // var bodywidth = $(window).width();
        // alert("Width:'bodywidth'" );
        //         var txt = "";
        // txt += "Document width/height: " + $(document).width();
        // txt += "x" + $(document).height() + "\n";
        // txt += "Window width/height: " + $(window).width();
        // txt += "x" + $(window).height();
        // alert(txt);
        //     })
        //$(window).scroll(function() {

            // alert(header_video);
            // $('#header').toggleClass('fixed-top', $(this).scrollTop() > header_video);
            //$('.scroll-downs').toggleClass('displaynone', $(this).scrollTop() > bodyheight_scroll);
            // $('.top_img .before_scroll').toggleClass('d-block', $(this).scrollTop() < header_video);
            // $('.top_img .before_scroll').css('display', 'none', $(this).scrollTop() > header_video);
        //});
    </script>
</body>

</html>