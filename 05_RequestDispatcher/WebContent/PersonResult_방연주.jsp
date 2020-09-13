<%@page import="myPkg.Person2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
PersonResult_이설아.jsp<br><br>

<%
	Person2 p = (Person2)request.getAttribute("per");
	String hobby = "";
	for(int i=0; i<p.getHobby().length; i++){
		hobby += p.getHobby()[i]+ " ";
	}
%>
이름1: <%=request.getParameter("name") %> <br>
이름2: <%=p.getName() %><br>
나이: <%=p.getAge() %><br>
성별: <%=p.getGender() %><br> 
취미1: <%=p.getHobby() %><br> <!-- 배열의 첫 주소가 들어옴 -->
취미2: <%=hobby %><br>
취미3:
<%
	//확장for문
	String[] arr= p.getHobby();
	for(String hobby2 : arr){
		out.print(hobby2+" ");
	}
%>
<br>

<!-- Person2.java (bean)에서 toSting 만들고 호출해보기 +참조변수만 쓰면 toString이 자동으로 호출된다 -->
bean : <%=p.toString() %> <br>

