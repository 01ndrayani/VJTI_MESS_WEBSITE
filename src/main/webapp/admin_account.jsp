<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta charset="ISO-8859-1">
<title>ADMIN ACCOUNT</title>
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
    background-image: url("IMG/admin.jpg");
    background-attachment: inherit;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    width: 100%;
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
        h3{
            color: white;
            padding-bottom: 20px;
        }

        tr:nth-child(even) {
            background-color: black;
        }
        .btn-primary{
            padding-left: 10px;
        }
        h4{
            color: green;
        }
	button:hover {
  	opacity: 0.8;
	}    

</style>
</head>
<body>
<div class="bg">
<div id="header" class=""><div class="container-fluid common_header">
        <div class="row">
            <nav class="navbar navbar-default navbar-fixed-top navbar-me navbar-toggleable-md navbar-light">
                <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                <div class="top_img">
                    <img class="mx-auto before_scroll d-block" src="img/logo_bg1.png?v10" alt="" style="display: none;">
                    <img class="mx-auto after_scroll" src="img/logo_bg2.png?v10" alt="">
                </div>
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pr-0" id="nav-left">
                    <ul class="nav navbar-nav ml-auto nav_left">
                        <!-- <li class="nav-item active"> <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a> </li> -->
                        <li class="nav-item"> <a class="nav-link" href="admin_account.jsp">HOME</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#update_menu">UPDATE MENU</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#leave">LEAVE</a> </li>
                       </ul>
                </div>
                <a class="navbar-brand set_height col-sm-8 col-md-2 col-lg-2 col-xl-2 text-center p-0 m-0" href="index.jsp">
                    </a><div id="logo"><a class="navbar-brand set_height col-sm-8 col-md-2 col-lg-2 col-xl-2 text-center p-0 m-0" href="index.jsp">
                        </a><a href="index.jsp"><img class="mx-auto d-block top_logo" src="img/logo.png?v10" alt=""></a>
                    </div>
                
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pl-0" id="nav-right">
                    <ul class="nav navbar-nav nav_right mr-5">
                        <li class="nav-item"> <a class="nav-link" href="#payment_history">PAYMENT </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#feedback">FEEDBACK</a> </li>
                         <li class="nav-item"> <a class="nav-link" href="logout.jsp">LOGOUT</a> </li> 
                      </ul>
                </div>
                <div class="collapse nav_full_width" id="navbarMobile">
                    <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="true" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                    <ul class="nav navbar-nav">
                        <!-- <li class="nav-item active"> <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a> </li> -->
                        <li class="nav-item"> <a class="nav-link" href="admin_account.jsp">HOME</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#update_menu">UPDATE MENU</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#leave">LEAVE</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#payment_history">PAYMENT </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#feedback">FEEDBACK</a> </li>
                        <!-- <li class="nav-item"> <a class="nav-link" href="contact_us.html">CONTACT US </a> </li> -->
                      </ul>
                </div>
            </nav>
        </div>
    </div>
    </div>
    <div class="container-fluid no-gutters p-0">
      <div class="header_bg abt-header-background align-items-center align-middle">
        <div class="container text-center header_title align-middle">
          <h2 class="align-middle">ADMIN</h2>
        </div>
      </div>
    </div>
</div>
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">RULES/ INSTRUCTIONS</h2> -->
                    <h3 id="update_menu">UPDATE MENU</h3>
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> -->
                   
                    <div class="form-group">
                    <form method="post"  action="collect_menu.jsp">
                    	<div class="form-group text-center mt-2">
                        	<label for="breakfast">BREAKFAST</label>
                        	<textarea class="form-control" id="breakfast" name="breakfast" rows="3"></textarea>
                        </br>
                        
                        	<label for="lunch">LUNCH</label>
                        	<textarea class="form-control" id="lunch" name="lunch" rows="3"></textarea>
                        </br>
                         	<label for="dinner">DINNER</label>
                    		<textarea class="form-control" id="dinner" name="dinner" rows="3"></textarea>
                      		</br>
                      		
                       		<label for="date">DATE </label>
                        	<input type="date" id="menu_date" name="menu_date" min="" required>
                    		<input type="submit" class="btn btn-primary green" name="action" value="Update Menu" >
                		</div>
                	</form>
                      </div>
          </div> 
          </div>
           </div>
          
          

    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">RULES/ INSTRUCTIONS</h2> -->
                    <h3 id="leave">LEAVE</h3>
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> -->
                     <h4 >TODAY'S LEAVES</h4>
                   
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<form >

<table border="2">
   <tr>
        <td>NAME</td>
        <td>PHONE</td>
        <td>LEAVE</td>
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
		 String query= "SELECT *FROM leave WHERE leave='"+date+"'";
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
   <h4 >Count : </h4>
   <%
   //rs.last();
   //int count=0; 
   //count= rs.getFetchSize();
  // out.println("Table contains"+count);
   %>
</form>`
                      <form action="all_leaves.jsp">
                        <input type="submit" class="btn btn-primary green" name="check leave" value="Check all Leaves" >
                    </form>
                   </div>     
            </div>
        </div>
        
        
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">RULES/ INSTRUCTIONS</h2> -->
                    <h3 ><a  href="">FEEDBACK</a></h3>
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> -->
                      <h4 >TODAY'S FEEDBACKS</h4>
               
<table border="2">
   <tr>
        <td>NAME</td>
        <td>E-MAIL</td>
        <td>FEEDBACK/COMPLAINT</td>
   </tr>
   <%
    query= "SELECT *FROM feedback WHERE fdate='"+date+"'";
	//String query= "SELECT *FROM leave WHERE name='jk'";
   rs=stmt.executeQuery(query);
   
  while(rs.next())
  {
%>		
      <tr>
      <td><%out.print(rs.getString(2)); %></td>
      <td><%out.print(rs.getString(3)); %></td>
      <td><%out.print(rs.getString(4)); %></td>
      </tr>
    
<%
  }
%>
</table>
</br>
                <form action="all_feedbacks.jsp">
                        <input type="submit" class="btn btn-primary green" name="check feedback" value="Check all feedbacks" >
                    </form>
               </div>
        </div>
    </div>
      
       <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">RULES/ INSTRUCTIONS</h2> -->
                    <h3 id="payment_history"> PAYMENT</h3>
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> -->
                    <table border="2">
   <tr>
        <td>NAME</td>
        <td>DAYS</td>
        <td>AMOUNT</td>
   </tr>
   <%
    query= "SELECT *FROM payment WHERE date_paid='"+date+"'";
	//String query= "SELECT *FROM leave WHERE name='jk'";
   rs=stmt.executeQuery(query);
   
  while(rs.next())
  {
%>		
      <tr>
      <td><%out.print(rs.getString(1)); %></td>
      <td><%out.print(rs.getString(3)); %></td>
      <td><%out.print(rs.getString(4)); %></td>
      </tr>
    
<%
  }
%>
</table>
</br>
 <form action="check_all_payments.jsp">
                        <input type="submit" class="btn btn-primary green" name="check feedback" value="Check all payments" >
                    </form>
                 </div>
			</div>
        </div>  
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
    </body>
    </html>