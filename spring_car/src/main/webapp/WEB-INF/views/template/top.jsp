<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<c:out value="${sessionScope.grade }"/>
<c:out value="${sessionScope.id }"/>

<c:choose>
	<c:when test="${not empty sessionScope.id and sessionScope.grade == 'a' }">
		<c:set var="str">관리자 페이지입니다</c:set>

	</c:when>
	<c:when test="${not empty sessionScope.id and sessionScope.grade != 'a' }">
		<c:set var="str">안녕하세요 ${sessionScope.id }님</c:set>
	</c:when>
	<c:otherwise>
		<c:set var="str">기본 페이지 입니다 ^-----------^</c:set>
	</c:otherwise>
</c:choose>


<!DOCTYPE HTML>
<html>
	<head>
		<title>Spatial by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${root }/assets/css/main.css" />
		<script type="text/javascript" src="${root }/assets/js/jquery.min.js"></script>
		<script type="text/javascript" src="${root }/assets/js/skel.min.js"></script>
		<script type="text/javascript" src="${root }/assets/js/util.js"></script>
		<script type="text/javascript" src="${root }/assets/js/main.js"></script>
	</head>
	<body class="landing">

		<!-- Header -->
		<header id="header" class="alt">
			<h1><strong><a href="index.html">HAP</a></strong> Team project</h1>
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="">Board</a></li>
					<li><a href="">Reservation</a></li>
					<li><a href="#">더보기</a>
						<ul><a href="${root }/notice/listNotice">Notice</a></ul>
						<ul><a href="${root }/notice/listNotice">QnA</a></ul>
					</li>
<%-- 					<li><a href="${root }/notice/listNotice">Notice</a></li> --%>
<%-- 					<li><a href="${root }/notice/listNotice">QnA</a></li> --%>
					<li><a href="">Log-in</a></li>
					<li><a href="">Join</a></li>
						
				</ul>
			</nav>
		</header>

		<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

		<!-- Banner -->
		
		<section id="banner">
			<h2>Logo</h2>
			<p>Logo자리 <br /> 간단 사이트 설명?</p>
			<ul class="actions">
				<li><a href="#" class="button special big">지역검색</a></li>
			</ul>
		</section>
	</body>
</html>
