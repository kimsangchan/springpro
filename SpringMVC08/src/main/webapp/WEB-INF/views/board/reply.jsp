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
    	$("button").on("click", function(e){
    		var formData=$("#frm");
    		var btn=$(this).data("btn"); // data-btn="list"
    		if(btn=='reply'){
    			formData.attr("action", "${cpath}/board/reply");
    		}else if(btn=='list'){   
    			var formData1=$("#frm1");
    			formData1.attr("action", "${cpath}/board/list");    		   
    			formData1.submit();   
    			return;
    		}else if(btn=='reset'){
    			formData[0].reset();
    			return;
    		}
    		formData.submit();    		
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
    	<form id="frm" method="post">
    	<input type="hidden" id="idx" name="idx" value="${vo.idx}"/>
    	<input type="hidden" id="memID" name="memID" value="${mvo.memID}"/>
    	<input type="hidden" name="page" value="<c:out value='${cri.page}'/>"/>
          <input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>"/>
    		<div class="form-group">
    			<label>제목</label>
    			<input type="text" id="title" name="title" class="form-control" value="${vo.title}"/>
    		</div>
    		<div class="form-group">
    			<label>답변</label>
    			<textarea rows="10" id="content" name="content" class="form-control" ></textarea>
    		</div>
    		<div class="form-group">
    			<label>작성자</label>
    			<input type="text" readonly="readonly" id="writer" name="writer" class="form-control" value="${mvo.memName}"/>
    		</div>
    		<button type="button" data-btn="reply" class="btn btn-default btn-sm">답변</button>
    		<button type="button" data-btn="reset" class="btn btn-default btn-sm">취소</button>
    		<button type="button" data-btn="list" class="btn btn-default btn-sm">목록</button>
    	</form>
    	<form id="frm1" method="get">
          <input type="hidden" name="page" value="<c:out value='${cri.page}'/>"/>
          <input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>"/>          
       </form>
    </div>
    <div class="panel-body">Surable Technology Co., Ltd</div>
  </div>
</div>

</body>
</html>
