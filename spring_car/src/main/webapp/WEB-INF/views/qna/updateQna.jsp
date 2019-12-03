<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update qna</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/JavaScript">
window.onload=function(){
	CKEDITOR.replace('qcontent');  // <TEXTAREA>태그 id 값
};
</script>
<body>
<div class="container">
<h1 class="col-sm-offset-2 col-sm-10">게시판 수정</h1>

<form class="form-horizontal" action="updateQna" method="post" enctype="multipart/form-data" onsubmit="return input(this)">
	
	<input type="hidden" name="qnum" value="${param.qnum}"> 
	<input type="hidden" name="col" value="${param.col}">
	<input type="hidden" name="word" value="${param.word}">
	<input type="hidden" name="nowPage" value="${param.nowPage}">
	<input type="hidden" name="qoldfile" value="${param.qoldfile}"> 
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="id">작성자 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" value="${dto.id}" name="id">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qtitle">제목 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="qtitle" value="${dto.qtitle}" name="qtitle">
		</div>	
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qcontent">내용 : </label>
		<div class="col-sm-6">
<%-- 			<input type="text" class="form-control" id="qna_content" value="${dto.qna_content}" name="qna_content"> --%>
			<textarea rows="10" cols="10" id="qcontent" name="qcontent" class="form-control">${dto.qcontent}</textarea>
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
			<input type="password" class="form-control" name="qpasswd" id="qpasswd">
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-8">
			<button type="submit" class="btn btn-default">수정</button>
			<button type="reset" class="btn btn-default" onclick="location.href='./listQna'">취소</button>
		</div>
	
	</div>
</form>
</div>
</body>
</html>