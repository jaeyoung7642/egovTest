<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : EgovUnitContent.jsp
  * @Description : 로그인 성공후 컨텐츠 영역
  * @Modification Information
  * 
  * @수정일               수정자            수정내용
  *  ----------   --------   ---------------------------
  *  2020.06.23   신용호            세션만료시간 보여주기
  *
  *  @author 공통서비스 개발팀 신용호
  *  @since 2009.03.03
  *  @version 1.0
  *  @see
  *
  *  Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>eGovFrame</title>
<link rel="stylesheet" href="/egovframework-all-in-one/css/common.css">
<link rel="stylesheet preload" as="style" crossorigin href="/egovframework-all-in-one/css/font.css" />
<link rel="stylesheet" href="/egovframework-all-in-one/css/egovframework/com/cmm/swiper-bundle.css">
<link type="text/css" rel="stylesheet" href="/egovframework-all-in-one/css/jqueryui.css">
<script src="<c:url value='/js/egovframework/com/cmm/jquery.js' />"></script>
<script src="<c:url value='/js/egovframework/com/cmm/jqueryui.js' />"></script>
<script src="<c:url value='/js/egovframework/com/cmm/swiper-bundle.min.js' />"></script>
<script src="<c:url value='/js/egovframework/com/cmm/jquery.kinetic.min.js' />"></script>
<script src="<c:url value='/js/egovframework/com/cmm/common.js' />"></script>
<script src="<c:url value='/js/egovframework/com/cmm/lenis.min.js' />"></script>
</head>
<body>
<h1>dddd</h1>
	<header id="header" class="ly_header preload">
	<div class="header_inner ly_inner">

		<h1 class="header_logo">
			<a href="/">
				<img src="/resources/common/images/common/logo.svg" alt="">
				<span class="blind">KCC EGIS</span>
			</a>
		</h1>

		<!-- toggle (mo only) -->
		<button class="el_btn openNav p_show" aria-label="메뉴 열기" data-svg="menu"></button>
		<!-- //toggle -->
		
		<!-- navigation -->
		<nav id="navigation" class="navigation">
			<div class="inner">
			<h2 id="nav" class="blind">메뉴</h2>
			
				<!-- nav header (mo only) -->
				<div class="nav_header">
					<button class="el_btn closeNav p_show" aria-label="메뉴 닫기">
						<img src="/resources/common/images/common/ico_close.svg" alt="">
					</button>
					<div class="header_logo p_show">
						<a href="/">
							<img src="/resources/common/images/common/logo.svg" alt="">
							<span class="blind">KCC EGIS</span>
						</a>
					</div>
				</div>
				<!-- // nav header (mo only) -->

				<!-- nav body -->
				<div class="nav_body" data-lenis-prevent>
					<ul class="gnb_list">
						<c:forEach var="result" items="${list_menulist}" varStatus="status" >
							<c:if test="${result.upperMenuId == '0' }">
								<li class="gnb_li hasSub">
									<a href="<c:url value='${result.menuUrl}' />" class="gnb_link">${result.menuNm}</a>
								<div class="gnb_sub">
									<ul class="sub_list">
										<c:forEach var="result2" items="${list_menulist}" varStatus="status" >
											<c:if test="${result.menuNo == result2.upperMenuId }">
												<li><a href="<c:url value='${result2.menuUrl}' />" class="sub_link">${result2.menuNm }</a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								</li> 
							</c:if>
						</c:forEach>
					</ul>

					<!-- sns -->
					<div class="header_utils sns">
						<a href="INSTAGRAM" target="_blank" rel="noreferrer" aria-label="인스타그램(새창열림)" class="el_btn ccl in siteLink">
							<img src="/resources/common/images/common/sns_instagram.svg" alt="">
						</a>
						<a href="FACEBOOK" target="_blank" rel="noreferrer" aria-label="페이스북(새창열림)" class="el_btn ccl fa siteLink">
							<img src="/resources/common/images/common/sns_facebook.svg" alt="">
						</a>
						<a href="NAVERPOST" target="_blank" rel="noreferrer" aria-label="네이버포스트(새창열림)" class="el_btn ccl na siteLink">
							<img src="/resources/common/images/common/sns_post.svg" alt="">
						</a>
					</div>
					<!-- //sns -->
				</div>
				<!-- //nav body -->

			</div>
		</nav>
		
		<!-- utils -->
		<div class="header_utils utils">
			<c:if test="${loginUserMap == null}">
			<a href="loginForm" aria-label="로그인" class="el_btn" data-svg="login"></a>
			</c:if>
			<c:if test="${loginUserMap != null}">
			<a href="logout" aria-label="로그아웃" class="el_btn" data-svg="logout"></a>
			</c:if>
			<a href="mypage" aria-label="마이페이지" class="el_btn" data-svg="mypage"></a>
			<a href="ticket" class="el_btn p_hide" data-svg="ticket"></a>
			<button type="button" aria-label="전체 메뉴 열기" class="el_btn p_hide openAllMenu" data-svg="menu" aria-expanded="false"></button>
		</div>
		<!-- //utils -->
	</div>
</header>
</body>
</html>




