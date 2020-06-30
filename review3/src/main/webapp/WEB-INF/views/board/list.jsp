<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:set var="path" value="<%=request.getContextPath() %>" scope="application"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<h1>글 목록</h1>	
	
	<div class="container">
		<table class="table">
		  <thead>
		    <tr>
		      <th>#</th>
		      <th>userId</th>
		      <th>title</th>
		      
		    </tr>
		  </thead>
		  <tbody>
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
		 	 
		  </tbody>
		</table>
		<br>
		
		<form action="${path}/board/searchList">
			<input type="text" name="keyword" placeholder="작성자 이름을 입력하세요.">
			<input type="submit" value="검색">
		</form>
		
		
		
	</div>
	
	
</body>
</html>