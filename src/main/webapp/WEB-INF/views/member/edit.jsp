<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>멤버 수정</h1>
	<form action="edit.do" method="POST">
		<table border="1">
			<input type="hidden" value="${member.id }" name="id" />
			<tr>
				<th width="20%">ID</th>
				<td width="80%">${member.id }</td>
			</tr>
			<tr>
				<th>PASSWORD</th>
				<td><input type="password" value="${member.password }"
					name="password" /></td>
			</tr>
			<tr>
				<th>NAME</th>
				<td><input type="text" value="${member.name }" name="name" /></td>
			</tr>
			<tr>
				<th>ROLE</th>
				<td><input type="text" value="${member.role }" name="role" /></td>
			</tr>
			<tr>
				<th></th>
				<td><input type="submit" value="수정" /></td>
			</tr>
		</table>
	</form>
	<a href="/myweb">홈으로</a>
</body>
</html>