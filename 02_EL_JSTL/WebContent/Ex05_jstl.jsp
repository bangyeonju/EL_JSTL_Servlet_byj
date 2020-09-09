<%@page import="myPkg.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:out value="Hello world"/><br>

<%
	String msg = "Hi";
	out.println("msg" +msg +"<br>");
	pageContext.setAttribute("msg1","Hello");

%>
\${msg} : ${msg}<br><!-- \쓰는 이유 앞에 ${msg}그대로 나오게 빼줄라고 ${msg} : 공백 --> 
\${msg1} : ${msg1}<br>

<c:set var="msg2" value="JSTL"/><!-- msg2="JSTL" -->
\${msg2}:${msg2}<br>
\${msg2}:<c:out value="${msg2}"/><br>

msg3=EL
<c:set var="msg3">
EL
</c:set>
\${msg3}:${msg3}<br>
\${msg3}:<c:out value="${msg3}"/><br>


<hr>
객체만들기1<br>

<%
//	Person per = new Person("윤아",30,"여" );
	Person per = new Person();
	per.setName("윤아");
	per.setAge(30);
	per.setGender("여");
	
 
%>

name1 =<%=per.getName() %><br>
name2 =<%out.println(per.getName()); %><br>
<% 
pageContext.setAttribute("abcd",per);//(이름,값) abcd=per
%>
name3 = ${abcd.name}<br>
name4= <c:out value="${abcd.name}"/><br>
name5=<c:out value="<%=per.getName()%>"/><br>
name5=${per.name }<br><!-- 공백 -->

객체만들기2<br>
<jsp:useBean id="per2" class="myPkg.Person"/>
<jsp:setProperty property="name" name ="per2" value="태연"/>
<jsp:setProperty property="age" name ="per2" value="30"/>
<jsp:setProperty property="gender" name ="per2" value="여"/>
<%
pageContext.setAttribute("abcd",per2);
%>

age1 :<jsp:getProperty property="age" name="per2"/><br>
age2 : <%=per2.getAge() %><br>
age3 : ${abcd.age }<br>
age4: ${per2.age }<br>


객체만들기3<br>
<c:set var="per3" value="<%=new Person() %>"/>
<!-- per3.setName("써니"); -->
<c:set target="${per3 }" property="name" value="써니"/>
<c:set target="${per3 }" property="age" value="50"/>
<c:set target="${per3 }" property="gender">
남
</c:set>
gender1 : ${per3.gender }<br>
gender2 : <%--<%per3.getGender() %> --%><br>
gender3 : <%-- <jsp:getProperty property="gender" name="per3"/><br> --%><br>
gender4 : <c:out value="${per3.gender }"/>
	