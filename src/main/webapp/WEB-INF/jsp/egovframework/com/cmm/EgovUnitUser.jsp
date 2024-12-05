<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/cmm/main.css' />">
<title>eGovFrame 공통 컴포넌트</title>
</head>


<frameset frameborder="0" framespacing="0" rows="75, *, 45">
	<frame name="_top" src="${pageContext.request.contextPath}/EgovTop.do" scrolling="no" title="헤더">
		<frameset frameborder="0" framespacing="0" cols="20%, 80%">
			<frame name="_left" src="${pageContext.request.contextPath}/EgovLeft.do" scrolling="yes" title="메뉴페이지">
			<frame name="_content" src="${pageContext.request.contextPath}/EgovUserContent.do" title="사용자페이지 테스트">
		</frameset>
	<frame name="_bottom" src="${pageContext.request.contextPath}/EgovBottom.do" scrolling="no" title="푸터">
</frameset>