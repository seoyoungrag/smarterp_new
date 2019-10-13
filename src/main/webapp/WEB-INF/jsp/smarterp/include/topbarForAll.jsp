<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

								<!-- begin:: Topbar -->
<div class="kt-header__topbar">
    <!--begin: Search -->
    <!-- 
    <div class="kt-header__topbar-item kt-header__topbar-item--search">
        <div class="kt-header__topbar-wrapper">
            <div class="kt-quick-search kt-quick-search--inline kt-quick-search--result-compact" id="kt_quick_search_inline">
                <form method="get" class="kt-quick-search__form">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i
																class="flaticon2-search-1"></i></span>
                        </div>
                        <input type="text" class="form-control kt-quick-search__input" placeholder="Search...">
                        <div class="input-group-append">
                            <span class="input-group-text"><i
																class="la la-close kt-quick-search__close"></i></span>
                        </div>
                    </div>
                </form>

                <div data-toggle="dropdown" data-offset="0,15px"></div>

                <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-lg">
                    <div class="kt-quick-search__wrapper kt-scroll ps" data-scroll="true" data-height="325" data-mobile-height="200" style="height: 325px; overflow: hidden;">
                        <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                            <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                        </div>
                        <div class="ps__rail-y" style="top: 0px; right: 0px;">
                            <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     -->
    <!--end: Search -->

    <!--begin: Search -->
    <!-- 
    <div class="kt-header__topbar-item kt-header__topbar-item--search kt-hidden">
        <div class="kt-input-icon kt-input-icon--right">
            <input type="text" class="form-control" placeholder="Search..."> <span class="kt-input-icon__icon kt-input-icon__icon--right">
												<span><i class="la la-search"></i></span>
            </span>
        </div>
    </div>
     -->
    <!--end: Search -->

    <!--begin: Quick Actions -->
    <!-- 
    <div class="kt-header__topbar-item dropdown">
        <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="30px,0px">
            <span class="kt-header__topbar-icon"><i
												class="fa fa-cog"></i></span>
        </div>
        <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-xl">
            <div class="kt-head" style="background-image: url(/keen/themes/keen/theme/demo2/dist/media/misc/head_bg_sm.jpg)">
                <h3 class="kt-head__title">Quick Actions</h3>
            </div>
            <div class="kt-grid-nav">
                <a href="#" class="kt-grid-nav__item">
                    <div class="kt-grid-nav__item-icon">
                        <i class="flaticon-computer"></i>
                    </div>
                    <div class="kt-grid-nav__item-title">Customers</div>
                    <div class="kt-grid-nav__item-desc">per department</div>
                </a>
                <a href="#" class="kt-grid-nav__item">
                    <div class="kt-grid-nav__item-icon">
                        <i class="flaticon-business"></i>
                    </div>
                    <div class="kt-grid-nav__item-title">Orders</div>
                    <div class="kt-grid-nav__item-desc">latest orders</div>
                </a>
                <a href="#" class="kt-grid-nav__item">
                    <div class="kt-grid-nav__item-icon">
                        <i class="flaticon-line-graph"></i>
                    </div>
                    <div class="kt-grid-nav__item-title">Reports</div>
                    <div class="kt-grid-nav__item-desc">finance &amp; accounting
                    </div>
                </a>
                <a href="#" class="kt-grid-nav__item">
                    <div class="kt-grid-nav__item-icon">
                        <i class="flaticon-settings"></i>
                    </div>
                    <div class="kt-grid-nav__item-title">Administration</div>
                    <div class="kt-grid-nav__item-desc">settings and logs</div>
                </a>
            </div>
        </div>
    </div>
     -->
    <!--end: Quick Actions -->

    <!--begin: Quick Panel Toggler -->
    <div class="kt-header__topbar-item" data-toggle="kt-tooltip" title="" data-placement="right" data-original-title="셋팅">
        <div class="kt-header__topbar-wrapper">
            <!-- <span class="kt-header__topbar-icon" id="kt_quick_panel_toggler_btn"><i class="fa fa-copy"></i></span> -->
            <span class="kt-header__topbar-icon" id="kt_quick_panel_toggler_btn"><i class="flaticon-settings"></i></span>
        </div>
    </div>
    <!--end: Quick Panel Toggler -->
    <%-- 
									<jsp:include page="include/topbarLanguage.jsp" flush="true" />
									 --%>
        <%-- 
									<jsp:include page="include/topbarNotification.jsp" flush="true" />
									 --%>
            <%--  
									<jsp:include page="include/topbarUser.jsp" flush="true" />
									 --%>
</div>
<!-- end:: Topbar -->