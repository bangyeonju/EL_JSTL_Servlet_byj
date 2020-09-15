<%@page import="myPkg.PersonBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

PersonResult_내이름.jsp <br>

이름1 : <%=request.getParameter("name")%> <br>

<%
	PersonBean bean = (PersonBean)request.getAttribute("pb");
%>
이름2 : <%=bean.getName()%> <br>
나이 : <%=bean.getAge()%> <br>
성별 : <%=bean.getGender()%> <br>
취미 : <%=bean.getHobby()%> <br> 
취미2 : 
<%
	String[] arr = bean.getHobby();
	for( String hobby : arr){
		out.print(hobby+" ");
	}
%>
<br> 
bean : <%=bean %><br> 
<!-- 참조변수 toString -->


