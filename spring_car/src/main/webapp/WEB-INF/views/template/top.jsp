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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="${root }/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="${root }/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>

<div id="header" class="container">
	<div id="logo">
		<h1><a href="#">TailPiece</a></h1>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="#" accesskey="1" title="">Homepage</a></li>
			<li><a href="#" accesskey="3" title="">Gallery</a></li>
			<li><a href="${root }/notice/listNotice" accesskey="3" title="">notice</a></li>
			<li><a href="#" accesskey="5" title="">Contact</a></li>
		</ul>
	</div>
</div>
</body>
</html>
