<%@page import="myPkg.Person2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
result.jsp<br>
<!-- input.jsp => Servlet(잠시 거쳐가는 페이지) => result.jsp -->
이름 : <%=request.getParameter("name")%><br>
나이 : <%=request.getParameter("age")%><br><!-- null 값 -->
나이 : <%=request.getAttribute("age")%><br>
<%
	Person2 p = (Person2)request.getAttribute("per");
%>

person 이름 : <%=p.getName() %>
person 나이 :<%=p.getAge() %>
person 키 :<%=p.getHeight()%>