<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
    <%@ page import="com.my.dao.CrmDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
type="text/javascript" language="javascript">    
javascript:window.history.forward(1);
</script>

<%  
response.setHeader("Pragma","no-cache");  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Expires","0");  
response.setDateHeader("Expires",-1);  
%>

<script type="text/javascript">
	var image20 = new Image();
    image20.src = "p/28.jpg";
    var image21 = new Image();
    image21.src = "p/24.jpg";
	var image22 = new Image();
    image22.src = "p/29.jpg";
	var image23 = new Image();
    image23.src = "p/23.jpg";
	var image24 = new Image();
    image24.src = "p/30.jpg";
	var image25 = new Image();
    image25.src = "p/26.jpg";
	var image26 = new Image();
    image26.src = "p/31.jpg";
	var image27 = new Image();
    image27.src = "p/27.jpg";
	var image28 = new Image();
    image28.src = "p/32.jpg";
	
</script>

<style>
.header
{
    width:100%;
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
  height:720px;
  width: 80.4%;
  background-color:blue;  
  margin-left: 19.8%;
  margin-top:-6px;
  margin-right:30px;
  border-style: solid;
    border-color: black;
    border-top-right-radius:5px;
    border-top-left-radius:5px;
    border-width: 5px;
}
 

.section #slide2
{
margin-left:190px;
margin-top:15px;
 border-style: groove;
    border-color: pink;
    border-top-right-radius:10px;
    border-top-left-radius:10px;
    border-width: 7px;
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
footer.foot
{
	background-image:url(AdminImages/300.jpg);	
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="LogInImages/div1.png">
<div class="header">
  		<a href=http://localhost:8080/Development/Index.jsp><img src="UserHome/shopnix.png" width="26%" height="56% " id="a" align="middle"></a>
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
                   
                    <a id="nav"href="Update.jsp" >UpdateAccount</a><br>
                      <a id="nav"href="LogoutServlet" >Log0ut</a> <br>
       </div>
           <div class= "section">
           
          <a href="Index.jsp" ><p><img src="p/20.jpg" width="700px" height="450px"  id="slide2"  align="middle"/></p></a>
     <script type="text/javascript">
	var step2=20;
            function slideit2()
            {
                
                document.getElementById("slide2").src = eval("image"+step2+".src");
                if(step2<28)
                    step2++;
                else
                    step2=20;
                setTimeout("slideit2()",5000);
            }
            slideit2();
    </script>
       </div>
   
<footer class="foot">
	<marquee behavior="alternate" direction="left"> Copyright &copy; 2016 Naveen,Gurpreet&Jaspreet.
	Site Designed by <a href="Index.jsp">Shop-Nix</a>. All Rights Reserved.</marquee>
</footer>        

</body>
</html>
          
     