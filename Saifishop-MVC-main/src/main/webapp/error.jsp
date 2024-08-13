<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<%
String str=(String)request.getAttribute("error");
if(str==null){
	str=" ";
}
else{
	%>
	<div class="alert alert-warning text-danger alert-dismissible fade show" role="alert">
  <strong><%=str %></strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
}
%>

