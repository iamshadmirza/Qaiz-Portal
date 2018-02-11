<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Quiz</title>
<%session.setMaxInactiveInterval(10*10);%>
<script>
<!--

<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "10*10";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );

}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
}
}
//-->
</script>

<style type="text/css">
button{font-size:20px;padding: 14px 40px;border-radius: 4px;background-color:#0f4d8a;

    box-shadow: 0 8px 16px 0 rgba(255,255,255,0.2), 0 6px 20px 0 rgba(255,255,255,0.19);
}
h1{color:#081929;position:relative;font-family: Consolas;}
body{background-color:#cdd8dc;}
</style>
</head>
<body>
<%
	if(session.getAttribute("LUN")==null){
		response.sendRedirect("loginquiz.jsp");
	}
%>
	<center><h1>Input your answer</h1></center>
		<form action="<%=request.getRequestURL()%>" name="forma">
		Seconds remaining: <input type="text" name="clock" size="9" value="<%=clock%>" > for your submission.<br><hr>
		</form>
		<script>
		<!--
		timer();
		//-->
		</script>
<form action="quizcheck" method="post">
<table>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="javax.sql.ConnectionEvent" %>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizdata","root","root");
		Statement st=con.createStatement();
		String query= "select * from quesans";
		ResultSet rs=st.executeQuery(query);
	%>
	    <%int size=0; %>
	    <%while(rs.next()){ 
	    	
	    %>
		<tr>
			<th><%=rs.getString(1)%>.</th>
			<th colspan="4"><%=rs.getString(2) %></th>
		</tr>
		<tr>
			<th></th>
			<th><input type="radio" value="A" name="ques<%=rs.getString(1)%>"><%=rs.getString(3) %></th>
			<th><input type="radio" value="B" name="ques<%=rs.getString(1)%>"><%=rs.getString(4) %></th>
			<th><input type="radio" value="C" name="ques<%=rs.getString(1)%>"><%=rs.getString(5) %></th>
			<th><input type="radio" value="D" name="ques<%=rs.getString(1)%>"><%=rs.getString(6) %></th>
		</tr>
		<%size=Integer.parseInt(rs.getString(1));%>
		<tr colspan="5"></tr>
		<%}%>
</table>
	<% session.setAttribute("Size",size);%>
	<input type="submit" value="submit">
	
</form>
</body>
</html>