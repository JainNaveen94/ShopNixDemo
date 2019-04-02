<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BoysSection</title>
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
    var image1 = new Image();
    image1.src = "boys/1.jpg";
	var image2 = new Image();
    image2.src = "boys/2.jpg";
	var image3 = new Image();
    image3.src = "boys/3.jpg";
	var image4 = new Image();
    image4.src = "boys/4.jpg";
	var image5 = new Image();
    image5.src = "boys/5.jpg";
	var image6 = new Image();
    image6.src = "boys/6.jpg";
	var image7 = new Image();
    image7.src = "boys/7.jpg";
	var image8 = new Image();
    image8.src = "boys/8.jpg";
	var image9 = new Image();
    image9.src = "boys/9.jpg";
	var image10 = new Image();
    image10.src = "boys/10.jpg";
	var image11 = new Image();
    image11.src = "boys/11.jpg";
	var image12 = new Image();
    image12.src = "boys/12.jpg";
	var image13 = new Image();
    image13.src = "boys/13.jpg";
	var image14 = new Image();
    image14.src = "boys/14.jpg";
	var image15 = new Image();
    image15.src = "boys/15.jpg";
	var image16 = new Image();
    image16.src = "boys/16.jpg";
	var image17 = new Image();
    image17.src = "boys/17.jpg";
	var image18 = new Image();
    image18.src = "boys/18.jpg";
	var image19 = new Image();
    image19.src = "boys/19.jpg";
	var image20 = new Image();
	image20.src = "boys/31.jpg";
	var image21 = new Image();
	image21.src = "boys/32.jpg";
</script>

<style>
header.main
{
	background-image:url(HomeImages/300.jpg);
	background-attachment:fixed;
	border-left-style:solid;
	border-right-style:solid;
	border-bottom-style:solid;
	border-top-style:solid;
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
	height:2978.5px;
}
.main2
{
	margin-left:183px;
	margin-top:-3002.5px;
	background-color:#0066FF;
	border-bottom-style:solid;
	border-right-style:solid;
}

.B{margin-top:30px;padding:-5px;}
.C{margin-left:175px;margin-top:-950px;width:971px;}
.D{margin-left:10px;}
.A{margin-top:-80px;float:right;margin-right:40px;}
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
#g
{
	background-color:#999999;
	border-style:inset;
	border-color:#000000;
	margin-right:147px;
	padding:10px;	
}
#h
{
	width:300px;
	height:300px;	
}



#a1
{
	font-family:AR DARLING,serif;
	font-size:36px;
	color:#FF0000;
	margin-left:-140px;	
}
#a2
{
	border-style:solid;
}


</style>

<body bgcolor="#FFFFFF">
<header class="main">
<a href="Index.jsp"><img id="a" src="HomeImages/logo.png"></a>
<marquee id="b" behavior="slide" align="middle" direction="left"> Welcome to Shop-Nix !</marquee>
<div class="A"><ul>
		<li id="f"><a href="LogoutServlet"><button>LogOut</button></a></li>
	</ul>
<div id="session">
<%
String uname=(String)session.getAttribute(("UNAME"));
out.println("<h4>"+uname+"</h4>");
%>
</div>
</div>
<div class="B">
<ul>
<li id="c"><a href="UserHome.jsp"><font color="#000000" size="+2">Home</a></li>
<li id="c"><a href="Boy.jsp"><font color="#000000" size="+2">ForBoys</a></li>
<li id="c"><a href="Girl.jsp"><font color="#000000" size="+2">ForGirls</a></li>
<li id="c"><a href="Accessory.jsp"><font color="#000000" size="+2">Accessories</a></li>
<li id="c"><a href="About.jsp"><font color="#000000" size="+2">About</a></li>
</font>
</ul>
</div>
</header>

<div class="main1">
	<br /><br />
         	<ul id="d">
            	<li id="e"><a href="TShirt.jsp">T-Shirts</a></li>
                <br /><br />
                <li id="e"><a href="Shirt.jsp">Shirts</a></li>
                <br /><br />
                <li id="e"><a href="Jacket.jsp">Jackets</a></li>
                <br /><br />
                <li id="e"><a href="Trouser.jsp">Trousers</a></li>
                <br /><br />
                <li id="e"><a href="Jeans.jsp">Jeans</a></li>
                <br /><br />
                <li id="e"><a href="Pajama.Jsp">Pajamas</a></li>
                <br /><br />
                <li id="e"><a href="Track.jsp">Track Suits</a></li>
                <br /><br />
                <li id="e"><a href="Formal.jsp">Formal Suits</a></li>
                <br /><br />
            </ul>
	
</div>

<div class="main2">
	<div class="C">  
    	<h1 id="a1" align="center">New Arrivals & Design</h1>  
		<a href="Boy.jsp" ><p id="g"><img src="boys/1.jpg" width="800px" height="300px"  id="slide" /></p></a></figure>
    		 <script type="text/javascript">
				var step=1;
            	function slideit()
            		{
                		 document.getElementById("slide").src = eval("image"+step+".src");
                		if(step<21)
                    		step++;
               			else
                    		step=1;
                		setTimeout("slideit()",4000);
            		}
            	slideit();
   			</script>
 	</div>
 	
    <div class="D">
 	<table cellspacing="50">
    <tr><td id="a2"><img id="h" src="boys/1.jpg" /></td><td id="a2"><img id="h" src="boys/10.jpg" /></td><td id="a2"><img id="h" src="boys/8.jpg" /></td></tr>
    <tr><td id="a2"><img id="h" src="boys/2.jpg" /></td><td id="a2"><img id="h" src="boys/11.jpg" /></td><td id="a2"><img id="h" src="boys/17.jpg" /></td></tr>
    <tr><td id="a2"><img id="h" src="boys/3.jpg" /></td><td id="a2"><img id="h" src="boys/12.jpg" /></td><td id="a2"><img id="h" src="boys/9.jpg" /></td></tr>
    <tr><td id="a2"><img id="h" src="boys/4.jpg" /></td><td id="a2"><img id="h" src="boys/13.jpg" /></td><td id="a2"><img id="h" src="boys/22.jpg" /></td></tr>
    <tr><td id="a2"><img id="h" src="boys/5.jpg" /></td><td id="a2"><img id="h" src="boys/14.jpg" /></td><td id="a2"><img id="h" src="boys/19.jpg" /></td></tr>
    <tr><td id="a2"><img id="h" src="boys/6.jpg" /></td><td id="a2"><img id="h" src="boys/15.jpg" /></td><td id="a2"><img id="h" src="boys/23.jpg" /></td></tr>
    <tr><td id="a2"><img id="h" src="boys/7.jpg" /></td><td id="a2"><img id="h" src="boys/16.jpg" /></td><td id="a2"><img id="h" src="boys/18.jpg" /></td></tr>
    </table>
    </div>
</div>
</body>
</html>
