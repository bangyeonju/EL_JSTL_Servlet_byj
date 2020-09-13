<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
calc\start.jsp<br>

<%
String context = request.getContextPath();
out.println("context"+context);

%>
<form action="<%=context %>/start.do" method="post">
		숫자 1 : <input type="text" name="su1" value="11"/><br>
		숫자 2 : <input type="text" name="su2" value="22"/><br>
		<input type="submit" value="전송"/>
</form>