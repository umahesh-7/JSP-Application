<%
String fname = (String)session.getAttribute("fname");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(fname==null || email==null || pwd==null)
{
    response.sendRedirect("usession.html");
}
%>
<html>
    <head>
        <title>Simple JSP Application</title>
    </head>
    <body bgcolor="white">
        <h2 align="center" style="size:10pt;color:red">Simple JSP Application</h2>
        <hr color="green"><hr color="green"><br>
        <a href="userhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
        <a href="changepwd.jsp">Change Password</a>&nbsp;&nbsp;&nbsp;
        <a href="ulogout.jsp">Logout</a>
        <br><br>
        <h3 align=right>Welcome&nbsp;&nbsp;<%=fname%></h3>
    </body>
</html>



