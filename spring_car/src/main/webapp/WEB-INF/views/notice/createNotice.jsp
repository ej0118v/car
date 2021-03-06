<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice create</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/JavaScript">
window.onload=function(){
	CKEDITOR.replace('ncontent');  // <TEXTAREA>태그 id 값
};
</script>
</head>
<body>
<div class="container">
<h3 class="col-sm-offset-2 col-sm-10">공지사항 등록</h3>
<form class="form-horizontal" action="create" method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label class="control-label col-sm-2" for="id">작성자 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="id">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="ntitle">제목 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="ntitle">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="ncontent">내용 : </label>
		<div class="col-sm-6">
<!-- 		<input type="text" name="notice_content" class="form-control" row="100" col="20"> -->
			<textarea rows="10" cols="10" id="ncontent" name="ncontent" class="form-control" placeholder="내용을 입력해주세요"></textarea>
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
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">등록</button>
			<button type="reset">취소 </button>
		</div>
	</div>

</form>

</div>
</body>
</html>