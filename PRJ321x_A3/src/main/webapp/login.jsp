<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/Assignment.css">
</head>
<body class="login">
	<div class="loginpage">
		<div class="loginpageleft">
			<h2>Sign in</h2>
			<form name="loginform" action="login"	onsubmit="return validate()" method="post">
				<%
					Cookie[] cookies = request.getCookies();
					String uname = "";
					String pword = "";
					if (cookies != null) {
						for (Cookie retrievedCookies: cookies){
							if (retrievedCookies.getName().equals("username")){
								uname = retrievedCookies.getValue();
							}else if (retrievedCookies.getName().equals("password")){
								pword = retrievedCookies.getValue();
							}
						}
					}
					if (uname =="" && pword ==""){
				%>								
				<input type="text" id="username" name="username" placeholder="username"><br/><br/>
				<input type="password" id="password" name="password" placeholder="password"><br/><br/>
				<%} else {%>
				<input type="text" id="username" name="username" value="<%=uname %>"><br/><br/>
				<input type="password" id="password" name="password" value="<%=pword %>">
				<%} %>				
				<a class="forgotpassword" href="./URLController?action=forgotpassword">Forgot password?</a>
				<div class="bottomlogin">
					<input type="checkbox" name="remember" value="remember" value="on"> 
					<label for="remember">Remember me</label>
				</div>				
				<input class="loginbutton" type="submit" value="Login">
				<div class="error">
				<%
					String error = (String) session.getAttribute("error");
					if (error != null){
						out.println(error);
					}
				%>
				</div>
			
			</form>
		</div>
		<div class="loginpageright">
			<div class="loginrighttext">
				<h2>Welcome Back!</h2>
				<p>To keep connected with us please login with your personal info</p>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/validator.js"></script>
</body>
</html>