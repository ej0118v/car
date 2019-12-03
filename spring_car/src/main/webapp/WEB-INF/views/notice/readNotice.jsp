<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice read</title>
<script type="text/javascript">
function listNotice(){
	var url="listNotice";
	url+="?col=${param.col}";
	url+="&word=${param.word}";
	url+="&nowPage=${param.nowPage}";
	location.href=url;
}
function updateNotice(){
	var url="updateNotice";
	url+="?nnum=${dto.nnum}";
	url+="&col=${param.col}";
	url+="&word=${param.word}";
	url+="&nowPage=${param.nowPage}";
	url+="&noldfile=${dto.nfname}";
	location.href=url;
}
function deleteNotice(){
	var url="deleteNotice";
	url+="?nnum=${dto.nnum}";
	url+="&col=${param.col}";
	url+="&word=${param.word}";
	url+="&nowPage=${param.nowPage}";
	url+="&noldfile=${dto.nfname}";
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
		<div class="panel-body">${dto.nitle}</div>
		
		<div class="panel-heading">내용</div>
		<div class="panel-body">${dto.ncontent}</div>
		
		<div class="panel-heading">조회수</div>
		<div class="panel-body">${dto.nviewcnt}</div>
		
		<div class="panel-heading">파일명</div>
		<div class="panel-body">${dto.nfilename}</div>
		
		<div class="panel-heading">등록일</div>
		<div class="panel-body">${dto.nwdate}</div>
		
	</div>
	<button class="btn btn-default" onclick="location.href='./createNotice'">등록</button>
	<button class="btn btn-default" onclick="javascript:updateNotice()">수정</button>
	<button class="btn btn-default" onclick="javascript:deleteNotice()">삭제</button>
	<button class="btn btn-default" onclick="javascript:listNotice()">목록</button>

	
</div><!-- container -->
</body>
</html>