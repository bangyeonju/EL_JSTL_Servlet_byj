<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
Ex09_result.jsp<br>

<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bean" class="myPkg.StudentBean"/>
<jsp:setProperty property="*" name="bean"/>
이름1:<%=request.getParameter("name")%><br>

이름2:${param.name}<br>

이름3:<%=bean.getName() %><br>


<c:if test="${param.name ==''}">
입력한 이름없음1<br>
</c:if>


<c:if test="${bean.name==null }">
입력한 이름없음2 <br>
</c:if>


<c:if test="${bean.name=='홍길동' }">
	<c:set var="msg" value="홍길동님 로그인 했습니다."/>
</c:if>

<c:if test="${!(bean.name=='홍길동' )}">
	<c:set var="msg" value="아뮤개님 로그인 했습니다."/>
</c:if>
before : ${msg} / <c:out value="${msg }"/>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<br>
<c:remove var="msg"/>
after : ${msg} / <c:out value="${msg }"/><br>


<c:if test="${bean.age >= 20 }">	
	<c:out value="성인입니다."/><br>
</c:if>
<c:if test="${bean.age < 20 }">
	미성년 입니다.
</c:if>

<!-- radio타입은 null로 비교한다. -->
성별:${bean.gender}
<c:if test="${param.gender eq null}">
	<c:out value="선택한성별이 없습니다."/><br>
</c:if>

<c:if test="${bean.gender eq null }">
	선택한성별이 없습니다.<br>
</c:if>


<c:choose >
 	<c:when test="${bean.gender eq '남' }">
 			<c:out value="남자입니다."/>
 	</c:when>
 		<c:when test="${bean.gender eq '여' }">
 			<c:out value="여자입니다."/>
 	</c:when>
 	 	<%-- <c:when test="${bean.gender == null }">
 			<c:out value="선택안했습니다!"/>
 		</c:when> --%>
 	<c:otherwise>
 		선택안했습니다!<br>
 	</c:otherwise>
</c:choose>

점수1: ${param.jumsu }<br>
<c:choose>
	<c:when test="${bean.jumsu >=90 }">
		<c:out value="A학점입니다."/>
	</c:when>
	<c:when test="${param.jumsu>=80 }">
		<c:out value="B학점입니다."/>
	</c:when>
	<c:when test="${param.jumsu>=70 }">
		<c:out value="C학점입니다."/>
	</c:when>
	<c:when test="${param.jumsu>=60 }">
		<c:out value="D학점입니다."/>
	</c:when>
	<c:when test="${bean.jumsu <60}">
		<c:out value="F학점입니다."/>
	</c:when>

</c:choose>	
<br>

취미1 :${param.hobby }<br><!-- 취미가 하나밖에 안나온다.  -->
취미2 : ${paramValues.hobby }<br>

선택한 취미개수 : ${fn:length(paramValues.hobby) }<br>
취미3:	
<c:forEach var="hby" items="${paramValues.hobby }" varStatus="status">
	${hby }
	<c:if test="${ not status.last}" >
		,
	</c:if>
</c:forEach>
<br>

취미4:	
<c:forEach var="hby" items="${bean.hobby }" varStatus="status">
	${hby }
	<c:if test="${ not status.last}" >
		,
	</c:if>
</c:forEach>
<br>
취미5:
<c:forEach var="i" begin="0" end="${fn:length(paramValues.hobby)-1}" step="1" varStatus="status">
	${paramValues.hobby[i] }
	<c:if test="${not status.last }">
	,
	</c:if>
</c:forEach>


<br>
취미6:
<c:forEach var="i" begin="0" end="${fn:length(bean.hobby)-1}" step="1" varStatus="status">
	${bean.hobby[i] }
	<c:if test="${not status.last }">
	,
	</c:if>
</c:forEach>






















