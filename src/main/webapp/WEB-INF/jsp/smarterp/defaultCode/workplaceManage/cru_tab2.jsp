<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="tab-pane" id="kt_users_edit_tab_2" role="tabpanel">
	<div class="kt-form kt-form--label-right">
		<div class="kt-form__body">
			<div class="kt-section kt-section--first">
				<div class="kt-section__body">
					<div class="kt-portlet__body border mb-3">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">주업종코드</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${workplace.mainBizCd}" name="mainBizCd">
								<div class="input-group-append">
									<span class="input-group-text">)</span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${workplace.mainBizCdNm}" name="mainBizCdNm">
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">지방세신고지(행정동)</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${workplace.localTaxReturnAdminNum}" name="localTaxReturnAdminNum">
								<div class="input-group-append">
									<span class="input-group-text">)</span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${workplace.localTaxReturnAdminAddr}" name="localTaxReturnAdminAddr">
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">지방세신고지(법정동)</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${workplace.localTaxReturnNotifyNum}" name="localTaxReturnNotifyNum">
								<div class="input-group-append">
									<span class="input-group-text">)</span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${workplace.localTaxReturnNotifyAddr}" name="localTaxReturnNotifyAddr">
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">지방세개인법인구분</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${workplace.localTaxClassCd}" name="localTaxClassCd">
								<div class="input-group-append">
									<span class="input-group-text">)</span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${workplace.localTaxClassValue}" name="localTaxClassValue">
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">전자신고ID</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="elecNotiId" value="${workplace.elecNotiId}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">주소지전화번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="addrPhoneNum" value="${workplace.addrPhoneNum}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">신고용휴대전화</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="reportPhoneNum" value="${workplace.reportPhoneNum}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">E-mail 주소</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="reportEmail" value="${workplace.reportEmail}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">주류코드</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<select class="form-control" name="reportLiquorCd">
									<option value="0" <c:if test="${workplace.reportLiquorCd=='0'}">selected="selected"</c:if> >0. 해당없음</option>
									<option value="1" <c:if test="${workplace.reportLiquorCd=='1'}">selected="selected"</c:if> >1. 해당</option>
								</select>
							</div>
						</div>
					</div>
					<div class="kt-portlet__body border">
					전자신고용 신주소
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">시도</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.elecFilingSido}" name="elecFilingSido">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">시군구</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.elecFilingSigungu}"  name="elecFilingSigungu">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">읍면</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.elecFilingEubmyeon}" name="elecFilingEubmyeon">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">도로명코드</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.elecFilingLoadCd}" name="elecFilingLoadCd">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">도로명</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.elecFilingLoadNm}" name="elecFilingLoadNm">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">지하(여부)</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<select class="form-control" name="electFilingIsBased">
									<option value="0" <c:if test="${workplace.electFilingIsBased=='0'}">selected="selected"</c:if> >0. 해당없음</option>
									<option value="1" <c:if test="${workplace.electFilingIsBased=='1'}">selected="selected"</c:if> >1. 해당</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">건물번호(본번)</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.elecBuildingMainNum}" name="elecBuildingMainNum">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">건물번호(부번)</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.elecBuildingSubNum}" name="elecBuildingSubNum">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>			
</div>												