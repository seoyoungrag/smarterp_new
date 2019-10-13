<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/jsp/smarterp/include/header.jsp" flush="true" />
<script type="text/javascript" src="<c:url value='/js/companyManage.js'/>"></script>
<script>
$(document).ready(function($){
	$("#datatable1 tr").click(function () {
		if($(this).hasClass('selected')){
			fn_companyView();
		}
	    $('.selected').removeClass('selected');
	    $(this).addClass("selected");
	    //fn_selectCompany(companyId);
	});
});
</script>
<style>
tr.selected {
	background-color:silver;
}
</style>
<script>
</script>
<div id="kt_header" class="kt-header kt-grid__item " data-ktheader-minimize="on">
<div class="kt-container  kt-container--fluid ">
	<!-- begin:: Subheader -->
	<div class="kt-subheader   kt-grid__item">
		<div class="kt-subheader__main">
			<h3 class="kt-subheader__title">회사목록</h3>
			<span class="kt-subheader__separator kt-hidden"></span>
		</div>
	</div>
	<div class="kt-header__topbar">
		<div class="kt-header__topbar-item" data-toggle="kt-tooltip" title="" data-placement="right" onclick="javascript:fn_goLinkToErpContent('/dc/cm/cru.do');">
	        <div class="kt-header__topbar-wrapper">
	            <span class="kt-header__topbar-icon">등록<!-- <i class="flaticon2-add-1"></i> --></span>
	        </div>
	    </div>
		<div class="kt-header__topbar-item" data-toggle="kt-tooltip" title="" data-placement="right" onclick="javascript:fn_companyView();">
	        <div class="kt-header__topbar-wrapper">
	            <span class="kt-header__topbar-icon">수정<!-- <i class="flaticon2-add-1"></i> --></span>
	        </div>
	    </div>
		<div class="kt-header__topbar-item" data-toggle="kt-tooltip" title="" data-placement="right" onclick="javascript:fn_companyDelete();">
	        <div class="kt-header__topbar-wrapper">
	            <span class="kt-header__topbar-icon">삭제<!-- <i class="flaticon2-trash"></i> --></span>
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
			        <a href="javascript:fn_goLinkToErpContent('/dc/cm/cru.do');" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="저장">
			        등록</a>
			        <a href="javascript:fn_companyView();" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="추가" d="companyAddBtn2">
			        수정</a>
			        <a href="javascript:fn_companyDelete();" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="삭제" d="companyDeleteBtn2">
			        삭제</a>
			    </div>
			</div>
	</div>
</div>
	<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
		<!--begin::Portlet-->
		<div class="row">
			<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
				<div class="kt-portlet">
					<div class="kt-portlet__body pb-0 pt-0">
						<div class="tab-content kt-margin-t-20 kt-margin-b-20">
							<div class="table-responsive" id="kt_page_portlet">
								<table id="datatable1" class="table">
									<thead class="kt-datatable__head">
										<tr>
											<th data-field="companyId" class="">코드</th>
											<th data-field="companyNm" class="">회사명</th>
											<th data-field="comType" class="" data-sort="desc">구분</th>
										</tr>
									</thead>
									<tbody class="" style="">
									<c:forEach var="compnay" items="${companyList}" varStatus="status">
							        	<tr data-row="0" class="" style="left: 0px;">
											<td class=" "	data-field="companyId">${compnay.companyId}</td>
											<td class=" "	data-field="companyNm">${compnay.companyNm}</td>
											<td class=" " data-field="comType">
									    	<c:choose>
									    		<c:when test="${company.comType=='0' }">
									    		법인
									    		</c:when>
									    		<c:otherwise>
									    		개인
									    		</c:otherwise>
									    	</c:choose>
											</td>
										</tr>
									</c:forEach>
									<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
										<div class="ps__thumb-x" tabindex="0"
											style="left: 0px; width: 0px;"></div>
									</div>
									<div class="ps__rail-y" style="top: 0px; right: 0px;">
										<div class="ps__thumb-y" tabindex="0"
											style="top: 0px; height: 0px;"></div>
									</div>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end::Portlet-->