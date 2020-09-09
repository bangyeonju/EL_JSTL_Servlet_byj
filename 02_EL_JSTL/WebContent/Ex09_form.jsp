<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberForm.jsp </title>
</head> 
<body> 
<form action="Ex09_result.jsp" method="post">
<table border="1">
	<tr>
		<td>이름</td>	
		<td><input type="text" name="name" value="홍길동"></td>
	</tr>
	<tr>
		<td>나이</td>	
		<td><input type="text" name="age" value="20"></td>
	</tr>	
	<tr>
		<td>몸무게</td>	
		<td><input type="text" name="weight" value="70"></td>
	</tr>
	<tr>
		<td>키</td>	
		<td><input type="text" name="height" value="175"></td>
	</tr>
	<tr>
		<td>성별</td>	
		<td><input type="radio" name="gender" value="남">남
			<input type="radio" name="gender" value="여">여
		</td>
	</tr>	
	<tr>
		<td>점수</td>	
		<td><input type="text" name="jumsu" value="85"></td>
	</tr>	
	<tr>
		<td>취미</td>	
		<td>
			<input type="checkbox" name="hobby" value="운동" checked="checked">운동
			<input type="checkbox" name="hobby" value="독서" checked="checked">독서
			<input type="checkbox" name="hobby" value="영화">영화
		</td>
	</tr>		
	<tr>
		<td colspan="2">
			<input type="submit" value="전송하기">
		</td>
	</tr>	
</table>
</form>
</body>
</html>