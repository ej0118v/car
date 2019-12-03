<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qna create</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/JavaScript">
window.onload=function(){
	CKEDITOR.replace('qcontent');  // <TEXTAREA>태그 id 값
};
</script>
</head>
<body>
<div class="container">
<h3 class="col-sm-offset-2 col-sm-10">QnA 등록</h3>
<form class="form-horizontal" action="createQna" method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label class="control-label col-sm-2" for="id">작성자 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="id">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qtitle">제목 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="qtitle">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qcontent">내용 : </label>
		<div class="col-sm-6">
<!-- 			<input type="text" name="qna_content" class="form-control"> -->
			<textarea rows="10" cols="10" class="form-control" id="qcontent" name="qcontent"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qfname">파일</label>
		<div class="col-sm-6">
			<input type="file" class="form-control" id="qfname" name="qfnameMF">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qpasswd">비밀번호 </label>
		<div class="col-sm-6">
			<input type="password" class="form-control" name="qpasswd">
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