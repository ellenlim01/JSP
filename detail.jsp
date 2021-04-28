<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디테일</title>
</head>
<body>
	<div>제목 : ${vo.title}</div>
	<div>${vo.ctnt}</div>
	
	<a href="/mod?=${param.no}"><button>수정</button></a>
	<form action="/del" method="post">
		<input type="hidden" name="no" value="${param.no}">
		<input type="submit" value="삭제">
	</form>
</body>
</html>