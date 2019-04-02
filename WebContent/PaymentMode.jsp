<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PaymentMode</title>

<style>
header.main
{
background-image:url(HomeImages/300.jpg);
background-attachment:fixed;
border-style:solid;
}
.main1
{
background-image:url(HomeImages/300.jpg);
border-left-style:solid;
border-right-style:solid;
border-bottom-style:solid;
border-color:#000000;
margin-right:1150px;
margin-top:-3px;
height:600px;
width:230px;
}
.main2
{
width:1096px;
height:594px;
background-color:#ffffcc;
margin-left:236px;
margin-top:-600px;
border-style:solid;
}
.A{margin-top:-80px;float:right;margin-right:40px;}
.B{margin-top:100px;margin-left:300px;}



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
color:#000000;
margin-top:-75px;
margin-left:370px;
margin-right:250px;
}
#c
{
font-family:"Cooper Black", serif;
display:inline;
padding:15px;
margin-left:10px;
}
#d
{
list-style:none; 
}
#e
{
font-family:"Cooper Black", serif;
font-weight:bold;
font-variant:small-caps;
font-size:20px;
}
a
{
text-decoration:none; 
color:#000000;
}
#f
{
list-style:none;
}
#f button
{
background-color:#FFFFFF;
font-family:"AR DELANEY",serif;
border-style:inset;
border-radius:20px;
border-color:#000000;
width:150px;
height:40px;
}
h1
{
font-family:"Times New Roman", Times, serif;
color:#CC0033;
}
input[type=text]
{
border-style:inset;
border-color:#000000;
font-family:"Copperplate Gothic Light",serif;
font-weight:bolder;
text-align:center;
width:200px;
height:25px;
}
input[type=submit]
{
border-style:groove;
background-color:#663399;
border-color:#000000;
border-radius:10px;
width:200px;
height:35px;
font-family:"MS Serif", "New York", serif;
font-size:26px;
color:#00FF00;
margin-left:80px;
}
footer.foot
{
background-image:url(AdminImages/300.jpg); 
}
#x
{
width:300px;
}
#y
{
width:200px;
}


</style>

<body background="LogInImages/div1.png">
<header class="main">
<a href="Index.jsp"><img id="a" src="HomeImages/logo.png"></a>
<marquee id="b" behavior="slide" align="middle" direction="left"> Welcome to Shop-Nix !</marquee>
<div class="A"><ul>
<li id="f"><a href="Index.jsp"><button>LogOut</button></a></li>
</ul></div>
</header>

<div class="main1">
<br /><br />
<ul id="d">
<li id="e"><a href="Cod.jsp">Cash-On-Dilvery</a></li>
<br /><br />
<li id="e"><a href="https://www.mobikwik.com/loginForm.do">MobikWik</a></li>
<br /><br />
<li id="e"><a href="https://paytm.com/paytmwallet">Paytm</a></li>
<br /><br />
<li id="e"><a href="https://www.payumoney.com">PayUMoney</a></li>
<br /><br />
<li id="e"><a href="NetBanking.jsp">Net-Banking</a></li>
<br /><br />
<li id="e"><a href="CreditCard.jsp">Credit-Card</a></li>
<br /><br />
<li id="e"><a href="DebitCard.jsp">Debit-Card</a></li>
<br /><br />
<li id="e"><a href="CreditEMI.jsp">Credit-Card(EMI)</a></li>
<br /><br />
<li id="e"><a href="EVoucherJsp">E-Gift Voucher</a></li>
<br /><br />

</ul>

</div>
<div class="main2">
<div class="B">
<img src="payment/logo0.png" id="x">
<img src="payment/logo1.png" id="y">
<form action="CheckAreaServlet" method="get">
<h1> Pin-Code : <input type="text" name="Pincode" /></h1>
<h1><input type="submit" value="Check" /></h1>

			<% if(request.getParameter("var")!=null)
					{
						out.println("<h2><font color='red'>"+request.getParameter("var"));
					}
			%>  

</form>

<%

out.println("<form action='FinalDetailPage.jsp' method='post'>");
	out.println("<h1><input type='submit' value='Place Your Order'/></h1>");
out.println("</form>");
%>
</div>
</div>
<footer class="foot">
<marquee behavior="alternate" direction="left"> Copyright &copy; 2016 Naveen,Gurpreet&Jaspreet.
Site Designed by <a href="Index.jsp">Shop-Nix</a>. All Rights Reserved.</marquee>
</footer>
</body>
</html>


