<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="myPkg.MymemBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

Ex01_mymemList.jsp<br>
<%
ArrayList<MymemBean> lists =(ArrayList<MymemBean>)request.getAttribute("lists");
%>

<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>비밀번호</td>
	</tr>
	<c:forEach var="" items="${lists}"> 
		<tr>	
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</c:forEach>
</table>