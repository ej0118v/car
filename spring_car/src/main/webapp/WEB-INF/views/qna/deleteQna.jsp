<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="well well-lg">
			<c:choose>
				<c:when test="${flag>0 }">
					<p id="red">답변이 있는 글이므로 삭제할 수 없습니다.</p>
					<br>
					<button type="button" class="btn btn-default" onclick="history.back()">뒤로가기</button>
				</c:when>
				<c:otherwise>
					<h1 class="col-sm-offset-2 col-sm-10">삭제</h1>
					<form class="form-horizontal" action="deleteQna" method="post" enctype="multipart/form-data">
						<input type="hidden" name="qnum" value="${param.qnum}">
						<input type="hidden" name="col" value="${param.col}>"> 
						<input type="hidden" name="word" value="${param.word}"> 
						<input type="hidden" name="nowPage" value="${param.nowPage}"> 
						<input type="hidden" name="qoldfile" value="${param.qoldfile}">

						<div class="form-group">
							<label class="control-label col-sm-2" for="qpasswd">비밀번호 :</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" id="qpasswd"
									placeholder="Enter password" name="qpasswd" required="required">
							</div>
						</div>

						<p id="red" class="col-sm-offset-2 col-sm-6">삭제하면 복구할 수 없음</p>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8">
								<button type="submit" class="btn btn-default">삭제</button>
								<button type="reset" class="btn btn-default" onclick="location.href='./listQna'">취소</button>
						</div>
					</div>
				</form>
			</c:otherwise>
		</c:choose>
	</div>
</div>
</body>
</html>