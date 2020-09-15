<%@page import="myPkg.MymemBean"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    

    
Ex01_mymemList.jsp <br>

목록보기(레코드수 : ${fn:length(lists)})<br>
<%
	ArrayList<MymemBean> lists = (ArrayList<MymemBean>)request.getAttribute("lists");
%>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>비번</td>
		<td>삭제</td>
		<td>수정</td>
		
	</tr>
	
	<c:forEach var="bean" items="${lists}">
		<tr>
			<td>${bean.id }</td>
			<td>${bean.getName()}</td>
			<td>${bean["password"]}</td>
			<td><a href="delete.mem?id=${bean.id}">삭제</a></td><!-- get방식 -->
			<td><a href="updateForm.mem?id=${bean.id}">수정</a></td>
		</tr>
	</c:forEach>
	
</table>

<hr>

<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>비번</td>
		<td>삭제</td>
		<td>수정</td>
	</tr>
	
	 <c:forEach var="i" begin="0" end="${fn:length(lists)-1 }" step="1">
		<tr>
			<td>${lists[i].id }</td>
			<td>${lists[i].getName() }</td>
			<td>${lists[i]["password"]}</td>
			<td><a href="delete.mem?id=${lists[i].id}">삭제</a></td>
			<td><a href="updateForm.mem?id=${lists[i].id}">수정</a></td>
		</tr>
	</c:forEach>
	 
</table>
<a href="Ex01_mymemForm.jsp">삽입</a>
<!-- arraylist 와 배열 차이점 -->








