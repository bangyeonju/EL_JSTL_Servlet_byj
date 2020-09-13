<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript">
    function movePage(){
    //	alert(1);
   	location.href="Request.do";
    }
    </script>
<a href="Request.do">링크</a>

<br><br>

<input type="button" value="버튼" onClick="movePage()"/>
<form action="Request.do" method="get">
	<input type="submit" value="get 전송">
</form>
<br>
<form action="Request.do" method="post">
	<input type="submit" value="post 전송">
</form>
<br>