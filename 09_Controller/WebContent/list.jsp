<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
list.jsp <br><br>
레코드개수 : ${fn:length(lists) }
<table border="1">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>가입일</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="bean" items="${lists}" >
	<tr>
		<td>${bean.num}</td>
		<td>${bean.getId()}</td>
		<td>${bean.passwd}</td>
		<td>${bean.name }</td>
		<td>${bean.register }</td>
		<td></td>
		<td></td>
	</tr>
	</c:forEach>
</table>
<br><br>
<a href="insertForm.jsp">삽입</a>