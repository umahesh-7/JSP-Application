<%
String aid = (String)session.getAttribute("aid");
String pwd = (String)session.getAttribute("pwd");
if(aid==null || pwd==null)
{
    response.sendRedirect("asession.html");
}
%>
<html>
    <head>
        <title>Simple JSP Application</title>
    </head>
    <body bgcolor="white">
        <h2 align="center" style="size:10pt;color:red">Simple JSP Application</h2>
        <hr color="green"><hr color="green"><br>
        <a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
        <a href="viewusers.jsp">View Users</a>&nbsp;&nbsp;&nbsp;
        <a href="alogout.jsp">Logout</a>
        <br><br>
        <h3 align=right>Welcome&nbsp;&nbsp;<%=aid%></h3>
    </body>
</html>



