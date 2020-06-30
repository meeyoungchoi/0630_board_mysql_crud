<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="path" value="<%=request.getContextPath() %>" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="${path}/board/update">
	글번호:<input type="text" name="boardNo" readonly="readonly" value="${board.boardNo}">
		작성자:<input type="text" name="userId" readonly="readonly" value="${board.userId}">
	제목:<input type="text" name="title"  value="${board.title}">
	내용:<input type="text" name="content"  value="${board.content}">
	<button>전송</button>
	</form>
	
</body>
</html>