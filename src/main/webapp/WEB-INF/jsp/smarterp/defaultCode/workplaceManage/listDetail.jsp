<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div class=" kt-container--fluid  kt-grid__item kt-grid__item--fluid">
				<div class="kt-portlet">
					<div class="kt-portlet__body p-1 m-0">
						<div class="tab-content kt-margin-t-20 kt-margin-b-20">
							<div class="table-responsive" id="kt_page_portlet">
								<table id="datatable1" class="table">
									<thead class="kt-datatable__head">
										<tr>
											<th data-field="workplaceId" class="">코드</th>
											<th data-field="workplaceNm" class="">사업자명</th>
										</tr>
									</thead>
									<tbody class="" style="">
									<c:forEach var="workplace" items="${workplaceList}" varStatus="status">
							        	<tr data-row="0" class="" style="left: 0px;">
											<td class=" "	data-field="companyId">${workplace.workplaceId}</td>
											<td class=" "	data-field="companyNm">${workplace.workplaceNm}</td>
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
