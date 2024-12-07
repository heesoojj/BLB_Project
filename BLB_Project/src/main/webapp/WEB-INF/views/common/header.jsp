<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뷰라밸 - 헤더</title>
    <!-- jQuery 3.7.1 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Bootstrap 4.6.2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Bootstrap 4.6.2 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    
    <!-- header CSS -->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/common/header.css">

    <!-- header Javascript -->
    <script src="${ pageContext.request.contextPath }/resources/js/common/header.js"></script>

    <!-- Google Fonts Icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	
	<!--  Alertify 라이브러리 연동구문 (CDN) -->
	<!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/alertify.min.js"></script>
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/themes/semantic.min.css"/>

</head>
<body>
	<c:if test="${ not empty sessionScope.alertMsg }">
		<script>
		alertify.alert('Alert', '${ sessionScope.alertMsg }');
		</script>	
		<c:remove var="alertMsg" scope="session"/>
	</c:if>
	
    <nav class="navbar navbar-expand-md navbar-dark fixed-top transparent-navbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="${ pageContext.request.contextPath }/">
                <img src="${ pageContext.request.contextPath }/resources/images/BLB_logo.png">
            </a>

            <!-- 메뉴 버튼 (토글러 좌측) -->
            <div class="ml-auto d-flex align-items-center order-md-2">
                <a class="menu-btn" href="#">
                    <span class="material-symbols-outlined menu-icon">
                        search
                    </span>
                </a>
                <a class="menu-btn" href="#">
                    <span class="material-symbols-outlined menu-icon">
                        favorite
                    </span>
                </a>
                
                <!-- 장바구니 -->
                <a class="menu-btn" href="${ pageContext.request.contextPath }/list.ct">
                    <span class="material-symbols-outlined menu-icon">
                        shopping_bag
                    </span>
                </a>
                
                <!-- 로그인/마이페이지 -->
                <c:choose>
	                <c:when test="${ empty sessionScope.loginUser }">
		                <a class="menu-btn" href="${ pageContext.request.contextPath }/loginForm.me">
		                    <span class="material-symbols-outlined menu-icon last-btn">
		                        person
		                    </span>
		                </a>
	           		</c:when>
	                <c:otherwise>
	                	<a class="menu-btn" href="${ pageContext.request.contextPath }/myPage.me">
		                    <span class="material-symbols-outlined menu-icon">
		                        person_check
		                    </span>
		                </a>	
	               	 	<a class="menu-btn" href="${ pageContext.request.contextPath }/logout.me">
		                    <span class="material-symbols-outlined menu-icon last-btn">
		                        Logout
		                    </span>
		              	</a>
	            	</c:otherwise>
            	</c:choose>
            </div>

            <!-- 토글 버튼 -->
            <button class="navbar-toggler order-md-3" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="toggler-icon"></span>
                <span class="toggler-icon"></span>
                <span class="toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse order-md-1" id="navbarNav">
                <ul class="navbar-nav">
                    <!-- 제품보기 드롭다운 메뉴 -->
	                <li class="nav-item dropdown custom-dropdown">
					    <a class="nav-link" href="${ pageContext.request.contextPath }/list.pr">제품보기</a>
					    <div class="custom-dropdown-menu">
					        <a class="dropdown-item" href="${ pageContext.request.contextPath }/list.pr">전체제품</a>
					        <a class="dropdown-item" href="#">스킨케어</a>
					        <a class="dropdown-item" href="#">메이크업</a>
					        <a class="dropdown-item" href="#">맨즈</a>
					        <a class="dropdown-item" href="#">헤어/바디</a>
					    </div>
					</li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">베스트</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">신제품</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">리뷰</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Faq.blb">고객센터</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Back to Top Button -->
    <button id="backToTop">&#8679;</button>

</body>
</html>