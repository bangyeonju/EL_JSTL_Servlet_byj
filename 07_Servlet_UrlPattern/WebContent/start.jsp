<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
start.jsp

<!--a태그를 통한 get전송   -->
<br>
<a href="insert.do">insert</a>
<hr>
<a href="http://localhost:9191<%=request.getContextPath()%>/update.do">update</a>

<hr>

<a href="http://localhost:<%=request.getContextPath()%>/select.do">select</a>
<hr>
<a href="<%=request.getContextPath()%>/delete.do">delete</a>
<hr>