<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>멤버 추가</h1>
	
<form action="input.do" method="POST">
	<input type="text" name="id" value="user" /><br/>
	<input type="password" name="password" value="1234" /><br/>
	<input type="text" name="name" value="이름" /><br/>
	<input type="text" name="role" value="User" /><br/>
	<button type="submit">추가</button>
</form>
<a href="/myweb">홈으로</a>
</body>
</html>