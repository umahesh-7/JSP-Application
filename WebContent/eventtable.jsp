<%@ page import="java.sql.*" %>

<%
String type = request.getParameter("type");
String date =(String) request.getParameter("date");
String slot = request.getParameter("time");
String place = request.getParameter("city");
int receiptnumber = (int)(Math.random() * 9999 + 1);
String uname =(String)session.getAttribute("uname");
System.out.println(uname);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "proj", "proj");  
	 System.out.println("Connection Established");

	 PreparedStatement ps = con.prepareStatement("select * from event where uname=? ");
	 ps.setString(1, uname);	 
	 ResultSet rs = ps.executeQuery();
	 
	 if(rs.next())
	 {
		 %>
			<h3>You have already registered for </h3><br>
			<%  
	 }
	 else
	 {
		 PreparedStatement pstmt = con.prepareStatement("insert into event values(?,?,?,?,?,?)");
		 
		 pstmt.setInt(1, receiptnumber);
		 pstmt.setString(2, uname);
		 pstmt.setString(3, type);
		 pstmt.setString(4, date);
		 pstmt.setString(5, slot);
		 pstmt.setString(6, place);	
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
			<h3>Registered Successfully for this event</h3><br>
	
			<% 
		 }
		 else
		 {
				%>
				<h3>User Registration UnSuccessful</h3><br>
				<% 
		 }
		
	 }
	 
	 
	 
	 
}
catch(Exception e)
{
	out.println(e);
}

%>

