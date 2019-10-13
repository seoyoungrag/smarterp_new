<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="ko">
    <!-- begin::Head -->
    <head>
        <!--begin::Base Path (base relative path for assets of this page) -->
        <base href="/">
        <!--end::Base Path -->
        <meta charset="utf-8" />
        <title>스마트ERP</title>
        <meta name="description" content="스마트 ERP">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!--begin::Fonts -->
        <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
        <script>
            WebFont.load({
                google: {
                    "families": ["Poppins:300,400,500,600,700"]
                },
                active: function() {
                    sessionStorage.fonts = true;
                }
            });
        </script>
        <!--end::Fonts -->
        <!--begin::Page Vendors Styles(used by this page) -->
        <link href="<c:url value='/vendors/custom/datatables/datatables.bundle.css'/>" rel="stylesheet" type="text/css" />
        <!--end::Page Vendors Styles -->
        <!--begin::Layout Skins(used by all pages) -->
        <link href="<c:url value='/css/demo2/skins/aside/brand.css'/>" rel="stylesheet" type="text/css" />
        <!--end::Layout Skins -->
        <link rel="shortcut icon" href="<c:url value='/media/logos/favicon.ico'/>" />
        <!-- begin::Global Config(global config for global JS sciprts) -->
		<script>
	     var KTAppOptions = {
	         "colors": {
	             "state": {
	                 "brand": "#5578eb",
	                 "metal": "#c4c5d6",
	                 "light": "#ffffff",
	                 "accent": "#00c5dc",
	                 "primary": "#5867dd",
	                 "success": "#34bfa3",
	                 "info": "#36a3f7",
	                 "warning": "#ffb822",
	                 "danger": "#fd3995",
	                 "focus": "#9816f4"
	             },
	             "base": {
	                 "label": [
	                     "#c5cbe3",
	                     "#a1a8c3",
	                     "#3d4465",
	                     "#3e4466"
	                 ],
	                 "shape": [
	                     "#f0f3ff",
	                     "#d9dffa",
	                     "#afb4d4",
	                     "#646c9a"
	                 ]
	             }
	         }
	     };
	 </script>

		<!--begin::Global Theme Bundle(used by all pages) -->
		
		<script src="<c:url value='/vendors/global/vendors.bundle.js'/>" type="text/javascript"></script>
		<link href="<c:url value='/vendors/global/vendors.bundle.css'/>" rel="stylesheet" type="text/css" />
		<script src="<c:url value='/js/demo2/scripts.bundle.js'/>" type="text/javascript"></script>
		<link href="<c:url value='/css/demo2/style.bundle.css'/>" rel="stylesheet" type="text/css" />
		<!--end::Global Theme Bundle -->
		<!-- end::Global Config -->
        
		<script type="text/javascript" src="<c:url value='/js/jquery-2.2.4.min.js'/>"></script>
		<script src="<c:url value='/vendors/custom/datatables/datatables.bundle.js'/>" type="text/javascript"></script>
		<script type="text/javascript" src="<c:url value='/js/common.js'/>"></script>
		<style type="text/css">
            .text-muted {
                display: none !important;
            }
            
            .form-group {
                margin: 0 !important;
            }
            
            .middle {
                font-size: 1.5em !important;
            }
            
            .d-inline-block {
                width: 100% !important;
            }
            
            .btn-secondary {
                background-color: #506ee4 !important;
                color: #fff !important;
                ;
            }
            
            .kt-portlet__head {
                /*background-color: #506ee4 !important;*/
            }
            
            .kt-portlet__head-title {
                color: #fff !important;
            }
            
            i.la {
                color: #fff !important;
            }
            
            .kt-separator.kt-separator--border-dashed.kt-separator--space-lg {
                margin: 1em 0 !important;
            }
            
            .kt-separator.kt-separator--border-dashed {
                border-bottom: 10px solid #ebedf2 !important;
            }
            
            thead.kt-datatable__head {
                background-color: #c5cbe3 !important;
            }
            
            th span {
                text-align: center !important;
                font-weight: bolder !important;
            }
            
            .form-group label {
                font-weight: bold !important;
            }
            
            td span {
                border: 1px solid #e2e5ec !important;
            }
            
            table {
                border: 1px solid #e2e5ec !important;
            }
            
            .display-none {
                display: none;
            }
            
            .datatable-center {
                text-align: center !important;
            }
        </style>
	<!--end::Page Scripts -->
    </head>
    <!-- end::Head -->