<%@page import="com.my.dao.CrmDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>

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
#tab{ margin-top: -610px;margin-left: 800px;}
table{ border-style: groove;
    border-color: navy;
    border-top-right-radius:10px;
    border-top-left-radius:10px;
    border-width: 7px;
    text-align: center;    }

#logo{ width:300px; height:60px;  margin-left:810px;margin-top:-120px;margin-left:13px}

#image{background-repeat:no-repeat;height:200px;}


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

#x
{
width:200px;
margin-left:0px;
}

#y
{
width:200px;
margin-left:1000px;
}

#z
{
margin-top: -190px;
}


footer.foot
{
	background-image:url(AdminImages/300.jpg);
	margin-top: 50px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>
<body id="body" background="userdetail/12.jpg">
<div id="header">
 <img id="image" src="userdetail/bill_payment_header.png"height=""width="100%">
 <img id="logo" src="userdetail/shopnix.png" >
</div>
<img id="y" src="userdetail/logo3.png" >
<img id="x" src="userdetail/logo2.gif" >
<center><div id="z">
<h1>  PRODUCT-DETAIL:</h1>
<%     out.println("<table border=1 width=500 height=-100>");


String itemid=(String)session.getAttribute("itemid");
out.println("<tr><td><h1>itemid:</td><td><h1>"+itemid+"</h1></td></tr></h1>");
String itemname=(String)session.getAttribute("itemname");
out.println("<tr><td><h1>itemname:</td><td>"+itemname+"</td></tr></h1>");

String category=(String)session.getAttribute("category");
out.println("<tr><td><h1>category:</td><td>"+category+"</td></tr></h1>");
String price=(String)session.getAttribute("price");
out.println("<tr><td><h1>price:</td><td>"+price+"</td></tr></h1>");


String qty=(String)session.getAttribute(("quantity"));
out.println("<tr><td><h1>quantity:</td><td>"+qty+"</td></tr></h1>");


String bill=(String)session.getAttribute(("Amount"));
	out.println("<tr><td><h1>Final Amount Is :</td><td>"+bill+"</td></tr></h1>");
		
	
		
		out.println("</table></h1>");
		
 String uname=(String)session.getAttribute("UNAME");


String sql="select * from REGISTER where uname='"+uname+"'";
 ResultSet rs=CrmDao.FetchUserData(sql);
 out.println("<table  border= 1 width=500><h1> SHIPPING-ADDRESS</h1>");
    while (rs.next())
    	
    {
    	out.println("<tr><td><h1>uname:</h1></td><td><h1>"+rs.getString(4)+"</td></h1></tr>");
    	out.println("<tr><td><h1>FirstName:</h1></td><td><h1>"+rs.getString(2)+"</td></tr>");
    	out.println("<tr><td><h1>LastName:</h1></td><td><h1>"+rs.getString(3)+"</td></tr>");
    	out.println("<tr><td><h1>Email:</h1></td><td><h1>"+rs.getString(7)+"</td></h1></tr>");
    	out.println("<tr><td><h1>contact:</h1></td><td><h1>"+rs.getString(8)+"</td></tr>");
    	out.println("<tr><td><h1>Address:</h1></td><td><h1>"+rs.getString(9)+"</td></tr>");
    	
    }
    out.println("</table>");
    %>

        <h1 style="font:normal;font-size:large;font-family:serif;text-align: left;"> Terms And Conditions:</h1>
        <h1 style="font-size:medium;font-family:serif;font: lighter;text-align: left;">*please print out this bill at the time of delivery you can show this bill to delivery man otherwise you cannot recieve your order</h1><br>
        <h1 style="font-family: cursive;font-style: normal;color: blue;font-size: x-large;"><center>Thank-you For Visiting Shop-nix</center></h1>
		<center><input id="submit" type="submit" value="print" onClick="window.print()"/></center>
</div>
<footer class="foot">
	<marquee behavior="alternate" direction="left"> Copyright &copy; 2016 Naveen,Gurpreet&Jaspreet.
	Site Designed by <a href="Index.jsp">Shop-Nix</a>. All Rights Reserved.</marquee>
</footer>

        
</body>
</html>