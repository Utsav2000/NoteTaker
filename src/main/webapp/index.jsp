<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Note Taker : Home Page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>


			<div class="card py-4">
				<img class="img-fluid mx-auto" style="max-width: 300px;"
					src="img/notes.png">
				<h1 class="text-primary text-uppercase text-center mt-3">Taking
					Your Notes</h1>
					<form action="add_notes.jsp" method="post">
				<div class="container text-center">
					<button class="btn btn-outline-primary">Start here</button>
				</div>
				</form>
		
		</div>
	</div>

</body>
</html>