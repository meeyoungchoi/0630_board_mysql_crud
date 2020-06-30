<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="<%=request.getContextPath() %>" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="jumbotron jumbotron-fluid">
  		<div class="container">
    		<h1 class="display-4">글쓰기</h1>
  		</div>
	</div>
	

	<div class="container">
		<form method="post" action="${path}/board/write">
			
			
			<div class="form-group row">
            	<label class="col-sm-2 col-form-label">이름</label>
           			 <div class="col-sm-10">
             				 <input type="text" name="userId" placeholder="작성자 ID을 입력하세요" class="form-control" >
            		</div>
          	</div>
          	<div class="form-group row">
            	<label class="col-sm-2 col-form-label">제목</label>
           			 <div class="col-sm-10">
             				 <input type="text" name="title" placeholder="제목을 입력하세요" class="form-control" >
            		</div>
          	</div>
          	<div class="form-group row">
            	<label class="col-sm-2 col-form-label">내용</label>
           			 <div class="col-sm-10">
             				 <input type="text" name="content" placeholder="내용을 입력하세요" class="form-control" >
            		</div>
          	</div>
          	
          	<button>전송</button>
          	
		</form>
	
	
	
	
	</div>

	
	
	
	
	
	
	
	
	
	
</body>
</html>