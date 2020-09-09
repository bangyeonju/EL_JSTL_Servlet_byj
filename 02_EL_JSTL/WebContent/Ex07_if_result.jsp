<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex07_if_result.jsp<br>
<%
request.setCharacterEncoding("UTF-8");
%>
선택한 음식 : ${param.food}

<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${param.food == '피자'}">
   <span style="color:red">피자</span>
</c:if>
<c:if test="${param.food == '짜장면'}">
<font color="orange">짜장면</font>
</c:if>
<c:if test="${param.food eq '떡볶이'}">
<span style="color:green">떡볶이</span>
</c:if>
<%-- <c:if test="${param.food eq '치킨'}">
<span style="color:pink">치킨</span>
</c:if> --%>
<c:if test="${!(param.food eq'피자' || param.food == '짜장면' || param.food eq '떡볶이')}">
<span style="color:blue">${param.food}</span>
</c:if>
<hr>
<c:choose>
	<c:when test="${param.food == '피자'}">
		<span style="color:red">피자</span>
	</c:when>
		<c:when test="${param.food == '짜장면'}">
		<span style="color:orange">짜장면</span>
	</c:when>
		<c:when test="${param.food eq '떡볶이'}">
		<span style="color:green">떡볶이</span>
	</c:when>
	
	<c:otherwise>
	<span style="color:blue">${param.food}</span>
	</c:otherwise>
</c:choose>