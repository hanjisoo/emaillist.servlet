<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!-- 한글로 안깨지게해줌 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page import="com.javaex.vo.EmaillistVo" %>
<%@ page import="java.util.List" %>

<%
	List<EmaillistVo>list=(List<EmaillistVo>)request.getAttribute("list");
%>
 --%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	<!-- 메일정보 리스트 -->
	<%-- list에서 하나씩 빼서 테이블를 채운다--%>
	<c:forEach items="${list}" var="vo" varStatus="status">
		<table border="1" cellpadding="5" cellspacing="2">
			<tr>
				<td align=right width="110">index:${status.index} </td> <!-- 인댁스는 0부터 카운트는 1부터 -->
				<td width="170">count:${status.count }</td>
			</tr> 
			<tr>
				<td align=right width="110">Last name: </td>
				<td width="170">${vo.lastName}</td>
			</tr>
			<tr>
				<td align=right >First name: </td>
				<td>${vo.firstName}</td>
			</tr>
			<tr>
				<td align=right>Email address: </td>
				<td>${vo.email}</td>
			</tr>
		</table>
		<br>
		</c:forEach>
	
	
	<%-- <%
		for(EmaillistVo vo:list){
		
	%>
	<table border="1" cellpadding="5" cellspacing="2">
		<tr>
			<td align=right width="110">Last name: </td>
			<td width="170"><%=vo.getLastName() %></td>
		</tr>
		<tr>
			<td align=right >First name: </td>
			<td><%=vo.getFirstName() %></td>
		</tr>
		<tr>
			<td align=right>Email address: </td>
			<td><%=vo.getEmail() %></td>
		</tr>
	</table>
	<br>
	<%	//위에 for문 이랑 연결 중간에 html껴야되서 이렇게 씀 
		}
	%> --%>
	<p>
		<a href="/emaillist.2/el?a=form">추가메일 등록</a>
		<!-- <a href="el?a=form">추가메일 등록</a> 이케 써도됨 -->
	</p>
	<br>
</body>
</html>