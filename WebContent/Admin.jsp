<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AdminLogIn</title>
<style>

section.main2
{
	margin-top:100px;
}
footer.foot
{
	background-image:url(AdminImages/300.jpg);
	
}
.A{margin-left:450px;}
.B{margin-left:550px;}



#a
{
	background-attachment:fixed;
	width:20%;
	height:20%;
}
#b
{
	font-family:"Lucida Calligraphy", serif;
	font-weight:bold;
	font-size:50px;
	font-variant:small-caps;
	color: #000000;
	margin-top:-75px;
	margin-left:370px;
	margin-right:250px;
}
#c
{
	display:inline;
	float:right;
	padding:5px;
}
#c button
{
	background-color:#FF6600;
	font-family:Arial, Helvetica, sans-serif;
	border-style:inset;
	border-radius:5px;
}

#d
{
	font-family:"Cooper Black", serif;
	display:inline;
	padding:15px;
	margin-left:10px;
}

#e
{
	width:200px;
	margin-top:60px;
}
input[type="submit"] 
{
    background-color:white;
    font-family:"AR DELANEY",serif;
    font-size:150%;
    color:black;
    width:100%;
    height:120%;
    border:solid;
    border-radius:20px;
    margin-left:40px;
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
</style>

<body background="AdminImages/sec.jpg">

<section class="main2">

<div class="A">
<img id="e" src="AdminImages/1.png" />
<img id="e" src="AdminImages/2.gif" />
</div>

<div class="B">
<form action="AdminLoginServlet" method="post" id="e">
<table>
<tr><td>UserName</td><td><input type="text" name="uname" required/></td></tr>
<tr><td>Password</td><td><input type="password" name="pwd"/></td></tr>
</table>
<br />
<input type="submit" value=LogIn>
</form>

<% 
if(request.getParameter("var")!= null)
{
	out.println("<h3>"+request.getParameter("var")+"</h3>");
}

%>

</div>
<br />
<br />
<br />
<br />
<br />
<br />
</section>
<br /><br />
<footer class="foot">
<marquee behavior="alternate" direction="left"> Copyright &copy; 2016 Naveen ,Gurpreet&Jaspreet.
Site Designed by <a href="Index.jsp">Shop-Nix</a>. All Rights Reserved.</marquee>
</footer>
</body>

</html>
