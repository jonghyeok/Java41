<%@page import="net.bitacademy.java41.vo.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
<link rel="stylesheet" href="${rootPath}/css/base.css">
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<jsp:include page="/sidebar.jsp"></jsp:include>

<div id="content">
<h1>멤버 정보</h1>
이메일: ${memberInfo.email}<br>
이름: ${memberInfo.name }<br>
전화: ${memberInfo.tel }<br> 
블로그: ${memberInfo.blog }<br>
상세주소: ${memberInfo.detailAddress }<br>
태그: ${memberInfo.tag }<br>
등록일: ${memberInfo.regDate }<br>
권한:
<c:choose>
<c:when test="${memberInfo.level == 0}">일반회원</c:when>
<c:when test="${memberInfo.level == 1}">관리자</c:when>
<c:when test="${memberInfo.level == 2}">PM</c:when>
<c:otherwise>손님</c:otherwise>
</c:choose><br>

<p>
<a href="list">[목록]</a>
<a href="passwordChange?email=${memberInfo.email}">[암호변경]</a>
</p>
</div>

<jsp:include page="/tail.jsp"></jsp:include>

</body>
</html>









