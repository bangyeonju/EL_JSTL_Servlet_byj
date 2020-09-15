<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
calc\end.jsp <br>

<%
int su1 = Integer.parseInt(request.getParameter("su1"));
int su2 = Integer.parseInt(request.getParameter("su2"));

%>

<%=su1%> + <%=su2%> = <%=su1 + su2%> <br>

<%
	int result = (Integer)request.getAttribute("hap");
%>
<%=su1%> + <%=su2%> = <%=result %> <br>


