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
		form태그에서 전송받은 아이디와 비밀번호가
		id > kang 그리고 pw > 1234와 일치한다면
		받은 id로 쿠키값 설정 한 후 쿠키 생성하기
		new Cookie("id", id);
		웹브라우저에 쿠키 탑재 후 리다이렉트로 cookieMain.jsp로 보내기
		만약 일치하지 않는다면 리다이렉트로 cookieLogin.html로 보내기
	 --%>
	 
	 <%!
	 	String id, pw;
	 %>
	 
	 <%
	 	String id = request.getParameter("id");
	 	String pw = request.getParameter("pw");
	
	 	if(id.equals("kang") && pw.equals("1234")){
	 
	 			Cookie cookie = new Cookie("id", id);
	 			cookie.setMaxAge(60*60);
	 			response.addCookie(cookie);
	 			response.sendRedirect("cookieMain.jsp");
	 		
	 	}else{
	 		response.sendRedirect("cookieLogin.html");
	 	}
	 %>
		 
	 
	 

</body>
</html>





