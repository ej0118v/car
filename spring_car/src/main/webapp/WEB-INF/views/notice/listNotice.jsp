<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<!DOCTYPE html>
<html>
<head>
<title>Notice List</title>
<meta charset="utf-8">
<style type="text/css">
#notice_select{
	width=50px;
}
#notice_input{
	width=200px;
}
</style>
<script type="text/javascript">
	function read(nnum) {
		var url = "readNotice";
		url += "?notice_num="+nnum;
		url +="&col=${col}";
		url +="&word=${word}";
		url+="&nowPage=${nowPage}";
		location.href = url;
	}
</script>
</head>
<body>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list }">
						<tr><td colspan="6">등록된 글이 없음</td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="dto" items="${list }">
							<tr><td>${dto.nnum}</td>
							<td>
							<a href="javascript:read('${dto.nnum}')">${dto.ntitle}</a>
							<c:if test="${util:newImg(dto.nwdate) }">
								<img src="${pageContext.request.contextPath }/images/new.gif">
							</c:if>
							</td>
							<td>${dto.id}</td>
							
							</tr>
						</c:forEach>				
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>

<!-- 		<div class="notice"> -->
<!-- 			<div class="tab" style="display:inline;min-width:1200px;"> -->
<!-- 				<span style="display:inline;float:left;width:600px">공지사항</span> -->
<!-- 				<span style="display:inline;float:light;width:600px">Q n A</span> -->
<!-- 			</div> -->
<!-- 			<div class="tab_each"> -->
<!-- 				<ul id="notices" class="show_list open_list"> -->
<%-- 				<c:forEach var="dto" items="${list }"> --%>
<!-- 					<li> -->
<!-- 						<a href="javascript:readNotice(dto.notice_num)"> -->
<%-- 							<p>${dto.notice_title }</p> --%>
<%-- 							<span>${dto.notice_wdate }</span> --%>
<!-- 						</a> -->
<!-- 					</li> -->
<%-- 				</c:forEach> --%>
<!-- 				</ul> -->
				
<!-- 			</div> -->
<!-- 		</div> -->



		<div>
		${paging }
		</div>
		
		<form class="form-inline" action="./listNotice">
			<div class="form-group">
				<select class="form-control" name="col" id="notice_select">
					<option value="id" <c:if test="${col=='id' }">selected</c:if>>성명</option>
					<option value="title" <c:if test="${col=='ntitle' }">selected</c:if>>제목</option>
					<option value="content" <c:if test="${col=='ncontent' }">selected</c:if>>내용</option>
					<option value="title_content" <c:if test="${col=='ntitle_content' }">selected</c:if>>제목+내용</option>
					<option value="total" <c:if test="${col=='total' }">selected</c:if>>전체검색</option>
					</select>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="검색어 입력" name="word" value="${word}" id="notice_input">
			</div>
			<button type="submit" class="btn btn-default">검색</button>
			<button type="button" class="btn btn-default" onclick="location.href='./createNotice'">등록</button>
		</form>

<!-- 		<form class="form-inline" method="get" > -->
<!-- 			<input type="hidden" name="page" value="1"> -->
<!-- 			<input type="text" class="form-control" placeholder="Enter 검색어" name="word" value=""> -->
<!-- 			<span class="mypage_search_date_middle">~</span> -->
<!-- 			<input type="text" class="form-control" id="end_date" class="mypage_search_date_input" value=""> -->
			
<!-- 			<input type="image" class="mypage_search_btn" src="/resource/img/order_result_search_btn_image.png"> -->
			
<!-- 			<input type="button" class="mypage_init_btn" id="order_search_init" value="검색 초기화"> -->
<!-- 		</form> -->


	</div>
</body>
</html>