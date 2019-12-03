<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Notice</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/JavaScript">
window.onload=function(){
	CKEDITOR.replace('ncontent');  // <TEXTAREA>태그 id 값
};
</script>
<body>
<div class="container">
<h1 class="col-sm-offset-2 col-sm-10">게시판 수정</h1>

<form class="form-horizontal" action="updateNotice" method="post" enctype="multipart/form-data" onsubmit="return input(this)">

	<input type="hidden" name="nnum" value="${param.nnum}"> 
	
	<input type="hidden" name="col" value="${param.col}">
	<input type="hidden" name="word" value="${param.word}">
	<input type="hidden" name="nowPage" value="${param.nowPage}">
	<input type="hidden" name="noldfile" value="${param.noldfile}"> 
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="id">작성자 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" value="${dto.id}" name="id">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="ntitle">제목 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="ntitle" value="${dto.ntitle}" name="ntitle">
		</div>	
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="ncontent">내용 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="ncontent" value="${dto.ncontent}" name="ncontent">
		</div>	
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="nfname">파일</label>
		<div class="col-sm-6">
			<input type="file" class="form-control" id="nfname" name="nfnameMF">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="npasswd">비밀번호 </label>
		<div class="col-sm-6">
			<input type="password" class="form-control" name="npasswd">
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-8">
			<button type="submit" class="btn btn-default">수정</button>
			<button type="reset" class="btn btn-default" onclick="location.href='./list'">취소</button>
		</div>
	
	</div>
</form>
</div>
</body>
</html>