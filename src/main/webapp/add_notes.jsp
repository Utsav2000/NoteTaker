<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0">
   		<%@include file="navbar.jsp" %>
   		<div class="container">
   		<br>
   		<h1>Fill Your Note Detail</h1>
   		
   		<!--this is add form  -->
   		<form action="SaveNoteServlet" method="post">
		  <div class="form-group">
		    
		    <label for="title">Note Title</label>
		    <input required type="text"
		     name="title"
		     class="form-control" 
		     id="title" 
		     aria-describedby="emailHelp" 
		     placeholder="Enter here">
		  
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea required
		    name="content"
		    id="content" 
		    placeholder="Enter Your Content Here"
		    class="form-control"
		    style="height: 300px"
		    ></textarea>
		  </div>
		  
		  <div class="container text-center"><button type="submit" class="btn btn-primary">Add</button></div>
</form>
</div>	
   </div>
</body>
</html>