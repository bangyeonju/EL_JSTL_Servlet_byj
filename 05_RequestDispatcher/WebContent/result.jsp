<%@page import="myPkg.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
result.jsp <br>

<!-- input.jsp => Servlet(잠시 거쳐가는 페이지) => result.jsp -->

이름 : <%=request.getParameter("name") %> <br>
나이1 : <%=request.getParameter("age") %> <br> <!-- null -->
나이2 : <%=request.getAttribute("age") %> <br>
<%
	Person p = (Person)request.getAttribute("per");
%>
person 이름 : <%=p.getName() %> <br>
person 나이 : <%=p.getAge() %><br>
person 키 : <%= p.getHeight() %><br>



