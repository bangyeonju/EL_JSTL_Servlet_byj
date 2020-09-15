<%@page import="myPkg.MymemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
Ex01_mymemUpdateForm.jsp <br>

<%
	// MymemBean mb = (MymemBean)request.getAttribute("mb");
 /* => 자동으로 이순서대로  속성을 찾는다. 
		 
		pageContext.getAttribute("mb");
		request.getAttribute("mb");
 		session.getAttribute("mb");
 		application.getAttribute("mb");
 
 */

%>
<h3>회원 수정 폼</h3>
<!-- select.mem update.mem delete.mem -->
<form action="update.mem" method="post" name="myform">

	<input type="hidden" name="id" value="${mb.id }"> <!--숨어서 넘어간당 -->
	<table border="1">
		<%-- <tr>
			<td>아이디</td>
			<td><input type="text" name="id" value="${mb.id}"></td>
		</tr> --%>
		
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value="${mb.getName()}"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" name="password" value="${mb['password']}"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<!-- <a href="#" onClick="insertData()">회원수정</a> -->
				 <input type="submit" value="회원수정"> 
			</td>
		</tr>
		
	</table>

</form>
