<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="tab-pane" id="kt_users_edit_tab_3" role="tabpanel">
	<div class="kt-form kt-form--label-right">
		<div class="kt-form__body">
			<div class="kt-section kt-section--first">
				<div class="kt-section__body">
					<div class="kt-portlet__body border mb-3">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">회사영문명</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="comEngNm" value="${workplace.comEngNm}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">영문사업자명</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="corEngNm" value="${workplace.corEngNm}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">회사영문주소</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="comEngAddr" value="${workplace.comEngAddr}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">홈페이지주소</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="comHomepage" value="${workplace.comHomepage}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">그룹웨어주소</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" name="comGwpage" value="${workplace.comGwpage}">
							</div>
						</div>
					</div>
					<div class="kt-portlet__body border">
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">자택우편번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.homePostcode}" name="homePostcode">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">자택주소</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.homeAddr}"  name="homeAddr">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">자택번지</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.homeAddrDetail}" name="homeAddrDetail">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xs-3 col-sm-3 col-md-3 col-form-label">자택전화번호</label>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<input class="form-control" type="text" value="${workplace.homePhone}" name="homePhone">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>			
</div>												