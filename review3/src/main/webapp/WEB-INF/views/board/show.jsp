<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세조회</title>
</head>
<body>
	글번호: ${board.boardNo}
	작성자: ${board.userId}
	글제목: ${board.title}
	글내용: ${board.content}
</body>
</html>