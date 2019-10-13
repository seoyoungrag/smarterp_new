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
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">회사명</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="companyNm"  value="${company.companyNm}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3  col-form-label">회계기수</label>
							<div class="col-xs-5 col-sm-5 col-md-5 input-group">
								<div class="input-group-preappend">
									<span class="input-group-text">제</span>
	  							</div>
								<input class="form-control" type="text" name="accOrder" value="${company.accOrder}" required>
								<div class="invalid-tooltip">
								  정수값을 입력해주세요.
								</div>
								<div class="input-group-append">
									<span class="input-group-text">기</span>
	  							</div>
  							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3  col-form-label">회계년도</label>
							<div class="col-xs-4 col-sm-4 col-md-4 input-group pr-0 mr-0">
								<fmt:formatDate var="accStartDStr" value="${company.accStartD}" pattern="yyyy/MM/dd" />
								<input class="form-control calendar" type="text" name="accStartD" value="${accStartDStr}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
								<div class="input-group-append">
								    <span class="input-group-text">~</span>
								  </div>
						  </div>
							<div class="col-xs-4 col-sm-4 col-md-4 pl-0 ml-0">
								<fmt:formatDate var="accEndDStr" value="${company.accEndD}" pattern="yyyy/MM/dd" />
								<input class="form-control calendar" type="text" name="accEndD"  value="${accEndDStr}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">사업자등록번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="comRegNum"  value="${company.comRegNum}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">법인등록번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="corRegNum"  value="${company.corRegNum}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">대표자성명</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="bossNm" value="${company.bossNm}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">외국인여부</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<select name="isForeigner" class="form-control">
									<option value="0" <c:if test="${company.isForeigner=='0'}">selected="selected"</c:if> >0. 내국인</option>
									<option value="1" <c:if test="${company.isForeigner=='1'}">selected="selected"</c:if> >1. 외국인</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">주민등록번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="citiNum" value="${company.citiNum}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
					</div>
					<div class="kt-portlet__body border mb-3">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">본점우편번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="hqPostcode" value="${company.hqPostcode}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">본점주소</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="hqAddr" value="${company.hqAddr}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">본점번지</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="hqAddrDetail"  value="${company.hqAddrDetail}" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">본점전화번호</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${company.hqPhone1}" name="hqPhone1" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
								<div class="input-group-append">
									<span class="input-group-text">></span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${company.hqPhone2}" name="hqPhone2" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">본점FAX</label>
							<div class="col-xs-3 col-sm-3 col-md-3 input-group pr-0 mr-0">
								<input class="form-control" type="text" value="${company.hqFax1}" name="hqFax1" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
								<div class="input-group-append">
									<span class="input-group-text">></span>
	  							</div>
  							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 input-group pl-0 ml-0">
								<input class="form-control" type="text" value="${company.hqFax2}" name="hqFax2" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
						  </div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">업태</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${company.comBiz}"  name="comBiz" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label" >종목</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${company.comCate}" name="comCate" required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">회사계정유형</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<select class="form-control" name="comType">
									<option value="0" <c:if test="${company.comType=='0'}">selected="selected"</c:if>>0. 법인</option>
									<option value="1" <c:if test="${company.comType=='1'}">selected="selected"</c:if>>1. 개인</option>
								</select>
							</div>
						</div>
					</div>
					<div class="kt-portlet__body border">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">설립연월일</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<fmt:formatDate var="comEstDStr" value="${company.comEstD}" pattern="yyyy/MM/dd" />
								<input class="form-control calendar" type="text" value="${comEstDStr}" name="comEstD"  required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">개업연월일</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<fmt:formatDate var="comOpenDStr" value="${company.comOpenD}" pattern="yyyy/MM/dd" />
								<input class="form-control calendar" type="text" value="${comOpenDStr}" name="comOpenD"  required>
								<div class="invalid-tooltip">
								  값을 입력해주세요.
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">폐업연원일</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<fmt:formatDate var="comCloseDStr" value="${company.comCloseD}" pattern="yyyy/MM/dd" />
								<input class="form-control calendar" type="text" value="${comCloseDStr}" name="comCloseD">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">사용여부</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<select class="form-control" name="isUse">
									<option value="0" <c:if test="${company.isUse=='0'}">selected="selected"</c:if> >0. 미사용</option>
									<option value="1" <c:if test="${company.isUse=='1'}">selected="selected"</c:if> >1. 사용</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>								