<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Question Insert</title>
<%session.setMaxInactiveInterval(10*60);%>
	<style type="text/css">
	button{font-size:20px;padding: 14px 40px;border-radius: 4px;background-color:#0f4d8a;
	
	    box-shadow: 0 8px 16px 0 rgba(255,255,255,0.2), 0 6px 20px 0 rgba(255,255,255,0.19);
	}
	hl{color:#081929;position:relative;font-family: Consolas;}
	body{background-color:#cdd8dc;text-align:center;}
	</style>
</head>

<body>
<%
	if(session.getAttribute("LUN")==null){
		response.sendRedirect("loginquiz.jsp");
	}
%>
<center><h1>Insert New Questions</h1></center>
<form action="insertques.jsp" method="post">
 
	  <input type="text" name="newques" size="100" placeholder="Question" required="">
	  <br><br>
  	  <input type="text" name="newopta" size="100" placeholder="Option A" required="">
	  <br><br>
	  <input type="text" name="newoptb" size="100" placeholder="Option B" required="">
	  <br><br>
	  <input type="text" name="newoptc" size="100" placeholder="Option C" required="">
	  <br><br>
	  <input type="text" name="newoptd" size="100" placeholder="Option D" required="">
	  <br><br>
	  <input type="text" name="newans" size="100" placeholder="Answer" required="">
	  <br><br>
  
  <button type="submit" value="Submit">Submit</button>
</form>
<hr>
<form action="quizfront.jsp" method="post">
<button type="submit" value="Submit">Done</button>
</form>
</body>
</html>