<%@ page import="java.sql.*" %>
<%
String aid = (String)session.getAttribute("aid");
String pwd = (String)session.getAttribute("pwd");
if(aid==null || pwd==null)
{
    response.sendRedirect("asession.html");
}
%>
<%
String id = request.getParameter("id");
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ep", "mahe");  
System.out.println("Connection Established");
 
 PreparedStatement pstmt = con.prepareStatement("delete from userreg where id=?");
 pstmt.setString(1,id);
 pstmt.executeUpdate();
 response.sendRedirect("viewusers.jsp");

%>