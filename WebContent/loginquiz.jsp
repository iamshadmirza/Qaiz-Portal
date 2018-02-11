<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login to Continue..</title>
<style type="text/css">
button{font-size:20px;padding: 14px 40px;border-radius: 4px;background-color:#0f4d8a;

    box-shadow: 0 8px 16px 0 rgba(255,255,255,0.2), 0 6px 20px 0 rgba(255,255,255,0.19);
}
#hl{color:#081929;position:relative;left:130px;font-family: Consolas;
	}
#hr{color:#081929;position:relative;left:200px; font-family: Consolas;
	}
#left{width:47%;float:left;height:500px;border-right:1px solid white;position:relative;top:80px}
#right{width:50%;float:left;height:500px;position:relative;top:80px}
#left form{padding-left:20%;}
#right form{padding-left:30%;}
body{background-color:#cdd8dc;}
</style>
</head>
<body>
<center><h1>QUIZ TIME</h1></center>
<div id="left">
<h1 id="hl">User Login </h1>
<form action="userlogin.jsp" method="post">
 
  <input type="text" name="txtusername" size="40" placeholder="USERNAME" required="">
  <br><br>
  
  <input type="password" name="txtuserpassword" size="40" placeholder="PASSWORD" required="">
  <br><br>
  <button type="submit" value="Submit">Login</button>
</form>
</div>
<div id="right">
<h1 id="hr">Admin Login</h1>
<form  action="adminlogin.jsp" method="post">
  <input type="text" name="txtadminname" size="40" placeholder="ADMINNAME" required="">
  <br><br>
  
  <input type="password" name="txtadminpassword" size="40" placeholder="PASSWORD" required="">
  <br><br>
  <button type="submit" value="Submit">Login</button>
</form>
</body>
</html>