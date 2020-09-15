<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

calc\start.jsp <br>

<!-- start.do => StartServlet(합계) => end.jsp -->

<%
	String context = request.getContextPath();
	out.println("context : " + context); //  /05_RequestDispatcher 
%>
<!-- /05_RequestDispatcher/start.do 
	/05_RequestDispatcher/calc/start.do (X)
-->

<form action="<%=context %>/start.do" method="post">
	
	숫자1 : <input type = "text" name="su1" value="11"> <br>
	숫자2 : <input type = "text" name="su2" value="22"> <br>
	
	<input type="submit" value="전송">
	
</form>


