<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
會員id= <%= request.getAttribute("userid") %><br>
會員名稱= <%= request.getAttribute("username") %><br>

</body>
</html>