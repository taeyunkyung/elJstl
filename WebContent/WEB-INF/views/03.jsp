<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>
	<h2>파라미터 > 파라미터 값 꺼내쓰기: 자바문법</h2>
	
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int no1 = Integer.parseInt(request.getParameter("num1"));
		int no2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	id = <%=id %> <br>
	pw = <%=pw %> <br>
	name = <%=name %> <br>
	num1 = <%=no1 %> <br>
	num2 = <%=no2 %>
	<br>
	<br>
	
	<h2>파라미터 > 파라미터 값 꺼내쓰기: el문법</h2>
	\${param.id} : id = ${param.id} <br>
	\${param.pw} : pw = ${param.pw} <br>
	\${param.name} : name = ${param.name} <br>
	\${param.num1} : num1 = ${param.num1} <br>
	\${param.num2} : num2 = ${param.num2} 
</body>
</html>