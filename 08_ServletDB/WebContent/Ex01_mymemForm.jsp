<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
Ex01_mymemForm.jsp<br><br>

<script type="text/javascript">
   function insertData(){
    alert(1);
   }
</script>

<h3>회원 가입 폼</h3>

<form action="insert.mem" method="post" name="myform">

   <table border="1">
   
      <tr>
         <td>이 름</td>
         <td><input type="text" name="name" value="윤아"></td>
      </tr>
      
      <tr>
         <td>비밀번호</td>
         <td><input type="text" name="password" value="1234"></td>
      </tr>
      
      <tr>
         <td colspan="2">
        <!--    <a href="#" onClick="insertData()">회원가입</a> -->
            <input type="submit" value="회원가입"/>
         </td>
      </tr>
   
   </table>

</form>