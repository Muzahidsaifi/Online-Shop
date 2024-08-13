<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<%
String str1=(String)request.getAttribute("good");
if(str1==null){
	str1=" ";
}
else{
	%>
	<div class="alert alert-warning text-success alert-dismissible fade show" role="alert">
  <strong><%=str1 %></strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
}
%>

