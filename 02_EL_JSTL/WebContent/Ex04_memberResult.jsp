<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="bean" class="myPkg.MemberBean"/>
    
    <jsp:setProperty property="*" name="bean"/>
    
    이름 : <jsp:getProperty property="name" name="bean"/><br>
    이름2 :  ${param.name}<br>
    이름3 : ${bean.name }<br>
    이름4 : <%=bean.getName() %><br>
    
    나이 : <jsp:getProperty property="age" name="bean"/>
   	나이2 :${param.age }<br>
   	나이3:${bean.age }<br>
   	나이4:  <%=bean.getAge() %>
   	
   	몸무게 : <jsp:getProperty property="weight" name="bean"/><br>
   	몸무게2 : ${param.weight }<br>
   	몸무게3 : ${bean.weight }<br>
   	몸무게 4 : <%=bean.getWeight() %> <br>
    
  
	키 : <jsp:getProperty property="height" name="bean"/><br>
   	키2 : ${param.height }<br>
   	키3 : ${bean.height }<br>
   	키 4 : <%=bean.getHeight()%> <br>
   	
   	성별 :  <jsp:getProperty property="gender" name="bean"/><br>
	성별2 : ${param.gender }<br>
   	성별3 : ${bean.gender }<br>
   	성별 4 : <%=bean.getGender() %> <br>
   	
   	<hr>
   	
   		pname:<%=pageContext.getAttribute("pname")%><br>
   		rname:<%=request.getAttribute("rname")%><br>
   		sname:<%=session.getAttribute("sname")%><br>
   		aname:<%=application.getAttribute("aname")%><br>
   	
   	
   		myname : ${initParam.myname }<br>
   		friendName : ${initParam.friendName }<br>
   		aname : ${applicationScope.aname }<br>
   		myname : ${applicationScope.myname }<br> <!-- 공백 -->
   	   	aname : ${initParam.aname }<br><!-- 공백 -->
   	
   	초기화 파라미터<br>
   	<%
   	Enumeration<String> initEnum = application.getInitParameterNames();
   	while(initEnum.hasMoreElements()){
   		String initName = initEnum.nextElement();
   		
   		%>
   		
   			<%=initName%> : <%= application.getInitParameter(initName)%><br>
   		<% 
   	}
   	%>
   	
   	
   	
