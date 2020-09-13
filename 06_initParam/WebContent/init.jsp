<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
init.jsp<br>

<%
	String msg = "Hello";
	System.out.println("msg:" +msg);
%>

회사1: <%=application.getInitParameter("company") %> <br>	<!-- application :프로젝트당 하나가 만들어지는 jsp객체 -->
회사2: ${initParam.company} <br>

가수 : <%=application.getInitParameter("singer") %><br>
매니저 : ${initParam.manager}<br>