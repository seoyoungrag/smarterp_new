<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="/WEB-INF/jsp/smarterp/include/header.jsp" flush="true" />
<!-- begin::Body -->
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--static kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-aside--enabled kt-aside--fixed kt-page--loading">
	<!-- begin:: Page -->
	<jsp:include page="include/toolbarForMobile.jsp" flush="true" />
	<div class="kt-grid kt-grid--hor kt-grid--root">
		<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
			<jsp:include page="include/leftAside.jsp" flush="true" />
			<div class="kt-grid kt-grid--hor kt-grid--root">
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page" style="padding: 0 !important;">
					<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="smartErpContent">   
					</div>
				</div>
				<!-- end:: Content -->
			</div>
		</div>
	</div>
	</div>
	<!-- end:: Page -->

	<!-- begin:: Scrolltop -->
	<div id="kt_scrolltop" class="kt-scrolltop">
		<i class="la la-arrow-up"></i>
	</div>
	<!-- end:: Scrolltop -->
</body>
<!-- end::Body -->

</html>