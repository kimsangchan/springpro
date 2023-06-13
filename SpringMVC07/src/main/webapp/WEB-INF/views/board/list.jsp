<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	$(document).ready(function(){
  		$("#regBtn").click(function(){
  			location.href="${cpath}/board/register";
  		});
  	});
  </script>
</head>
<body>
 
<div class="container">
  <h2>Spring MVC</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
    	<c:if test="${empty mvo}">
    	<form class="form-inline" action="${cpath}/login/loginProcess" method="post">
		  <div class="form-group">
		    <label for="memID">ID:</label>
		    <input type="text" class="form-control" id="memID" name="memID">
		  </div>
		  <div class="form-group">
		    <label for="memPwd">Password:</label>
		    <input type="password" class="form-control" id="memPwd" name="memPwd">
		  </div>
		  <button type="submit" class="btn btn-default">로그인</button>
		</form>
		</c:if>
		<c:if test="${!empty mvo}">
    	<form class="form-inline" action="${cpath}/login/logoutProcess" method="post">
		  <div class="form-group">
		    <label >${mvo.memName}님 방문을 환영합니다.</label>
		  </div>
		  <button type="submit" class="btn btn-default">로그아웃</button>
		</form>
		</c:if>
	</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
    		<thread>
    			<tr>
	    			<td>번호</td>
	    			<td>제목</td>
	    			<td>작성자</td>
	    			<td>작성일</td>
	    			<td>조회수</td>
	    		</tr>
    		</thread>
    		<c:forEach var="vo" items="${list}">
    			<tr>
	    			<td>${vo.idx}</td>
	    			<td>${vo.title}</td>
	    			<td>${vo.content}</td>
	    			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.indate}"/></td>
	    			<td>${vo.count}</td>
	    		</tr>
    		</c:forEach>
    		<c:if test="${!empty mvo}">
    		<tr>
    			<td colspan="5">
    				<button id="regBtn" class="btn btn-sm btn-primary pull-right">글쓰기</button>
    			</td>
    		</tr>
    		</c:if>    		
    	</table>
    </div>
    <div class="panel-body">Surable Technology Co., Ltd</div>
  </div>
</div>

</body>
</html>