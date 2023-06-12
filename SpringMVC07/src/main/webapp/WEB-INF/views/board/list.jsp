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
    <div class="panel-heading">BOARD</div>
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
    		<tr>
    			<td colspan="5">
    				<button id="regBtn" class="btn btn-xs pull-right">글쓰기</button>
    			</td>
    		</tr>    		
    	</table>
    </div>
    <div class="panel-body">Surable Technology Co., Ltd</div>
  </div>
</div>

</body>
</html>
