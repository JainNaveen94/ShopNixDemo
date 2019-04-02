<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShopNix-Registration</title>
<style>
#header 
{
    width:100%;
    height:130px;
    background-image: url("Register/header.jpg");
    border-style: groove;
    border-color: black;
    border-top-right-radius:10px;
     border-top-left-radius:10px;
     border-width: 7px;
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
{	text-decoration:none;
         color:black;
       font-size:20px;
}
#loginimage li a
{	
     text-decoration:none;
         color:orange;
       font-size:+2
}

#loginimage 
{
    list-style:none;
    width:250px;	
    margin-top:-52px;
    text-decoration:none;
    color:orange;
    float:right;
}
#section
{
    background-image:url(Register/wallpapers.jpg) ;
    background-size: 1900px 700px;
}
#registerimage
{
	margin-top: -40px;
}
table
{
   color:NAVY;
   font-size:30px;
}
h1,h2
{
	color:NAVY;
}
input[type="submit"]
{
	background-color:orange;
	font-family:Arial, Helvetica, sans-serif;
	font-size:25px;
	color:navy;
	border-style:groove;
	border-radius:20px;
	width:150px; 
	height:40px;
}
footer.foot
{
	background-image:url(AdminImages/300.jpg);	
}	
</style>

</head>

<body>

<div id ="header">
<a href="Index.jsp"><img id="a" src="Register/shopnix.png"></a>
<marquee id="b" behavior="slide" align="middle" direction="left"> Welcome to Shop-Nix !</marquee>
      
<ul id="d">
	<li><a href="#">ForBoys</a></li>
	<li><a href="#">ForGirls</a></li>
	<li><a href="#">ForKids</a></li>
	<li><a href="#">About</a></li>
	     ${msg}
</ul>
  
<a id="loginimage" href="login.jsp"><img  src="Register/login-button.png"></a>
</div>

<div id ="section" ><br>
<br><br>
<center>
<img id="registerimage" src="Register/reg.jpeg" alt="register" width="330" height="100" >

<form action="RegisterServlet" method="post" >
<table>
		<tr><td> FirstName</td><td><input type="text" name ="fname" placeholder="raj" required />*</td></tr>
        <tr><td> LastName</td><td><input type="Text" name ="lname" placeholder="kashyap" /required>*</td></tr>
  		<tr><td> UserName</td><td><input type="text" name ="uname" placeholder="eg:mr.rk kashyap" required />*</td></tr>
        <tr><td> Password</td><td><input type="password" name ="pwd" placeholder="eg:raj123" /required>*</td></tr>
        <tr><td> ConfirmPassword</td><td><input type="password" name ="cpwd" placeholder="eg:raj123"/required>*</td></tr>
        <tr><td> Email</td><td><input type="email" name ="email" placeholder="eg:raj_kashyap@hotmail.com"/required>*</td></tr>
        <tr><td> Contact</td><td><input type="text" name ="contact" placeholder="eg:9999744613"/required>*</td></tr>
        <tr><td> Address</td><td><textarea rows="4" cols="15" name="address" placeholder="eg:md-12 pitampura"required></textarea> *</td></tr>
        <tr><td>DOB </td><td><input type="date" name ="date"placeholder="eg:21-11-1970" /></td></tr>
		<tr><td> State</td>
			<td><select name = "state" required >
					<option value="1"> ANDAMAN AND NICOBAR ISLANDS</option><option value="2"> ANDHRA PRADESH</option><option value="3"> ARUNACHAL PRADESH</option>
					<option value="4"> ASSAM</option><option value="5"> BIHAR</option>
					<option value="34"> CHANDIGARH</option><option value="6"> CHHATTISGARH</option><option value="35"> DADRA AND NAGAR HAVELI</option>
					<option value="7"> DAMAN AND DIU</option><option value="8"> DELHI</option><option value="9"> GOA</option><option value="10"> GUJARAT</option>
					<option value="11"> HARYANA</option><option value="12"> HIMACHAL PRADESH</option><option value="13"> JAMMU AND KASHMIR</option>
					<option value="14"> JHARKHAND</option><option value="15"> KARNATAKA</option><option value="16"> KERALA</option><option value="36"> LAKSHADWEEP</option>
					<option value="17"> MADHYA PRADESH</option><option value="18"> MAHARASHTRA</option><option value="19"> MANIPUR</option><option value="20"> MEGHALAYA</option>
					<option value="21"> MIZORAM</option><option value="22"> NAGALAND</option><option value="23"> ODISHA</option><option value="24"> PUDUCHERRY</option>
					<option value="25"> PUNJAB</option><option value="26"> RAJASTHAN</option><option value="27"> SIKKIM</option><option value="28"> TAMIL NADU</option>
					<option value="37"> TELANGANA</option><option value="29"> TRIPURA</option><option value="31"> UTTARAKHAND</option><option value="30"> UTTAR PRADESH</option>
					<option value="32"> WEST BENGAL</option>
					<option value="33">other state  </option>
					</select> *</td>
		</tr>
    	<tr ><td> Gender </td>
    			<td>
    				<input type="radio" name ="gender" value="Male" /> <font face="cooper black" color="black">Male</font>
                    <input type="radio" name ="gender" value="Female" /><font face="cooper black" color="black">Female </font>
                </td>
        </tr>                
</table>
       <input type="submit"  value="Register"  />  
			</form>
        
</form>
</center>
</div>

<footer class="foot">
<marquee behavior="alternate" direction="left"> Copyright &copy; 2016 Naveen ,Gurpreet&Jaspreet.
Site Designed by <a href="Index.jsp">Shop-Nix</a>. All Rights Reserved.</marquee>
</footer>

</body>
</html>


