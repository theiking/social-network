<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />
<title>News Feed | Check what your friends are doing</title>

<!-- Stylesheets
    ================================================= -->
<link rel="stylesheet" href='<c:url value="resources/css/bootstrap.min.css"></c:url>' />
<link rel="stylesheet" href="<c:url value="resources/css/style.css"></c:url>" />
<link rel="stylesheet" href="<c:url value="resources/css/ionicons.min.css"></c:url>" />
<link rel="stylesheet" href="<c:url value="resources/css/font-awesome.min.css"></c:url>" />
<link href="<c:url value="resources/css/emoji.css"></c:url>" rel="stylesheet">
<!--Google Webfont-->
<link
	href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700'
	rel='stylesheet' type='text/css'>
<!--Favicon-->
<link rel="shortcut icon" type="image/png" href='<c:url value="resources/images/fav.png"></c:url>' />
</head>
<body>

	<jsp:include page="/WEB-INF//views/user/decorators/header.jsp" />
	<div id="page-contents">
    	<div class="container">
    		<div class="row">
    				<jsp:include page="/WEB-INF/views/user/decorators/sidebarleft.jsp" />
    					<dec:body />
    				<jsp:include page="/WEB-INF/views/user/decorators/sidebarright.jsp" />
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF//views/user/decorators/footer.jsp" />
	   
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>
    
    <!-- Scripts
    ================================================= -->
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&callback=initMap"></script>
    <script src='<c:url value="resources/js/jquery-3.1.1.min.js"></c:url>'></script>
    <script src='<c:url value="resources/js/bootstrap.min.js"></c:url>'></script>
    <script src='<c:url value="resources/js/jquery.sticky-kit.min.js"></c:url>'></script>
    <script src='<c:url value="resources/js/jquery.scrollbar.min.js"></c:url>'></script>
    <script src='<c:url value="resources/js/script.js"></c:url>'></script>
</body>
</html>