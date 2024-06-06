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
	<h1>멤버 상세 정보</h1>
	<table border="1">
		<tr>
			<th width="20%">ID</th>
			<td width="80%">${member.id }</td>
		</tr>
		<tr>
			<th>PASSWORD</th>
			<td>${member.password }</td>
		</tr>
		<tr>
			<th>NAME</th>
			<td>${member.name }</td>
		</tr>
		<tr>
			<th>ROLE</th>
			<td>${member.role }</td>
		</tr>
	</table>
	<a href="edit.do?id=${member.id }">수정</a> |
	<a href="delete.do?id=${member.id }">삭제</a> |
	<a href="list.do">목록</a>

	<br/>
	<a href="/myweb">홈으로</a>

</body>
</html>