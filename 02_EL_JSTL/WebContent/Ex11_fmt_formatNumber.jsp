<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="price" value="98765"/>
    	<c:out value="${price}"/><br>
	
	
	통화 : <fmt:formatNumber value="${price}" type="currency" currencySymbol="원"/><br>
	퍼센트 : <fmt:formatNumber value="${price}" type="percent"/><br>
	
	숫자 : <fmt:formatNumber value="${price}" type="number"/><br>
	패턴1 : <fmt:formatNumber value="${price}" pattern="000,000.00"/><br>
	패턴2 : <fmt:formatNumber value="${price}" pattern="###,###.00"/><br>
	패턴3 : <fmt:formatNumber value="12345678.9276" pattern="###,###.00"/><br>
	패턴4 : <fmt:parseNumber value="12345678.9276" var="pn" integerOnly="true"/>
	${pn }
	<br>
	
	<c:set var="now" value="<%=new Date()%>"/>
	now1 : ${now}
	<br>
	<c:set var="now" value="<%=new Date()%>"/>
	now2 : <fmt:formatDate value="${now }" type="date" dateStyle="full"/>
	<br>
	now3 : <fmt:formatDate value="${now }" type="date" dateStyle="short"/>
	<br>
	now4 : <fmt:formatDate value="${now }" type="date" />
	<br>
	now5 : <fmt:formatDate value="${now }" type="time" timeStyle="full"/>
	<br>
	now6 : <fmt:formatDate value="${now }" type="time" timeStyle="short"/>
	<br>
	now7 : <fmt:formatDate value="${now }" type="time" />
	<br>
	now8 : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="medium"/>
	<br>