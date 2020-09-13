<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
login.jsp<br>

<form action="login.do" method="post">

   아이디 : <input type="text" name="id"/><br>
   비밀번호 : <input type="text" name="passwd"/><br>
   회원명 : <input type="text" name="name"/><br>
   주소 : <input type="text" name="addr"/><br>
   취미 : <input type="checkbox" name="hobby" value="영화"/>영화
  		<input type="checkbox" name="hobby" value="운동">운동
  		<input type="checkbox" name="hobby" value="게임"/>게임<br>
   <input type="submit" value="로그인">

</form>