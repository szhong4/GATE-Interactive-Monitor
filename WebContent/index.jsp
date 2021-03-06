<!DOCTYPE html>

<html>
<head>
<title>Gate Interactive Monitor Login</title>
<meta name="author" content="Shiqi Zhong">

<style>
html,body {
	height: 100%;
}

body {
	font: 12px 'Lucida Sans Unicode', 'Trebuchet MS', Arial, Helvetica;
	margin: 0;
	background-color: #668284;
	background-image: -webkit-linear-gradient(top, #ebeef2, #668284);
}

#login {
	background-color: #F4EBC3;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#F4EBC3),
		to(#eee));
	height: 240px;
	width: 400px;
	margin: -150px 0 0 -230px;
	padding: 30px;
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 0;
	border-radius: 3px;
	height: 240px;
	width: 400px;
	margin: -150px 0 0 -230px;
	padding: 30px;
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 0;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 0 0 2px rgba(0, 0, 0, 0.2), 0 1px 1px
		rgba(0, 0, 0, .2), 0 3px 0 #F4EBC3, 0 4px 0 rgba(0, 0, 0, .2), 0 6px 0
		#F4EBC3, 0 7px 0 rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 0 2px rgba(0, 0, 0, 0.2), 1px 1px 0 rgba(0, 0, 0, .1),
		3px 3px 0 rgba(255, 255, 255, 1), 4px 4px 0 rgba(0, 0, 0, .1), 6px 6px
		0 rgba(255, 255, 255, 1), 7px 7px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 2px rgba(0, 0, 0, 0.2), 0 1px 1px rgba(0, 0, 0, .2), 0
		3px 0 #F4EBC3, 0 4px 0 rgba(0, 0, 0, .2), 0 6px 0 #F4EBC3, 0 7px 0
		rgba(0, 0, 0, .2);
}

#login:before {
	content: '';
	position: absolute;
	z-index: -1;
	border: 1px dashed #ccc;
	top: 5px;
	bottom: 5px;
	left: 5px;
	right: 5px;
	-moz-box-shadow: 0 0 0 1px #F4EBC3;
	-webkit-box-shadow: 0 0 0 1px #F4EBC3;
	box-shadow: 0 0 0 1px #F4EBC3;
}

h1 {
	text-shadow: 0 1px 0 rgba(255, 255, 255, .7), 0px 2px 0
		rgba(0, 0, 0, .5);
	text-transform: uppercase;
	text-align: center;
	color: #666;
	margin: 0 0 30px 0;
	letter-spacing: 4px;
	font: normal 26px/1 Verdana, Helvetica;
	position: relative;
}

h1:after,h1:before {
	background-color: #777;
	content: "";
	height: 1px;
	position: absolute;
	top: 15px;
	width: 120px;
}

h1:after {
	background-image: -webkit-gradient(linear, left top, right top, from(#777),
		to(#F4EBC3));
	right: 0;
}

h1:before {
	background-image: -webkit-gradient(linear, right top, left top, from(#777),
		to(#F4EBC3));
	left: 0;
}

/*--------------------*/
fieldset {
	border: 0;
	padding: 0;
	margin: 0;
}

/*--------------------*/
#inputs input {
	background: #f1f1f1
		url(http://www.red-team-design.com/wp-content/uploads/2011/09/login-sprite.png)
		no-repeat;
	padding: 15px 15px 15px 30px;
	margin: 0 0 10px 0;
	width: 353px; /* 353 + 2 + 45 = 400 */
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #F4EBC3;
}

#username {
	background-position: 5px -2px !important;
}

#password {
	background-position: 5px -52px !important;
}

#inputs input:focus {
	background-color: #F4EBC3;
	border-color: #e8c291;
	outline: none;
}

/*--------------------*/
#actions {
	margin: 25px 0 0 0;
}

#submit {
	background-color: #f1f1f1;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#fddb6f),
		to(#f1f1f1));
	border-radius: 3px;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
	box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3)
		inset;
	border-width: 1px;
	border-style: solid;
	border-color: #d69e31 #e3a037 #d5982d #e3a037;
	float: left;
	height: 35px;
	padding: 0;
	width: 120px;
	cursor: pointer;
	font: bold 15px Arial, Helvetica;
	color: #8f5a0a;
}

#submit:hover,#submit:focus {
	background-color: #fddb6f;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f1f1f1),
		to(#fddb6f));
}

#submit:active {
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
}

#actions a {
	color: #3151A2;
	float: right;
	line-height: 35px;
	margin-left: 10px;
}

#header {
	z-index: 1;
	position: fixed;
	width: 99%;
	margin-top: -20px;
	height: 100px;
	background-color: #668284;
	margin-bottom: 10px;
}

#info {
	float: middle;
	font-size: 15px;
	font-family: Verdana, sans-serif;
	color: #ffffff;
	position: relative;
	left: 10px;
	top: 10px;
}

#email {
	float: right;
	margin-right: 5px;
	padding-top: 5px;
	font-size: 24px;
	font-family: Verdana, sans-serif;
	color: #ffffff;
}
</style>
</head>

<body>
	<div id="header">
		<img id="logo" src="./images/logo.gif" align="left">

		<p id="name"></p>
		<a href="mailto:szhong4@vols.utk.edu" id="email">Mail to Shiqi
			Zhong</a>
		<p id="info">
			<%
				out.println("Your IP address is: " + request.getRemoteAddr());
			%>
			<br> Today's date:
			<%=(new java.util.Date()).toLocaleString()%>
		</p>
		<br>

	</div>

	<form id="login" action="usercheck.jsp" method="Post">
		<h1>Log In</h1>
		<fieldset id="inputs">
			<input name="username" type="text" placeholder="Username" autofocus
				required> 
			<input name="password" id="password" type="password"
				placeholder="Password" autofocus required>
		</fieldset>
		<fieldset id="actions">
			<input type="submit" id="submit" value="Log in"> <a href="">Forgot
				your password?</a><a href="">Register</a>
		</fieldset>

	</form>
	<script src="scripts/jquery-1.9.1.js"></script>


</body>
</html>
