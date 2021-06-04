<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0">
	<%@include file="navbar.jsp" %>
	<br>
	<div class="container">
	<h1>Edit Your Note</h1>
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id"));
	
	Session s = FactoryProvider.getFactory().openSession();
	Note note=(Note)s.get(Note.class, noteId);
	%>
	<form action="UpdateServlet" method="post">
	<input type = "hidden"value="<%=note.getId()%>" name="note_id">
	  <div class="form-group">
	    
	    <label for="title">Note Title</label>
	    <input required type="text"
	     name="title"
	     class="form-control" 
	     id="title" 
	     aria-describedby="emailHelp" 
	     placeholder="Enter here"
	     value="<%=note.getTitle() %>"
	     >
	  	
	  </div>
	  
	  <div class="form-group">
	    <label for="content">Note Content</label>
	    <textarea required
	    name="content"
	    id="content" 
	    placeholder="Enter Your Content Here"
	   	class="form-control"
	    style="height: 300px"
	    ><%=note.getContent() %>
	    </textarea>
	  </div>
	  
	  <div class="container text-center"><button type="submit" class="btn btn-success">Save Your Note</button></div>
</form>

	</div>
</div>
</body>
</html>