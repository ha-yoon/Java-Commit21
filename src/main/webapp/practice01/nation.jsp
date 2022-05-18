<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		넘어온 데이터를 받고 데이터를 웹브라우저에 출력하기 
	 --%>
	 
	 <%
	 	request.setCharacterEncoding("UTF-8");
	 
	 	String name = request.getParameter("name");
	 	String nation = request.getParameter("nation");
	 	
	 %>
	 
	 <h1><%=name %>님 <%=nation %>나라에 도착하였습니다.</h1>
	 

</body>
</html>