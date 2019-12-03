<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice read</title>
<script type="text/javascript">
function listQna(){
	var url="listQna";
	url+="?col=${param.col}";
	url+="&word=${param.word}";
	url+="&nowPage=${param.nowPage}";
	location.href=url;
}
function updateQna(){
	var url="updateQna";
	url+="?qnum=${dto.qnum}";
	url+="&col=${param.col}";
	url+="&word=${param.word}";
	url+="&nowPage=${param.nowPage}";
	url+="&qoldfile=${dto.qfname}";
	location.href=url;
}
function deleteQna(){
	var url="deleteQna";
	url+="?qnum=${dto.qnum}";
	url+="&col=${param.col}";
	url+="&word=${param.word}";
	url+="&nowPage=${param.nowPage}";
	url+="&qoldfile=${dto.qfname}";
	location.href=url;
}
function replqQna(){
	var url="replyQna";
	url+="?qnum=${dto.qnum}";
	url+="&col=${param.col}";
	url+="&word=${param.word}";
	url+="&nowPage=${param.nowPage}";
	location.href=url;
}
</script>
</head>
<body>
<div class="container">
	<h2>조회</h2>
	
	<div class="panel panel-default">
		<div class="panel-heading">작성자</div>
		<div class="panel-body">${dto.id}</div>
		
		<div class="panel-heading">제목</div>
		<div class="panel-body">${dto.qtitle}</div>
		
		<div class="panel-heading">내용</div>
		<div class="panel-body">${dto.qcontent}</div>
		
		<div class="panel-heading">조회수</div>
		<div class="panel-body">${dto.qviewcnt}</div>
		
		<div class="panel-heading">파일명</div>
		<div class="panel-body">${dto.qfilename}</div>
		
		<div class="panel-heading">등록일</div>
		<div class="panel-body">${dto.qwdate}</div>
		
	</div>
	<button class="btn btn-default" onclick="location.href='./createQna'">등록</button>
	<button class="btn btn-default" onclick="javascript:updateQna()">수정</button>
	<button class="btn btn-default" onclick="javascript:deleteQna()">삭제</button>
	<button class="btn btn-default" onclick="javascript:replqQna()">답변</button>
	<button class="btn btn-default" onclick="javascript:listQna()">목록</button>

	
</div><!-- container -->
</body>
</html>