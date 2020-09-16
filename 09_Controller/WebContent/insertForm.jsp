<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
insertForm.jsp
<form action="insertProc.do" method="post">
	아이디 : <input type="text" name="id" value="kim"/><br>
	비번  : <input type="text" name="passwd" value="1234"/><br>
	이름 : <input type="text" name="name" value="김수현"/><br>
	<input type="submit" value="가입하기"/>
</form>