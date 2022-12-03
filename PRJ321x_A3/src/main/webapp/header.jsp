<div class="header row">
	<div class="headerleft col-md-3">
		<h1>PRJ321x</h1>
		<img src="media/welcome.png" width="30%">
	</div>
	
	<%
	String search = (String)request.getAttribute("textSearch");
	if (search == null) {
		search = "";
	}
	%>

	<div class="headerright col-md-9">
		<form class="searchbar" name="searchform" action="SearchController"
			method="get">

			<div class="input-group">
				<div class="input-group-prepend">
					<select name="Categories" class="selectcategories inp_header">
						<option value="Category">Categories</option>
						<option value="Category1">Category 1</option>
						<option value="Category2">Category 2</option>
					</select>
				</div>
				<input type="text" class="form-control" name="searchText"
					placeholder="What are you looking for?" value = "<%= search %>">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary bg-warning">Search</button>
				</div>
			</div>

		</form>
	</div>
</div>

<div class="row">
	<div class="col-md-12 p-0">
		<div class="topnav">
			<div class="leftnav">
				<a id="active" href="./HomeProductController">Home</a> <a
					href="./URLController?action=products">Products</a> <a
					href="./URLController?action=about">About us</a>
			</div>
			<a style="float: right;" href="./URLController?action=register">Register</a>
			<a style="float: right;" href="./URLController?action=login">Login</a>
		</div>
	</div>
</div>