<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
Ex02_surveyResult.jsp
레코드개수 : ${fn:length(lists) }<br>
<table border="1">
<tr>
<th>번호</th>
<th>이름</th>
<th>회사</th>
<th>이메일</th>
<th>만족도</th>
<th>분야</th>
<th>발송방법</th>
<th>동의</th>
<th>삭제</th>
<th>수정</th>
</tr>
<c:forEach  var="bean" items="${lists}">
	<tr>
	<td>${bean.no }</td>
	<td>${bean.getName() }</td>
	<td>${bean["company"]}</td>
	<td>${bean.email }</td>
	<td>${bean.satisfaction}</td>
	<td>${bean.part }</td>
	<td>${bean.howto}</td>
	<td>
	<c:if test="${bean.agree == 1}">
		동의함
	</c:if>
	<c:if test="${bean.agree == 0}">
		동의안함
	</c:if>
	</td>
	</tr>
</c:forEach>
</table>