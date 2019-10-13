<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="tab-pane active" id="kt_users_edit_tab_1" role="tabpanel">
	<div class="kt-form kt-form--label-right">
		<div class="kt-form__body">
			<div class="kt-section kt-section--first">
				<div class="kt-section__body">
					<div class="kt-portlet__body border mb-3">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">사업장명</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="workplaceNm"  value="${workplace.workplaceNm}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">사업자등록번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="comRegNum"  value="${workplace.comRegNum}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">법인등록번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="corRegNum"  value="${workplace.corRegNum}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">대표자성명</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="bossNm" value="${workplace.bossNm}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
					</div>
					<div class="kt-portlet__body border mb-3">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">사업장우편번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="hqPostcode" value="${workplace.hqPostcode}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">사업장주소</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="hqAddr" value="${workplace.hqAddr}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">사업장번지</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="hqAddrDetail"  value="${workplace.hqAddrDetail}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">전화번호</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${workplace.hqPhone1}" name="hqPhone1" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
								<div class="input-group-append">
									<span class="input-group-text">)</span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${workplace.hqPhone2}" name="hqPhone2" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">FAX번호</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${workplace.hqFax1}" name="hqFax1" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
								<div class="input-group-append">
									<span class="input-group-text">)</span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${workplace.hqFax2}" name="hqFax2" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">업태</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.comBiz}"  name="comBiz" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label" >종목</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.comCate}" name="comCate" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">관할세무서</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${workplace.taxofficeCode}" name="taxofficeCode" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
								<div class="input-group-append">
									<span class="input-group-text">)</span>
	  							</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${workplace.taxofficeAreaNm}" name="taxofficeAreaNm" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">개업연월일</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<fmt:formatDate var="comOpenDStr" value="${workplace.comOpenD}" pattern="yyyy/MM/dd" />
								<input class="form-control calendar" type="text" value="${comOpenDStr}" name="comOpenD"  required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">폐업연원일</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<fmt:formatDate var="comCloseDStr" value="${workplace.comCloseD}" pattern="yyyy/MM/dd" />
								<input class="form-control calendar" type="text" value="${comCloseDStr}" name="comCloseD">
							</div>
						</div>
					</div>
					<div class="kt-portlet__body border">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">본점여부</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<select class="form-control" name="isHq">
									<option value="0" <c:if test="${workplace.isHq=='0'}">selected="selected"</c:if> >0. 부</option>
									<option value="1" <c:if test="${workplace.isHq=='1'}">selected="selected"</c:if> >1. 본점</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">이행상황신고구분</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<select class="form-control" name="isImpleStatusReported">
									<option value="0" <c:if test="${workplace.isImpleStatusReported=='0'}">selected="selected"</c:if> >0. 월별</option>
									<option value="1" <c:if test="${workplace.isImpleStatusReported=='1'}">selected="selected"</c:if> >1. 연별</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>								