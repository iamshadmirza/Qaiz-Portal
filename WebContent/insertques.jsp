<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
</head>
<body>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.sql.ConnectionEvent" %>
<%  
	String Question = request.getParameter("newques");
	String optionA = request.getParameter("newopta");
	String optionB = request.getParameter("newoptb");
	String optionC = request.getParameter("newoptc");
	String optionD = request.getParameter("newoptd");
	String Answer = request.getParameter("newans");
	
	
	    Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizdata","root","root");
		Statement st=con.createStatement();
		String query= "INSERT INTO quesans (question,optA,optB,optC,optD,answer) VALUES('"+Question+"','"+optionA+"','"+optionB+"','"+optionC+"','"+optionD+"','"+Answer+"')";
		int flag = st.executeUpdate(query);
		if(flag==1){
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Question inserted!');");
			out.println("location='quesinsert.jsp';");
			out.println("</script>");
			
		}
		else{
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Try again!');");
			out.println("location='quesinsert.jsp';");
			out.println("</script>");
			
		}
		%>
</body>
</html>