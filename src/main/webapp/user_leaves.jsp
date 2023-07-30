<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER ALL LEAVES</title>
</head>
<body>
<div class="container pad_mar">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 block animatable moveUp text-center">
                <!-- <h2 class="title pad_mar move_up_2">RULES/ INSTRUCTIONS</h2> -->
                    <!-- <h4>TIME : 5PM TO 6PM EVERYDAY( For evening snacks)</h4>
                    <h4>TIME : 12AM TO 1:30AM During final exams only( For night canteen)</h4> -->
                     <h4 >ALL LEAVES</h4>
                   
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
   String phone= (String)session.getAttribute("phone");
   Connection con = null;
   try
   {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Jk@191997");
       
		Statement stmt=con.createStatement();
		 String query= "SELECT *FROM leave WHERE phone='"+phone+"'";
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
</body>
</html>