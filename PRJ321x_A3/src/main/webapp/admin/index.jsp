<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="/PRJ321x_A3/css/Assignment.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body class="loggedinpage row">
	<div class="loggedin">
		<div class="loggedinleft col-md-3">
			<h2>1849 TEAM</h2>
			<hr>
			<p id="dashboard">Dashboard</p>
			<p>Staff Manager</p>
		</div>
		<div class="loggedinright col-md-9">
			<div class="info">
				<img class="coverimg" src="/PRJ321x_A3/media/cover.jpg">
				<div class="logoutform">
					<form name="logoutform" action="/PRJ321x_A3/login" method="post">
						<span><%=session.getAttribute("user")%></span> <input
							type="submit" value="Logout">
					</form>
				</div>
			</div>
			<div class="member">
				<table>
					<p id="member">Member of the team</p>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>StudentID</th>
						<th>Class</th>
					</tr>
					<tr>
						<td>1</td>
						<td>Member 1</td>
						<td>Member Code 1</td>
						<td>Class 1</td>
					</tr>
					<tr>
					<tr>
						<td>2</td>
						<td>Member 2</td>
						<td>Member Code 2</td>
						<td>Class 2</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<script>
		window.onload = function() {
			var hide = document.getElementById("disappear");
			document.onclick = function(e) {
				if (e.target.id !== 'disappear') {
					hide.style.display = 'none';
				}
				;
			};
		};
	</script>

</body>
</html>