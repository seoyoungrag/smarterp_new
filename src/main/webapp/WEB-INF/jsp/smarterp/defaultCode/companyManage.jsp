<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="/WEB-INF/jsp/smarterp/include/header.jsp" flush="true" />
<script type="text/javascript" src="<c:url value='/js/companyManage.js'/>"></script>
<script>
$(document).ready(function($){
	$("#datatable1 tr").click(function () {
	    $('.selected').removeClass('selected');
	    $(this).addClass("selected");
		fn_companySelect_tab();
	});
});
</script>
<style>
tr.selected {
	background-color:silver;
}
</style>
<script type="text/javascript" src="<c:url value='/datepicker/js/bootstrap-datepicker.min.js'/>"></script>
<link href="<c:url value='/datepicker/css/bootstrap-datepicker3.standalone.min.css'/>" rel="stylesheet" type="text/css" />
<script>
$(document).ready(function($){
	<c:if test="${isEdit != 'true'}">
	$("input, select", "#comForm").prop('disabled',true);
	$(".saveBtn").hide();
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
function fn_activateForm(){
	$("input, select", "#comForm").prop('disabled',false);
	$(".saveBtn").show();
	$(".addBtn").hide();
}
function fn_saveBtnClicked_tab(){
		var isValid = true;
		if ($("#comForm")[0].checkValidity() === false) {
			isValid = false;
		}
		if(isInt($("#comForm input[name=accOrder]").val())){
			$("#comForm input[name=accOrder]").next().hide();
		} else{
			$("#comForm input[name=accOrder]").next().show();
			isValid = false;
		}
		$("#comForm")[0].classList.add('was-validated');
		if(isValid == true){
			if(confirm("저장하시겠습니까?")){
				$.ajax({						
					type: 'post',						
					url : getContextPath()+'/dc/cm/cuProcTab.do',
					data: $("#comForm").serialize(),
					dataType: "html",						
					success: function(data){
						var content = $("#listDetail");
						content.empty();
						content.append(data);		
						$("input, select", "#comForm").prop('disabled',true);
						$(".saveBtn").hide();
						$(".addBtn").show();
						$("#datatable1 tr").click(function () {
						    $('.selected').removeClass('selected');
						    $(this).addClass("selected");
						    fn_companySelect_tab();
						});
					}					
				});
			}
		}
}
function fn_companyDelete_tab(){
	if($("td:nth-child(1)",$($("#datatable1").find('tr.selected')[0])).text().trim()!=''){
		if(confirm("삭제하시겠습니까?")){
			$.ajax({						
				type: 'post',						
				url : getContextPath()+'/dc/cm/dProcTab.do?companyId='+$("td:nth-child(1)",$($("#datatable1").find('tr.selected')[0])).text().trim(),						
				dataType: "html",						
				success: function(data){
					var content = $("#listDetail");
					content.empty();
					content.append(data);	
					$("#datatable1 tr").click(function () {
					    $('.selected').removeClass('selected');
					    $(this).addClass("selected");
					    fn_companySelect_tab();
					});
				}					
			});		
		}
  		return;
	}else{
		alert('리스트에서 회사를 선택해주세요.');
  		return;
	}
}
function fn_companySelect_tab(){
    var companyId = $("td:nth-child(1)",$($("#datatable1").find('tr.selected')[0])).text().trim();
    if(!companyId){
    	alert("회사를 선택해주세요.");
    	return false;
    }
	$.ajax({						
		type: 'post',						
		url : getContextPath()+'/dc/cm/cruTab.do?companyId='+$("td:nth-child(1)",$($("#datatable1").find('tr.selected')[0])).text().trim(),						
		dataType: "html",						
		success: function(data){
			var content = $("#cruDetail");
			content.empty();
			content.append(data);	
			fn_activateForm();
		}					
	});		
}
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
								<div class="kt-header__topbar-item addBtn" data-toggle="kt-tooltip" title="" data-placement="right" onclick="javascript:fn_activateForm();">
							        <div class="kt-header__topbar-wrapper">
							            <span class="kt-header__topbar-icon">추가<!-- <i class="flaticon2-add-1"></i> --></span>
							        </div>
							    </div>
								<div class="kt-header__topbar-item saveBtn" data-toggle="kt-tooltip" title="" data-placement="right" onclick="javascript:fn_saveBtnClicked_tab();">
							        <div class="kt-header__topbar-wrapper">
							            <span class="kt-header__topbar-icon">저장<!-- <i class="flaticon2-add-1"></i> --></span>
							        </div>
							    </div>
								<div class="kt-header__topbar-item" data-toggle="kt-tooltip" title="" data-placement="right" onclick="javascript:fn_companyDelete_tab();">
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
									        <a href="javascript:fn_activateForm();" class="btn btn-icon btn btn-label btn-label-brand btn-bold addBtn"  data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="저장">
									        추가</a>
									        <a href="javascript:fn_saveBtnClicked_tab();" class="btn btn-icon btn btn-label btn-label-brand btn-bold saveBtn" data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="추가">
									        저장</a>
									        <a href="javascript:fn_companyDelete_tab();" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="" data-placement="top" data-original-title="삭제">
									        삭제</a>
									    </div>
									</div>
								</div>
							</div>
							<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
								<!--begin::Portlet-->
								
								<div class="row">
									<div class="col-xs-4 col-sm-4 col-md-4" id="listDetail">
										<jsp:include page="/WEB-INF/jsp/smarterp/defaultCode/companyManage/listDetail.jsp" flush="true" />
									</div>
									<div class="col-xs-8 col-sm-8 col-md-8" id="cruDetail">
										<jsp:include page="/WEB-INF/jsp/smarterp/defaultCode/companyManage/cruDetail.jsp" flush="true" />
									</div>
								</div>  
							</div><!--end::Portlet--> 
						</div><!-- end:: Content -->
					</div>