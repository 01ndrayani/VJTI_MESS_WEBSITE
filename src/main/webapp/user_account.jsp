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
    background-image: url("IMG/account.jpg");
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
        h4{
        	color: white;
        	 padding-bottom: 20px;
        	 font-weight: bold;
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

</style>
</head>
 <body>
			<div class="bg">
    <div id="header" class=""><div class="container-fluid common_header">
        <div class="row">
            <nav class="navbar navbar-default navbar-fixed-top navbar-me navbar-toggleable-md navbar-light">
                <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                <div class="top_img">
                    <!-- <img class="mx-auto before_scroll d-block" src="img/vegmeals.jpg" alt="" style="display: none;">
                    <img class="mx-auto after_scroll" src="" alt=""> -->
                </div>
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pr-0" id="nav-left">
                    <ul class="nav navbar-nav ml-auto nav_left">
                        <!-- <li class="nav-item active"> <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a> </li> -->
                        <li class="nav-item"> <a class="nav-link" href="user_account.jsp">HOME</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="user_logout.jsp">LOGOUT</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#mess_leave">LEAVE</a> </li>
                       </ul>
                </div>
                
                <a class="navbar-brand set_height col-sm-8 col-md-2 col-lg-2 col-xl-2 text-center p-0 m-0" href="index.jsp"></a>
                <div id="logo">
                <a class="navbar-brand set_height col-sm-8 col-md-2 col-lg-2 col-xl-2 text-center p-0 m-0" href="index.jsp"></a>
                <a href="index.jsp">
                <img class="mx-auto d-block top_logo" src="img/LOGO21.png" alt="">
                </a>
                </div>
                
                <div class="collapse navbar-collapse col-sm-12 col-md-5 col-lg-5 col-xl-5 pl-0" id="nav-right">
                    <ul class="nav navbar-nav nav_right mr-5">
                        <li class="nav-item"> <a class="nav-link" href="online_payment.html">PAY ONLINE </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#payment_history">HISTORY</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="contact_us.html">CONTACT US </a> </li>
                      </ul>
                </div>
                
                <div class="collapse nav_full_width" id="navbarMobile">
                    <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="true" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                    <ul class="nav navbar-nav">
                        <!-- <li class="nav-item active"> <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a> </li> -->
                        <li class="nav-item"> <a class="nav-link" href="user_account.jsp">HOME</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="user_logout.jsp">LOGOUT</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#mess_leave">LEAVE</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="online_payment.html">PAY ONLINE </a> </li>
                        <li class="nav-item"> <a class="nav-link" href="#payment_history">HISTORY</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="contact_us.html">CONTACT US </a> </li>
                     </ul>
                </div>
            </nav>
        </div>
    </div>
</div>
    <div class="container-fluid no-gutters p-0">
      <div class="header_bg abt-header-background align-items-center align-middle">
        <div class="container text-center header_title align-middle">
          <h2 class="align-middle">USER</h2>
        </div>
      </div>
    </div>
</div>
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">mess_rules/ INSTRUCTIONS</h2> -->
                    <h3 id="profile">PROFILE</h3>
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> --> 
                    <%@ page import="java.sql.*" %>
                    <%@ page import="java.lang.*" %>
<%
String action = request.getParameter("action");

if(action.equals("SignUp"))
{
    
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String password = request.getParameter("password");
    %>
    <h4><% out.println("NAME : "+ name);%>  </h4>
	<h4><% out.println("E-MAIL : "+ email);%>  </h4>
	<h4><% out.println("MOBILE NO. : "+ phone);%>  </h4>

    <%
    Connection con = null;
    PreparedStatement ps = null;
    try {
        // Validate the required fields (name, email, phone, and password)
        if (name == null || name.trim().isEmpty() || email == null || email.trim().isEmpty() ||
            phone == null || phone.trim().isEmpty() || password == null || password.trim().isEmpty()) 
        {
            throw new IllegalArgumentException("All fields are required.");
        }

        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Jk@191997");

        // Prepare the SQL statement for inserting user data into the "use" table
        String sql = "INSERT INTO use (name, email, phone, password) VALUES (?, ?, ?, ?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, phone);
        ps.setString(4, password);

        // Execute the SQL statement
        ps.executeUpdate();

        // Registration successful message
       out.println("<h3>Registration successful!</h3>");%>
        
        <%
    } catch (ClassNotFoundException | SQLException e) {
        // Error handling
        out.println("<h2>Error occurred: " + e.getMessage() + "</h2>");
        e.printStackTrace();
    } catch (IllegalArgumentException e) {
        // Handle validation error (e.g., empty fields)
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
    } finally {
        // Close the database resources
        try {
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
else if (action.equals("Login")){
	
   
    String phone = request.getParameter("phone");
    String password = request.getParameter("password");
    //out.print(phone);
    //out.print(password);
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
     boolean loginSuccessful = false;
    try {
        // Validate the required fields (name, email, phone, and password)
        if (phone == null || phone.trim().isEmpty() || password == null || password.trim().isEmpty()) 
        {
            throw new IllegalArgumentException("All fields are required.");
        }

        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Jk@191997");

        // Prepare the SQL statement for checking user data into the "use" table
        String sql = "SELECT * FROM use WHERE phone = ? AND password = ?";
        ps = con.prepareStatement(sql);
        ps.setString(1, phone);
        ps.setString(2, password);
        
        rs = ps.executeQuery();
        loginSuccessful = rs.next();
        // Execute the SQL statement
		if(loginSuccessful==true){
	
	      out.println("<h3>Login successful!</h3>");
			 //retrive data %>
				
				 <h4><% out.println("NAME : "+rs.getString(1));%>  </h4>
				<h4><% out.println("E-MAIL : "+rs.getString(2));%>  </h4>
				<h4><% out.println("MOBILE NO. : "+rs.getString(3));%>  </h4>
		
		<% 	
		}
		
    } 
    catch (ClassNotFoundException | SQLException e) {
        // Error handling
        out.println("<h2>Error occurred: " + e.getMessage() + "</h2>");
        e.printStackTrace();
    } 
    catch (IllegalArgumentException e) {
        // Handle validation error (e.g., empty fields)
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
    } 
    finally {
        // Close the database resources
        try {
            if (ps != null) ps.close();
            if (con != null) con.close();
        } 
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
%>        
            </div>
        </div>
    </div>
   
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">mess_rules/ INSTRUCTIONS</h2> -->
                    <h3 id="mess_leave">LEAVE</h3>
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> -->
                    <%
                    	String phone = request.getParameter("phone");
                    	session.setAttribute("phone", phone);
                    %>
                       <form action="user_add_leave.jsp">
                    <h5>Date Selection</h5>
                        <input type="date" id="date" name="leave" min="" required>
                        <input type="submit" class="btn btn-primary green" value="Submit" >
                    </form>
                     </br>
                     <h5> LATEST LEAVES</h5>
                     <form >

<table border="2">
   <tr>
        <td>NO.</td>
        <td>NAME</td>
        <td>LEAVE DATE</td>
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
		 String query= "SELECT *FROM leave WHERE phone='"+phone+"'";
		//String query= "SELECT *FROM leave WHERE name='jk'";
        ResultSet rs=stmt.executeQuery(query);
        int num=1;
       while(rs.next())
       {
   %>		
           <tr>
           <td><%out.print(num++); %></td>
           <td><%out.print(rs.getString(1)); %></td>
           <td><%out.print(rs.getString(3)); %></td>
           </tr>
         
   <%
       }
   %>
   </table>
</form>`
                      <form action="user_leaves.jsp">
                        <input type="submit" class="btn btn-primary green" name="check leave" value="Check all Leaves" >
                    </form>
            </div>  
         </div>
    </div>
   
    <div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">mess_rules/ INSTRUCTIONS</h2> -->
                    <h3 id="payment_history">HISTORY</h3>
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> -->
                     <table border="2">
   <tr>
        <td>NAME</td>
        <td>DAYS</td>
        <td>AMOUNT</td>
         <td>DATE PAID</td>
   </tr>
   <%
    query= "SELECT *FROM payment WHERE phone='"+phone+"'";
	//String query= "SELECT *FROM leave WHERE name='jk'";
   rs=stmt.executeQuery(query);
   
  while(rs.next())
  {
%>		
      <tr>
      <td><%out.print(rs.getString(1)); %></td>
      <td><%out.print(rs.getString(3)); %></td>
      <td><%out.print(rs.getString(4)); %></td>
      <td><%out.print(rs.getString(5)); %></td>
      </tr>
    
<%
  }
%>
</table>
</br>
 <form action="user_all_payments.jsp">
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
            // Get the current date
             var today = new Date().toISOString().split('T')[0];
                
            // Set the minimum date of the input field to disable current and previous dates
            document.getElementById("date").setAttribute("min", today);
          </script>
    
    </body></html>