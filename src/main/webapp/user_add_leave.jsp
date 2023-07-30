<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ICOLLECT LEAVE</title>
</head>
<body>
					<%@ page import="java.sql.*" %>
                    <%@ page import="java.lang.*" %>
	<%
		String leave = request.getParameter("leave");
		String phone= (String)session.getAttribute("phone");
	 	Connection con = null;
     	PreparedStatement ps = null;
     	PreparedStatement ps1 = null;
     	ResultSet rs = null;
		try{
          Class.forName("oracle.jdbc.driver.OracleDriver");
          con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Jk@191997");
        
        // Prepare the SQL statement for checking user data into the "use" table
            String sql = "SELECT name FROM use WHERE phone = ?" ;
            ps = con.prepareStatement(sql);
        		ps.setString(1, phone);
            
            
            rs = ps.executeQuery();
            rs.next();
            String name= rs.getString(1);
            
            
         // Prepare the SQL statement for inserting user data into the "leave" table
            sql = "INSERT INTO leave (name, phone, leave) VALUES (?, ?, ?)";
            ps1 = con.prepareStatement(sql);
            ps1.setString(1, name);
            ps1.setString(2, phone);
            ps1.setString(3, leave);

            // Execute the SQL statement
            ps1.executeUpdate();

            // Registration successful message
            out.println("<h2>Leave added!</h2>");

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