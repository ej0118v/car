<%@ page contentType="text/html; charset=UTF-8" %> 
<!DOCTYPE html>
<html>
<head>
  <title>qna</title>
  <meta charset="utf-8">
  </head>
<body>
<div class="container">
<h1 class="col-sm-offset-2 col-sm-10">qna 답변</h1>

<form class="form-horizontal" action="replyQna" method="post" enctype="multipart/form-data">
		<input type="hidden" name="qnum" value="${param.qnum}">
		<input type="hidden" name="qref" value="${dto.qref}">
		<input type="hidden" name="qindent" value="${dto.qindent}">
		<input type="hidden" name="qansnum" value="${dto.qansnum}">
		
		<input type="hidden" name="col" value="${param.col}">
		<input type="hidden" name="word" value="${param.word}">
		<input type="hidden" name="nowPage" value="${param.nowPage}">

		<div class="form-group">
		<label class="control-label col-sm-2" for="id">작성자</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="id" name="id">
		</div>
			
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qna_title">제목 :</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="qtitle" name="qtitle" value="${dto.qtitle}">
		</div>
			
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qcontent">내용 :</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="qcontent" name="qcontent">
		</div>
			
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qpasswd">Password :</label>
		<div class="col-sm-6">
			<input type="password" class="form-control" id="qpasswd" name="qpasswd">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="qfname">파일명 :</label>
		<div class="col-sm-6">
			<input type="file" class="form-control" id="qfname" name="qfnameMF">
		</div>
			
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-8">
			<button type="submit" class="btn btn-default">답변</button>
			<button type="reset" class="btn btn-default">취소</button>
		</div>
	</div>	
</form>
</div>
</body>
</html>