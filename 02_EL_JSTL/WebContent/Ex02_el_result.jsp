<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
Ex02_el_result.jsp<br>

<% request.setCharacterEncoding("UTF-8"); %> 
아이디1: <%=request.getParameter("id") %><br>
아이디2: ${ param.id }<br>
아이디3: ${ param["id"] }<br>


<br><br>
이름1: <%= request.getParameter("name") %><br>
이름2: ${ param.name }<br>
이름3: ${ param["name"] }<br>

<br><br>
비번: <%=request.getParameter("password") %><br>
나이: <%=request.getParameter("age") %><br>

<br><br>
주소1: <%=request.getParameter("addr") %><br>
주소2: ${ param.addr }<br>
주소3: ${ param["addr"] }<br>

<hr>
id비교1 : <%=request.getParameter("id") == "hong" %><br>
id비교2 : <%=request.getParameter("id").equals("hong") %><br>

id비교3 : <%=request.getParameter("id") == "" %><br>
id비교4 : <%=request.getParameter("id").equals("") %><br>

id비교5 : ${ param.id == "hong" }<br>
id비교6 : ${ param.id eq "hong" }<br>
id비교7 : ${ param.id.equals("hong") }<br>



