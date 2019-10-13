<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.kt-menu__link-text, #kt_aside_menu{
	color:white !important;
}
</style>
 <!-- begin:: Aside -->
 <button class="kt-aside-close " id="kt_aside_close_btn"><i class="la la-close"></i></button>
 <div class="kt-aside  kt-aside--fixed  kt-grid__item kt-grid kt-grid--desktop kt-grid--hor-desktop" id="kt_aside">

     <!-- begin:: Aside -->
     <div class="kt-aside__brand   kt-grid__item" id="kt_aside_brand">
         <div class="kt-aside__brand-logo">
             <a href="./index.html">
                 <img alt="Logo" src="<c:url value='/media/logos/logo-9.png'/>" />
             </a>
         </div>
         <div class="kt-aside__brand-tools">
             <button class="kt-aside__brand-aside-toggler kt-aside__brand-aside-toggler--left" id="kt_aside_toggler"><span></span></button>
         </div>
     </div>
     <!-- end:: Aside -->
     <!-- begin:: Aside Menu -->
     <div class="kt-aside-menu-wrapper kt-grid__item kt-grid__item--fluid" id="kt_aside_menu_wrapper">
         <div id="kt_aside_menu" class="kt-aside-menu " data-ktmenu-vertical="1" data-ktmenu-scroll="1" data-ktmenu-dropdown-timeout="500">

             <ul class="kt-menu__nav ">
                 <li class="kt-menu__section ">
                     <h4 class="kt-menu__section-text">스마트공장ERP</h4>
                     <i class="kt-menu__section-icon flaticon-more-v2"></i>
                 </li>
                 <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover">
                     <a href="javascript:;" class="kt-menu__link kt-menu__toggle">
                         <i class="kt-menu__link-icon flaticon-web"></i><span class="kt-menu__link-text">영업관리시스템</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
                     <div class="kt-menu__submenu "><span class="kt-menu__arrow"></span>
                         <ul class="kt-menu__subnav">
                             <li class="kt-menu__item  kt-menu__item--parent" aria-haspopup="true"><span class="kt-menu__link"><span class="kt-menu__link-text">Base</span></span>
                             </li>
                             <!-- <li class="kt-menu__item " aria-haspopup="true"><a href="javascript:fn_goLinkToErpContent('/dc/cm/list.do');" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">회사등록_원페이지</span></a></li> -->
                             <li class="kt-menu__item " aria-haspopup="true"><a href="javascript:fn_goLinkToErpContent('/companyManage.do');" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">회사코드관리</span></a></li>
                             <li class="kt-menu__item " aria-haspopup="true"><a href="javascript:fn_goLinkToErpContent('/workplaceManage.do');" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">사업장코드관리</span></a></li>
                             <li class="kt-menu__item " aria-haspopup="true"><a href="./p24_orderQueryFinish.html" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">p24.주문목록 조회 및 마감</span></a></li>
                             <li class="kt-menu__item " aria-haspopup="true"><a href="./p26_orderRegist.html" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">p26.주문등록</span></a></li>
                             <li class="kt-menu__item " aria-haspopup="true"><a href="./p28_orderUpdateDeleteGo.html" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">p28.주문수정/삭제/출고</span></a></li>
                             <li class="kt-menu__item " aria-haspopup="true"><a href="./p29_orderUpdate.html" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">p29.주문수정</span></a></li>
                         </ul>
                     </div>
                 </li>
             </ul>
         </div>
     </div>
     <!-- end:: Aside Menu -->
 </div>
 <!-- end:: Aside -->