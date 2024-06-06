<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>멤버 리스트</h1>

<table width="600" border="1" >
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>역할</th>
	</tr>
	<c:forEach var="row" items="${memberList }">
		<tr>
			<td>${row.id }</td>
			<td>${row.password }</td>
			<td><a href="detail.do?id=${row.id }">${row.name }</a></td>
			<td>${row.role }</td>
		</tr>
	
	</c:forEach>
</table>
<a href="/myweb">홈으로</a>
</body>
</html>