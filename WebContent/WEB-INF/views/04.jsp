<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@ page import="vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>
	<h2>객체접근: 자바문법</h2>
	
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	no = <%=userVo.getNo() %> <br>
	name = <%=userVo.getName() %> <br>
	email = <%=userVo.getEmail() %> <br>
	password = <%=userVo.getPassword() %> <br>
	gender = <%=userVo.getGender() %> 
	<br>
	num = <%=num %> <br>
	str = <%=str %>
	
	<br>
	<br>
	<h2>객체접근: el문법 </h2>
	
	no = ${requestScope.userVo.no} <br> <!-- requestScope.생략가능 -->
	name = ${userVo.name} <br>
	email = ${userVo.email} <br>
	password = ${userVo.password} <br>
	gender = ${userVo.gender}
	<br>
	num = ${requestScope.num} <br>
	str = ${str}
</body>
</html>