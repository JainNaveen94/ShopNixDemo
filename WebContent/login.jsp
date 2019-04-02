<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Shop-Nix UserLogIn</title>

<style>
#a
{
	background-attachment:fixed;
	width:20%;
	height:37%;
}
#b
{
	font-family:"Lucida Calligraphy", serif;
	font-weight:bold;
	font-size:30px;
	font-variant:small-caps;
	color:black;
}

#loginimage
{
    margin-right:557px;
    margin-top:30px;
    list-style:none;
    width:245px;	
    text-decoration:none;
    color:orange;
    float:right;
}
.A
{
	margin-left:400px;
	margin-top: 120px;
}
.B
{
	margin-left:550px;
	margin-top:50px;
}
.C
{
	margin-left: 600px;
	margin-top: -150px;
}

input[type="text"]
{
	background-color:white;
	font-family:"Copperplate Gothic Light",serif;
    font-size:100%;
	color:black;
	width:200px;
	height:20px;
	border: double;
}
input[type="password"]
{
	background-color:white;
	font-family:Lucida Console;
    font-size:100%;
	color:black;
	width:200px;
	height:20px;
	border: double;
}
input[type="submit"] 
{
    background-color:white;
    font-family:"AR DELANEY",serif;
    font-size:150%;
    color:black;
    border:solid;
    border-radius:20px;
    margin-left:40px;
	width:30%;
}

footer.foot
{
	background-image:url(AdminImages/300.jpg);	
}
</style>
</head>

<body background="LogInImages/div1.png">
  		<a href=Index.jsp><img id="a" src="Register/shopnix.png"></a>
  		<div id="b">
		<marquee behavior="alternate" direction="left"> Welcome to Shop-Nix !</marquee>
		</div>
  		<a id="loginimage" href="Register.jsp"><img  src="LogInImages/reg.png"></a>
	<div class="A">
			<img src="LogInImages/login.jpg" width="auto" height="200px" />
	</div>
	<div class="C">
			<img src="LogInImages/logbut.png" width="250px" height="100px"/>
	</div>
	<div class="B">
			<form id="form" action="loginServlet" method="post">
			<table>
         	<tr><td> UserName</td><td><input type="text" name ="uname" required>*</td></tr>
         	<tr><td> password</td><td><input type="password" name ="pwd" required>*</td></tr>                      
			</table>
			<br />
         	<input type="submit"  value="LogIn" />  
         	<% if(request.getParameter("var")!=null)
					{
						out.println("<h2><font color='red'>"+request.getParameter("var"));
					}
			%>  
			</form>
			
			<br /><br /><br /><br /><br /><br /><br />
			
			
	</div>

<footer class="foot">
	<marquee behavior="alternate" direction="left"> Copyright &copy; 2016 Naveen ,Gurpreet &Jaspreet.
	Site Designed by <a href="Index.jsp">Shop-Nix</a>. All Rights Reserved.</marquee>
</footer>
   
</body>
</html>

