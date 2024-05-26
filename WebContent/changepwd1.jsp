<%@ page import="java.sql.*" %>
<%
String fname = (String)session.getAttribute("fname");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(fname==null || email==null || pwd==null)
{
    response.sendRedirect("usession.html");
}
%>
<%

String opwd = request.getParameter("opwd");
String npwd = request.getParameter("npwd");

try
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ep", "mahe");  
	 System.out.println("Connection Established");
	  
	  PreparedStatement pstmt = con.prepareStatement("select * from userreg where emailid=? and password=?");
	  pstmt.setString(1,email);
	  pstmt.setString(2,opwd);
	  ResultSet rs = pstmt.executeQuery();
	  if(rs.next())
	  {
		  PreparedStatement pstmt1 = con.prepareStatement("update userreg set password=? where emailid=?");
		  pstmt1.setString(1,npwd);
		  pstmt1.setString(2,email);
		  int i = pstmt1.executeUpdate();
		  if(i>0)
		  {
			  %>
				<h3>Password Updated Successfully</h3><br>
		<a href="userlogin.html">Login Again</a>
				<% 
		  }
		  else
		  {
			  %>
			<h3>Password has not been updated</h3><br>
	<a href="changepwd.jsp">Try Again</a>
				<%   
		  }
	  }
	  else
	  {
		  %>
			<h3>Current Password is incorrect</h3><br>
	<a href="changepwd.jsp">Try Again</a>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}



%>