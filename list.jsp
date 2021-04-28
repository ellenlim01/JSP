<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>
	<a href="/write">글 쓰기</a>
	${list.size()}
	<table>
		<tr>
			<td>no</td>
			<td>제목</td>
		</tr>
		<c:forEach var="item" items="${list}" varStatus="status">
		<tr>
			<td>${status.index}</td><!-- index는 방번호, count는 1부터 몇번째인지 -->
			<td><a href="/detail?no=${status.index}">${item.title}</a></td>
		</tr>	
		</c:forEach>
	</table>
</body>
</html>