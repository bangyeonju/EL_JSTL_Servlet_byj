<%@page import="javax.swing.plaf.basic.BasicInternalFrameTitlePane.MoveAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] movieList={"반도	","결백","독전","국제시장"};
	pageContext.setAttribute("pcmovieList",movieList);
	
	for(int i=0;i<movieList.length;i++){
		out.print(movieList[i]+" ");
	}
	out.print("<br>");
	for(String movie: movieList){
		out.print(movie+" ");
	}
	out.print("<br>");
%>
<%--
forEach형식
 <c:forEach var="변수" items="반복할대상">

</c:forEach> 
--%>

movieList1:
<c:forEach var="movie" items="<%=movieList %>">
${movie }
</c:forEach>
<br>
movieList2:
<c:forEach var="movie" items="${pcmovieList }">
${movie}
</c:forEach>
<br>

movieList3:
<c:set var="setmovieList" value="<%=movieList %>"/>
<c:forEach var="movie" items="${setmovieList }">
${movie}
</c:forEach>
<br>


length() : ${fn:length(pcmovieList)} / ${fn:length(setmovieList)} / <%=movieList.length%>
<br><br>

<table border="1">
   <tr>
      <th>index</th>
      <th>count</th>
      <th>title</th>
   </tr>
   
   <c:forEach var="movie" items="${pcmovieList}" varStatus="status">
      <tr>
         <td>${status.index}</td>
         <td>${status.count}</td>
         <td>${movie}</td>
      </tr>
   </c:forEach>
 
</table>

  ==========================================<br>
   <c:forEach var="i" begin="1" end="10"  step="2" varStatus="status">
   ${i} / ${status.count } / ${status.index } / ${status.begin } / ${status.end } / ${status.first} /${status.last }<br>
   </c:forEach>
<br>
	<c:forEach var="i" begin="1" end="9">
		3*${i } = ${3*i }<br>
	</c:forEach>
	
	<c:forEach var="i" begin="1" end="10" varStatus="status">
		<c:set var="total" value="${total+i}"/>
	</c:forEach>
1~10까지 합계 : ${total} <br>
<br><br><br><br><br><br><br>


