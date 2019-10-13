<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
									<jsp:include page="cru_tab1_mini.jsp" flush="true" />
									<!--end: Tab-->
									<!--begin: Tab-->
									<jsp:include page="cru_tab2.jsp" flush="true" />
									<!--end: Tab-->
								</div>
							</form>		
						</div>
					</div>
				</div>
