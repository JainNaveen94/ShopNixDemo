
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{background-repeat:no-repeat;background-position: 100%;
}
#header
{width:100%;
height:200px;
margin-top:-25px; 
color:navy; }
  
 #section
 {color:navy;
 margin-top:70px;}
 
 input[type="submit"]
{
	background-color:navy;
	font-family:Arial, Helvetica, sans-serif;
	font-size:25px;
	color:yellow;
	border-style:groove;
	border-radius:20px;
	width:150px; 
	height:40px;
}
#girlimage
{margin-top:-410px;margin-left:480px;}
#girlsimage
{margin-top:
-565px;float:left;margin-left:-100px;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyCart</title>
</head>
<body bgcolor="orange" >
<div id ="header">
<center><h1  > CART-DETAIL</h1>

<a href="AddToCart.jsp"><img id="1" src="AddToCart/online-shopping-cart-icon.png"> </a> 
</center>
</div>

<div id="section">

<center>
<table><tr><td>
   <% 

String itemname=request.getParameter("itemname");
out.println("<h2>ItemName :"+itemname+"</h2>");

String itemid=request.getParameter("itemid");
out.println("<h2>ItemId :"+itemid+"</h2>");

String price=request.getParameter("price");
out.println("<h2>Price :"+price+"</h2>");

String category=request.getParameter("category");
out.println("<h2>Category :"+category+"</h2>");

session.setAttribute("price", price);
session.setAttribute("itemid", itemid);
session.setAttribute("category",category);
session.setAttribute("itemname", itemname);

 
try{
%>
<form action='AddToCartServ' method='post'>

<h2>Quantity :<input type='text' name='qty' color='red' required>*</input></h2>
<br><br>
<input type="submit" value='NEXT' ></center>
</td></tr></table>
 
		<%-- <%-- <%
		String bill=(String)session.getAttribute(("Amount"));
	out.println("<h4>Final Amount Is :"+bill+"</h4>");
		%> --%>


<!-- //<form action='UserDetail.jsp'>
//<input type="submit" value='Next'>
//</form> -->
 
 <% }catch(Exception e)
     {
	 System.out.println(e);
	 }%>
	 </div>
     
</form>
 <img id="girlimage" src="AddToCart/credit_serv.png"height="400px"width="30%">
 <img id="girlsimage" src="AddToCart/girl.png"height="600px"width="40%">
</body>
</html>