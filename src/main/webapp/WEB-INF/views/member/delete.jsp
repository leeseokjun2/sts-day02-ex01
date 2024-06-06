<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>멤버 삭제</h1>
	<form action="delete.do" method="post">
		<table border="1">
			<tr>
				<th width="20%">ID</th>
				<td width="80%">${member.id }</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>${member.password }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${member.name }</td>
			</tr>
			<tr>
				<th>직책</th>
				<td>${member.role }</td>
			</tr>
		</table>
		<input type="hidden" name="id" value="${member.id }">
		<input type="submit" value="진짜 삭제">
	</form>
	<a href="/myweb">홈으로</a>
</body>
</html>