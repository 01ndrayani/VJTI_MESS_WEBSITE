<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>COLLECT MENU</title>
</head>
<body>
					<%@ page import="java.sql.*" %>
                    <%@ page import="java.lang.*" %>
	<%
		String breakfast= request.getParameter("breakfast");
		String lunch = request.getParameter("lunch");
		String dinner= request.getParameter("dinner");
		String menu_date = request.getParameter("menu_date");
	 	Connection con = null;
     	PreparedStatement ps = null;
     	
     	ResultSet rs = null;
		try{
          Class.forName("oracle.jdbc.driver.OracleDriver");
          con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Jk@191997");
        
        // Prepare the SQL statement for checking user data into the "use" table
           // String sql = "SELECT name FROM use WHERE phone = ?" ;
          //  ps = con.prepareStatement(sql);
        	//	ps.setString(1, phone);
          // rs = ps.executeQuery();
          //  rs.next();
          //  String name= rs.getString(1);
            
            
         // Prepare the SQL statement for inserting user data into the "leave" table
           String sql = "INSERT INTO menu (breakfast, lunch, dinner, menu_date) VALUES (?, ?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, breakfast);
            ps.setString(2, lunch);
            ps.setString(3, dinner);
            ps.setString(4, menu_date);
            // Execute the SQL statement
            ps.executeUpdate();
            out.println("<h2>Menu Submitted!</h2>");

		}
		catch (ClassNotFoundException | SQLException e) {
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
            
		
    %>

</body>
</html>