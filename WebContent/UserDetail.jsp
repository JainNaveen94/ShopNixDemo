<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.my.dao.CrmDao"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserDetials</title>

<style>
.header
{
    width:99.5%;
    height:130px;
    background-image: url("UserHome/header.jpg");
    border-style: groove;
    border-color: black;
    border-top-right-radius:10px;
    border-top-left-radius:10px;
    border-width: 7px;
}
.nav
{ 
  width:18%;
  height:700px;
  background-image: url("UserHome/header.jpg");
  border-style: groove;
  border-color: black;
  border-width: 7px;
  line-height:30px;
    float:left;
    padding:5px;
    text-decoration:none;
 }
 .nav a
 {
    color:purple;
   line-height:70px;
   font-size:30px;
    padding:5px;
    text-decoration:none;
 }
.nav #nav 
 {
 color:red;
  text-decoration:none;
  line-height:70px;
   font-size:30px;
  
 }

.section
{
  	height:714px;
  	width: 80.1%;
  	background-image:url("Update Images/1.jpg");  
  	margin-left: 19.6%;
  	margin-top:0px;
  	margin-right:30px;
  	border-style: solid;
    border-color: black;
    border-top-right-radius:5px;
    border-top-left-radius:5px;
    border-width: 5px;
}
.voda
{
	margin-left:320px;
	margin-top:-400px;
}
#session
{
  float: right;
  font-size: 30px;
  border-color: purple;
  color:red;
  margin-right:10px;
  margin-top:-20px;
  
}
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
	font-size:50px;
	font-variant:small-caps;
	color:black;
	margin-top:-43px;
	margin-left:370px;
}
#d li 
{
	font-family:"Comic Sans MS", serif;
	font-size:18px;
	display:inline;
	padding:15px;
	margin-left:10px;
	text-decoration:none;
}
#d li a
{	
	text-decoration:none;
    color:black;
    font-size:20px;
}
input[type="submit"] 
{
    background-color:red;
    font-family:Cooper Black;
    font-size:150%;
    color:white;
    width:250px;
    height:150%;
    border:solid;
    border-radius:40px;
}
input[type="text"]
{
	background-color:white;
	font-family:Lucida Console;
    font-size:100%;
	color:black;
	width:200px;
	height:20px;
	border: double;
}
input[type="email"]
{
	background-color:white;
	font-family:Lucida Console;
    font-size:100%;
	color:blue;
	width:200px;
	height:20px;
	border: double;
}
#x
{
	width:400px;
}
#z
{
	font-family:"Copperplate Gothic Light", serif;
	color:#FFFFFF;
	font-size:22px;
	font-weight:bold;	
}
footer.foot
{
	background-image:url(AdminImages/300.jpg);
	margin-top: 50px;
}
</style>


</head>
<body background="LogInImages/div1.png">

<div class="header">
  		<a href=Index.jsp><img src="HomeImages/logo.png" width="26%" height="56% " id="a" align="middle"></a>
		<marquee id="b" behavior="slide" align="middle" direction="left"> Welcome to Shop-Nix !</marquee>
		<div id="session">
		<%
		String uname=(String )session.getAttribute(("UNAME"));
		out.println("<h4>Welcome  "+uname+"</h4>");
		%>
		</div>
		 
        <ul id="d">
       
			<li><a href="Boy.jsp">ForBoys</a></li>
			<li><a href="Girl.jsp">ForGirls</a></li>
			<li><a href="Accessory.jsp">Accessories</a></li>
			<li><a href="About.jsp">About</a></li>
		</ul>
  		
</div>
      <div  class ="nav" align="center">
            <a href="UserHome.jsp" >Home</a><br>
              <a href="ViewCart.jsp" >ViewCart</a><br>
              <a href="CancelOrder.jsp" >CancelOrder</a><br>
                <a href="UpdateOrder.jsp" >UpdateOrder</a><br>
                  <a href="OrderStatus.jsp" >OrderStatus</a><br><br><br><br><br><br><br>
                   
                    <a id="nav" href="Update.jsp" >UpdateAccount</a><br>
                      <a id="nav" href="LogoutServlet" >Log0ut</a> <br>
       </div>
<div class= "section">
<center>
<br><br>
<img src="Update Images/12.png" id="x">
<br><br><br><br>
</center>
<%
try
{
	String sql="select * from REGISTER where uname='"+uname+"'";
	
	ResultSet rs=CrmDao.FetchUserData(sql);
	out.println("<center>");
	out.println("<table>");
	while(rs.next())
	{
		out.println("<tr><td id='z'>FirstName</td><td><input type='text' name='fname' value='"+rs.getString(2)+"'></td></tr>");
		out.println("<tr><td id='z'>LastName</td><td><input type='text' name='lname' value='"+rs.getString(3)+"'></td></tr>");
		out.println("<tr><td id='z'>UserName</td><td><input type='text' name='uname' value='"+rs.getString(4)+"'></td></tr>");
		out.println("<tr><td id='z'>EmailAddress</td><td><input type='email' name='email' value='"+rs.getString(7)+"'></td></tr>");
		out.println("<tr><td id='z'>Contact</td><td><input type='text' name='contact' value='"+rs.getString(8)+"'></td></tr>");
		out.println("<tr><td id='z'>Address</td><td><input type='text' name='address' value='"+rs.getString(9)+"'></td></tr>");
		out.println("<tr><td id='z'>State</td><td><input type='text' name='state' value='"+rs.getString(11)+"'></td></tr>");
		
	}
	out.println("</table>");
	out.println("</center>");
}
catch(Exception e)
{
	e.printStackTrace();
}
 %>
 <br><br>

 <center>
<form action='PaymentMode.jsp'>
<input type="submit" value='Next'>
</form>
</center>
</div>

<div class="voda">
<img alt="logo" src="Update Images/2.png" width="400px">
</div>


<footer class="foot">
	<marquee behavior="alternate" direction="left"> Copyright &copy; 2016 Naveen,Gurpreet&Jaspreet.
	Site Designed by <a href="Index.jsp">Shop-Nix</a>. All Rights Reserved.</marquee>
</footer>   


</body>
</html>