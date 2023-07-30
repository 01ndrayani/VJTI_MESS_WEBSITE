<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.itextpdf.text.Document" %>
<%@ page import="com.itextpdf.text.DocumentException" %>
<%@ page import="com.itextpdf.text.Font" %>
<%@ page import="com.itextpdf.text.Paragraph" %>
<%@ page import="com.itextpdf.text.pdf.BaseFont" %>
<%@ page import="com.itextpdf.text.pdf.PdfWriter" %>
<%@ page import="java.io.IOException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receipt</title>
<style>
  body {
    font-family: Arial, sans-serif;
  }
  .header {
    text-align: center;
    margin-bottom: 20px;
  }
  .receipt-content {
    margin-left: 40px;
    margin-right: 40px;
  }
  .item-label {
    font-weight: bold;
    margin-bottom: 5px;
  }
  .item-value {
    margin-bottom: 15px;
  }
  .total-label {
    font-weight: bold;
    margin-top: 10px;
  }
  .footer {
    text-align: center;
    font-size: 12px;
    margin-top: 40px;
  }
</style>
</head>
<body>
<script>alert("Payment Suceessful!");</script>
<%
//out.println("<h3 class='header'>Payment Successful!</h3>");
String name = session.getAttribute("name").toString();
String phone = session.getAttribute("phone").toString();
String numberDaysString = session.getAttribute("numberDays").toString();
String date = session.getAttribute("date").toString();

int numberOfDays = Integer.parseInt(numberDaysString);

double fixedPricePerDay = 98.0;
double totalAmount = fixedPricePerDay * numberOfDays;

// Simulate payment processing
// In a real-world application, you would implement actual payment processing here.

// Assuming the payment is successful, store payment details in the database.
// Replace the following JDBC connection details with your Oracle database information.
Connection con = null;
try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Jk@191997");

    // Insert payment details into the database
    String insertQuery = "INSERT INTO payment (name, phone, days, amount, date_paid) VALUES (?, ?, ?, ?, ?)";
    PreparedStatement pstmt = con.prepareStatement(insertQuery);
    pstmt.setString(1, name);
    pstmt.setString(2, phone);
    pstmt.setInt(3, numberOfDays);
    pstmt.setDouble(4, totalAmount);
    pstmt.setString(5, date);

    // Get the current date and time and set it in the database as the payment date
    pstmt.executeUpdate();

    pstmt.close();
    con.close();

} catch (Exception e) {
    e.printStackTrace();
    // Handle database connection or insertion errors here
}

// Generate the receipt in PDF format
String fileName = "Receipt_" + System.currentTimeMillis() + ".pdf";

try {
    Document document = new Document();
    PdfWriter pdfWriter = PdfWriter.getInstance(document, new FileOutputStream(fileName));
    document.open();

    // Add receipt content to the PDF
    Paragraph header = new Paragraph("VJTI GIRL'S MESS", new Font(Font.FontFamily.HELVETICA, 16, Font.BOLD));
    header.setAlignment(Paragraph.ALIGN_CENTER);
    document.add(header);

    // Add receipt details
    Paragraph receiptContent = new Paragraph();
    receiptContent.setAlignment(Paragraph.ALIGN_LEFT);
    receiptContent.setIndentationLeft(40f);
    receiptContent.setIndentationRight(40f);
    
    receiptContent.add(new Paragraph("Receipt Details:", new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD)));
    receiptContent.add(new Paragraph("Name: " + name));
    receiptContent.add(new Paragraph("Phone Number: " + phone));
    receiptContent.add(new Paragraph("Number of Days: " + numberOfDays));
    receiptContent.add(new Paragraph("Fixed Price Per Day (Rs.): " + fixedPricePerDay));
    receiptContent.add(new Paragraph("Total Amount (Rs.): " + totalAmount));

    receiptContent.add(new Paragraph("Date Paid: " + date));
    document.add(receiptContent);

    document.close();
    pdfWriter.close(); // Close the PdfWriter

    // Set the response headers to make the file downloadable
    response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
    response.setContentType("application/pdf");

    // Get the output stream to write the file to the response
    java.io.OutputStream outStream = response.getOutputStream();
    java.io.FileInputStream inStream = new java.io.FileInputStream(fileName);

    // Write the PDF file to the response
    byte[] buffer = new byte[4096];
    int bytesRead;
    while ((bytesRead = inStream.read(buffer)) != -1) {
        outStream.write(buffer, 0, bytesRead);
    }

    // Close streams
    inStream.close();
    outStream.flush();
    outStream.close();

} catch (DocumentException | IOException e) {
    e.printStackTrace();
}
%>
</body>
</html>
