<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form action="Ex04_memberResult.jsp" method="post">

	<table border="1">


		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value="길동"></td>
		</tr>


		<tr>
			<td>나이</td>
			<td><input type="text" name="age" value="30"></td>
		</tr>
		<tr>
			<td>몸무게</td>
			<td><input type="text" name="weight" value="70"></td>
		</tr>
		<tr>
			<td>키</td>
			<td><input type="text" name="height" value="170"></td>
		</tr>
		<tr>
			<td>성별 </td>
			<td>남 <input type="radio" name="gender" value="남">
			여 <input type="radio" name="gender" value="여"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="전송하기"></td>
		</tr>

	</table>

</form>
<%
	pageContext.setAttribute("pname","페이지네임");//pname=페이지네임
	request.setAttribute("rname","리퀘스트네임");//rname=리퀘스트네임
	
	session.setAttribute("sname", "세션네임");//sname=세션네임 다음 페이지까지 넘어감 
	
	application.setAttribute("aname", "어플리케이션네임");//aname= 어플리케이션네임 다음 페이지까지 넘어감. 
	//내가 사용하는 프로젝트 어디서든 사용가능. 프로젝트당 하나가 만들어진다.



%>