<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
		Cookie[] cookies = request.getCookies();
		// 쿠키 배열로 받는다. 
		
		for(int i = 0; i < cookies.length; i++){
			
			String str = cookies[i].getName();
			// getName() >> 쿠키 이름을 얻는 메소드
				
			// getValue() >> 쿠키 값을 얻는 메소드
				
			if(str.equals("cookieName")){
				
				out.print("cookies[" + i + "] 이름: " + cookies[i].getName() + "<br>");
				out.print("cookies[" + i + "] 값: " + cookies[i].getValue() + "<br>");
				out.print("-------------------------------------<br>");
			}
			
		}
	
	%>

	<a href="cookieDelete.jsp">쿠키 삭제</a>



</body>
</html>


