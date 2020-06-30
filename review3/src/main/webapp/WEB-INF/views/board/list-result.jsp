<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
</head>
<body>
	 <c:forEach var="board" items="${boards}">
			    <tr>
			    
				      <td>${board.boardNo}</td>
				      <td>
				      	<a href="${path}/board/show?boardNo=${board.boardNo}">
				      		 ${board.userId}
				      	</a>
				     </td>
				      <td>${board.title}</td>
				      <td>
				      	<a href="${path}/board/edit?boardNo=${board.boardNo}">수정</a>
				      </td>
				      <td>
				      	<a href="${path}/board/delete?boardNo=${board.boardNo}">삭제</a>
				      </td>
			    </tr>
		 	</c:forEach>
</body>
</html>