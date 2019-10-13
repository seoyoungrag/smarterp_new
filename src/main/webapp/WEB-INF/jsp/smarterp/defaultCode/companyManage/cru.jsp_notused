<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/jsp/smarterp/include/header.jsp" flush="true" />
<script type="text/javascript" src="<c:url value='/js/companyManage.js'/>"></script>
<script type="text/javascript" src="<c:url value='/datepicker/js/bootstrap-datepicker.min.js'/>"></script>
<link href="<c:url value='/datepicker/css/bootstrap-datepicker3.standalone.min.css'/>" rel="stylesheet" type="text/css" />
<script>
$(document).ready(function($){
	<c:if test="${isEdit != 'true'}">
	$("input, select", "#comForm").prop('disabled',true);
	</c:if>
});
$.fn.datepicker.dates['kr'] = {
		days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
		daysShort: ["일", "월", "화", "수", "목", "금", "토", "일"],
		daysMin: ["일", "월", "화", "수", "목", "금", "토", "일"],
		months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
        clear: "초기화"
};
$('.calendar').datepicker({
    format: "yyyy/mm/dd",
    clearBtn: true,
    language: "kr"
});
</script>
<div id="kt_header" class="kt-header kt-grid__item " data-ktheader-minimize="on">
<div class="kt-container  kt-container--fluid ">
	<!-- begin:: Subheader -->
	<div class="kt-subheader   kt-grid__item">
		<div class="kt-subheader__main">
			<h3 class="kt-subheader__title">회사등록</h3>
			<span class="kt-subheader__separator kt-hidden"></span>
		</div>
	</div>
	<div class="kt-header__topbar">
		<div class="kt-header__topbar-item" data-toggle="kt-tooltip" title="" data-placement="right">
	        <div class="kt-header__topbar-wrapper">
	            <span class="kt-header__topbar-icon"onclick="javascript:fn_goLinkToErpContent('/dc/cm/list.do');">취소<!-- <i class="flaticon2-writing"></i> --></span>
	        </div>
	    </div>
		<div class="kt-header__topbar-item" data-toggle="kt-tooltip" title="" data-placement="right" id="companyAddBtn1">
	        <div class="kt-header__topbar-wrapper">
	            <span class="kt-header__topbar-icon" onclick="javascript:fn_companySave();">저장<!-- <i class="flaticon2-add-1"></i> --></span>
	        </div>
	    </div>
    </div>
	<jsp:include page="/WEB-INF/jsp/smarterp/include/topbarForAll.jsp" flush="true" />
	</div>
</div>
<!-- begin:: Content -->
<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="companyManageContent">
	<div class="kt-subheader kt-grid__item" id="kt_subheader">
		<div class="kt-container  kt-container--fluid ">
			<div class="kt-subheader__main">
				<h3 class="kt-subheader__title">회사코드관리</h3>
			</div>
			<div class="kt-subheader__toolbar">
			    <div class="kt-subheader__wrapper">
			        <a href="javascript:fn_goLinkToErpContent('/dc/cm/list.do');" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="추가" d="companyAddBtn2">
			        취소</a>
			        <a href="javascript:fn_companySave();" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="삭제" d="companyDeleteBtn2">
			        저장</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
		<!--begin::Portlet-->
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12">
				<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
					<div class="kt-portlet kt-portlet--tabs">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-toolbar">
								<ul class="nav nav-tabs nav-tabs-space-xl nav-tabs-line nav-tabs-bold nav-tabs-line-3x nav-tabs-line-brand" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#kt_users_edit_tab_1" role="tab" aria-selected="true"> <i class="flaticon2-calendar-3"></i> 기본등록사항</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#kt_users_edit_tab_2" role="tab" aria-selected="false"> <i class="flaticon2-protected"></i> 추가등록사항</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="kt-portlet__body pb-0 pt-0" id="tab_parent">
							<form action="<c:url value='/dc/cm/cuProc.do'/>" method="post" id="comForm" class="needs-validation" novalidate>
								<input type="hidden" name="companyId" value="${company.companyId}"/>
								<!--begin: Tab Content-->
								<div class="tab-content kt-margin-t-20 kt-margin-b-20">
									<!--begin: Tab-->
									<jsp:include page="cru_tab1.jsp" flush="true" />
									<!--end: Tab-->
									<!--begin: Tab-->
									<jsp:include page="cru_tab2.jsp" flush="true" />
									<!--end: Tab-->
								</div>
							</form>		
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end::Portlet-->