<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>data login</title>
</head>
<body>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.sql.ConnectionEvent" %>
<%  String Adminname = request.getParameter("txtadminname");
	String Password = request.getParameter("txtadminpassword");
	
	  Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizdata","root","root");
			Statement st=con.createStatement();
			String query= "SELECT * FROM admindata where adminname='"+Adminname+"' and password='"+Password+"'";
			
			ResultSet rs=st.executeQuery(query);
			int a=0;
			while(rs.next())
				a++;
			
			%>
			
		<% if(a>0){
			HttpSession logs = request.getSession();
			logs.setAttribute("LUN", Adminname);
			response.sendRedirect("quesinsert.jsp");
		}
		else{
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('False Credentials!!');");
			out.println("location='loginquiz.jsp';");
			out.println("</script>");

			
		}
		%>
</body>
</html>