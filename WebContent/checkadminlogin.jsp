<%@ page import="java.sql.*" %>
<%

String aid = request.getParameter("aid");
String pwd = request.getParameter("pwd");

try
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ep", "mahe");  
	 System.out.println("Connection Established");
	  
	  PreparedStatement pstmt = con.prepareStatement("select * from admin where id=? and password=?");
	  pstmt.setString(1,aid);
	  pstmt.setString(2,pwd);
	  ResultSet rs = pstmt.executeQuery();
	
	  if(rs.next())
	  {
		 session.setAttribute("aid", aid);
		 session.setAttribute("pwd", pwd);
		 response.sendRedirect("adminhome.jsp");
	  }
	  else
	  {
		  %>
			<h3>Login Failed</h3><br>
	<a href="adminlogin.html">Try Again</a>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}



%>