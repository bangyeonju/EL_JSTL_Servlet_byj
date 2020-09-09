<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="book" class="myPkg.BookBean"/>
<jsp:setProperty property="*" name="book" />

제목 :
<%=request.getParameter("title")%><br>
저자: ${param.author }
<br>
출판사 : ${param["publisher"] }
<br>
가격 : ${param['price']}
<br>


입고일:
<%=book.getBuy() %><br>
배송비:<jsp:getProperty property="kind" name="book" /><br>
구입가능서적 1: ${book.bookstore }
<br>
구입가능서적 2: ${param.bookstore }
<br>
구입가능서적 3:
<jsp:getProperty property="bookstore" name="book" />
<br>
구입가능서적 5 :
<%
String[] bs = request.getParameterValues("bookstore");
for(int i=0;i<bs.length;i++){
	out.print(bs[i]+" ");
}

%><br>
<!--  확장for문 -->
구입가능서점6:
<c:forEach var="bs" items="${book.bookstore}" varStatus="status">
	${bs }
	<c:if test="${ not status.last}">
	,
	</c:if>

</c:forEach>

<br>
${fn:length(book.bookstore) }
<!--  각방에 접근 0,1,2 -->
구입가능서점7:
	<c:forEach var="i" begin="0" end="${fn:length(book.bookstore) - 1}" step="1"  varStatus="status">
		${ book.bookstore[i]}
		<c:if test="${ not status.last }">
			,
		</c:if>
	</c:forEach>

<br>
보유수량1 :${param.count}
<br>
보유수량2 :
<%=book.getCount() %>
<hr>
