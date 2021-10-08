<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html style="font-size: 16px;" lang="zh-Hant">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>CaseManage</title>
   
    <script class="u-script" type="text/javascript" src="../resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../resources/js/nicepage.js" defer=""></script>
    <link rel="stylesheet" href="../resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="../resources/css/CaseManage.css" media="screen">

    <meta name="generator" content="Nicepage 3.23.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">


    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "框架final project",
            "logo": "images/LOGO-TEST-22.png"
        }
    </script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="CaseManage">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
</head>

<body class="u-body">


    <header class="u-clearfix u-header u-header" id="sec-4c0b">
        <div class="u-clearfix u-sheet u-sheet-1">
            <a href="2143501032" class="u-image u-logo u-image-1" title="網站首頁" data-image-width="570"
                data-image-height="410">
                <img src="../resources/images/LOGO-TEST-22.png" class="u-logo-image u-logo-image-1">
            </a>
            <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
                <div class="menu-collapse" style="font-size: 1.125rem; letter-spacing: 0px;">
                    <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                        href="#">
                        <svg>
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use>
                        </svg>
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink">
                            <defs>
                                <symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;">
                                    <rect y="1" width="16" height="2"></rect>
                                    <rect y="7" width="16" height="2"></rect>
                                    <rect y="13" width="16" height="2"></rect>
                                </symbol>
                            </defs>
                        </svg>
                    </a>
                </div>
                <div class="u-custom-menu u-nav-container">
                    <ul class="u-nav u-unstyled u-nav-1">
                        <li class="u-nav-item"><a
                                class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
                                href="javascript::" style="padding: 10px 20px;">畫師列表</a>
                        </li>
                        <li class="u-nav-item"><a
                                class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
                                style="padding: 10px 20px;">案件列表</a>
                        </li>
                        <li class="u-nav-item"><a
                                class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
                                style="padding: 10px 20px;">公開畫廊</a>
                        </li>
                    </ul>
                </div>
                <div class="u-custom-menu u-nav-container-collapse">
                    <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                        <div class="u-sidenav-overflow">
                            <div class="u-menu-close"></div>
                            <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="javascript::"
                                        style="padding: 10px 20px;">畫師列表</a>
                                </li>
                                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                        style="padding: 10px 20px;">案件列表</a>
                                </li>
                                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                        style="padding: 10px 20px;">公開畫廊</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
                </div>
            </nav>
            <div class="u-container-style u-group u-white u-group-1">
                <div class="u-container-layout u-container-layout-1">
                    <a href="139992805"
                        class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-1">登入</a>
                    <a href="139992805"
                        class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-2">註冊</a>
                </div>
            </div>
            <div class="u-container-style u-group u-white u-group-2">
                <div class="u-container-layout u-container-layout-2">
					<div>
						<a href="<%= request.getContextPath() %>/backend/CaseFormApplyPage"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3"
							name="issue_case" style="display: none">發布案件</a> <a
							href="<%= request.getContextPath() %>/backend/accountmanager"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin"
							name="account_manager" style="display: none">帳號管理</a> <span
							class="u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4"
							name="member_name" style="display: none"><%=request.getAttribute("member_name")%></span>
					</div>
            </div>
        </div>
    </header>
    <section class="u-align-center u-clearfix u-grey-5 u-section-1" id="sec-8eb0">
        <div class="u-clearfix u-sheet u-sheet-1">
            <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
                <div class="u-layout">
                    <div class="u-layout-row">
                        <div class="u-container-style u-layout-cell u-size-12 u-layout-cell-1">
                            <div class="u-container-layout u-container-layout-1">
                                <div class="u-accordion u-collapsed-by-default u-spacing-15 u-accordion-1">
                                    <div class="u-accordion-item">
                                        <a class="u-accordion-link u-border-2 u-border-grey-5 u-button-style u-grey-5 u-radius-6 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-accordion-link-1"
                                            id="link-accordion-0781" aria-controls="accordion-0781"
                                            aria-selected="false">
                                            <span class="u-accordion-link-text">&nbsp; &nbsp; 會員管理</span><span
                                                class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-5-dark-1 u-icon-1"><svg
                                                    class="u-svg-link" preserveAspectRatio="xMidYMin slice"
                                                    viewBox="0 0 451.847 451.847" style="">
                                                    <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        xlink:href="#svg-eff5"></use>
                                                </svg><svg class="u-svg-content" viewBox="0 0 451.847 451.847" x="0px"
                                                    y="0px" id="svg-eff5"
                                                    style="enable-background:new 0 0 451.847 451.847;">
                                                    <g>
                                                        <path
                                                            d="M225.923,354.706c-8.098,0-16.195-3.092-22.369-9.263L9.27,151.157c-12.359-12.359-12.359-32.397,0-44.751   c12.354-12.354,32.388-12.354,44.748,0l171.905,171.915l171.906-171.909c12.359-12.354,32.391-12.354,44.744,0   c12.365,12.354,12.365,32.392,0,44.751L248.292,345.449C242.115,351.621,234.018,354.706,225.923,354.706z">
                                                        </path>
                                                    </g>
                                                </svg></span>
                                        </a>
                                        <div class="u-accordion-pane u-container-style u-shape-rectangle u-white u-accordion-pane-1"
                                            id="accordion-0781" aria-labelledby="link-accordion-0781">
                                            <div class="u-container-layout u-container-layout-2">
                                                <a href="#"
                                                    class="u-align-left u-border-none u-btn u-btn-round u-button-style u-radius-6 u-text-hover-palette-1-light-1 u-white u-btn-1">帳號設置</a>
                                                <a href="#"
                                                    class="u-align-left u-border-none u-btn u-btn-round u-button-style u-radius-6 u-text-hover-palette-1-light-1 u-white u-btn-2">個人資料</a>
                                                <a href="#"
                                                    class="u-align-left u-border-none u-btn u-btn-round u-button-style u-radius-6 u-text-hover-palette-1-light-1 u-white u-btn-3">案件管理</a>
                                                <a href="#"
                                                    class="u-align-left u-border-none u-btn u-btn-round u-button-style u-radius-6 u-text-hover-palette-1-light-1 u-white u-btn-4">畫作管理</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a href="https://nicepage.com/c/shapes-website-templates"
                                    class="u-active-grey-15 u-border-none u-btn u-button-style u-grey-5 u-hover-grey-15 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-btn-5">&nbsp;
                                    系統通知</a><span class="u-icon u-icon-circle u-text-palette-5-dark-1 u-icon-2"
                                    data-href="https://nicepage.com/k/competition-website-templates"><svg
                                        class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="-43 0 512 512"
                                        style="">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-c580"></use>
                                    </svg><svg class="u-svg-content" viewBox="-43 0 512 512" id="svg-c580">
                                        <path
                                            d="m413.417969 360.8125c-32.253907-27.265625-50.75-67.117188-50.75-109.335938v-59.476562c0-75.070312-55.765625-137.214844-128-147.625v-23.042969c0-11.796875-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.535156-21.332031 21.332031v23.042969c-72.257812 10.410156-128 72.554688-128 147.625v59.476562c0 42.21875-18.496094 82.070313-50.945312 109.503907-8.296876 7.105469-13.054688 17.429687-13.054688 28.351562 0 20.589844 16.746094 37.335938 37.332031 37.335938h352c20.589844 0 37.335938-16.746094 37.335938-37.335938 0-10.921875-4.757813-21.246093-13.25-28.519531zm0 0">
                                        </path>
                                        <path
                                            d="m213.332031 512c38.636719 0 70.957031-27.542969 78.378907-64h-156.757813c7.425781 36.457031 39.746094 64 78.378906 64zm0 0">
                                        </path>
                                    </svg></span>
                                <a href="https://nicepage.com/c/shapes-website-templates"
                                    class="u-active-grey-15 u-border-none u-btn u-button-style u-grey-5 u-hover-grey-15 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-btn-6">訊息</a><span
                                    class="u-icon u-icon-circle u-icon-3"
                                    data-href="https://nicepage.com/c/fashion-beauty-website-templates"><svg
                                        class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 -67 380 380"
                                        style="">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-de85"></use>
                                    </svg><svg class="u-svg-content" viewBox="0 -67 380 380" id="svg-de85">
                                        <path
                                            d="m30 0h320c14.402344.0390625 26.761719 10.261719 29.5 24.398438l-189.5 105.601562-189.5-105.601562c2.738281-14.136719 15.097656-24.3593755 29.5-24.398438zm320 246.601562h-320c-16.546875-.050781-29.953125-13.453124-30-30v-169.601562l185.101562 103.199219c1.5.824219 3.183594 1.273437 4.898438 1.300781 1.722656.019531 3.414062-.429688 4.898438-1.300781l185.101562-103.199219v169.601562c-.011719 16.5625-13.4375 29.984376-30 30zm0 0">
                                        </path>
                                    </svg></span>
                                <a 
                                    class="u-active-grey-15 u-border-none u-btn u-button-style u-grey-5 u-hover-grey-15 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-btn-7" name="logout" onclick="logout()">登出</a><span
                                    class="u-icon u-icon-circle u-icon-4"
                                    data-href="https://nicepage.com/c/video-website-templates"><svg class="u-svg-link"
                                        preserveAspectRatio="xMidYMin slice" viewBox="0 0 511 512" style="">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5881"></use>
                                    </svg><svg class="u-svg-content" viewBox="0 0 511 512" id="svg-5881">
                                        <path
                                            d="m361.5 392v40c0 44.113281-35.886719 80-80 80h-201c-44.113281 0-80-35.886719-80-80v-352c0-44.113281 35.886719-80 80-80h201c44.113281 0 80 35.886719 80 80v40c0 11.046875-8.953125 20-20 20s-20-8.953125-20-20v-40c0-22.054688-17.945312-40-40-40h-201c-22.054688 0-40 17.945312-40 40v352c0 22.054688 17.945312 40 40 40h201c22.054688 0 40-17.945312 40-40v-40c0-11.046875 8.953125-20 20-20s20 8.953125 20 20zm136.355469-170.355469-44.785157-44.785156c-7.8125-7.8125-20.476562-7.8125-28.285156 0-7.8125 7.808594-7.8125 20.472656 0 28.28125l31.855469 31.859375h-240.140625c-11.046875 0-20 8.953125-20 20s8.953125 20 20 20h240.140625l-31.855469 31.859375c-7.8125 7.808594-7.8125 20.472656 0 28.28125 3.90625 3.90625 9.023438 5.859375 14.140625 5.859375 5.121094 0 10.238281-1.953125 14.144531-5.859375l44.785157-44.785156c19.496093-19.496094 19.496093-51.214844 0-70.710938zm0 0">
                                        </path>
                                    </svg></span>
                            </div>
                        </div>
                        <div class="u-container-style u-layout-cell u-size-48 u-layout-cell-2">
                            <div class="u-container-layout u-container-layout-3">
                                <div class="u-container-style u-group u-shape-rectangle u-white u-group-1">
                                    <div class="u-container-layout u-container-layout-4"></div>
                                </div>
                                <p class="u-large-text u-text u-text-variant u-text-1"><span
                                        class="u-icon u-icon-5"><svg class="u-svg-content" viewBox="0 0 60 60" x="0px"
                                            y="0px" style="width: 1em; height: 1em;">
                                            <g>
                                                <path
                                                    d="M42.5,22h-25c-0.552,0-1,0.447-1,1s0.448,1,1,1h25c0.552,0,1-0.447,1-1S43.052,22,42.5,22z">
                                                </path>
                                                <path
                                                    d="M17.5,16h10c0.552,0,1-0.447,1-1s-0.448-1-1-1h-10c-0.552,0-1,0.447-1,1S16.948,16,17.5,16z">
                                                </path>
                                                <path
                                                    d="M42.5,30h-25c-0.552,0-1,0.447-1,1s0.448,1,1,1h25c0.552,0,1-0.447,1-1S43.052,30,42.5,30z">
                                                </path>
                                                <path
                                                    d="M42.5,38h-25c-0.552,0-1,0.447-1,1s0.448,1,1,1h25c0.552,0,1-0.447,1-1S43.052,38,42.5,38z">
                                                </path>
                                                <path
                                                    d="M42.5,46h-25c-0.552,0-1,0.447-1,1s0.448,1,1,1h25c0.552,0,1-0.447,1-1S43.052,46,42.5,46z">
                                                </path>
                                                <path
                                                    d="M38.914,0H6.5v60h47V14.586L38.914,0z M39.5,3.414L50.086,14H39.5V3.414z M8.5,58V2h29v14h14v42H8.5z">
                                                </path>
                                            </g>
                                        </svg><img></span>&nbsp;管理我的案件
                                </p>
                                <div class="u-tabs u-tabs-1">
                                    <ul class="u-spacing-15 u-tab-list u-unstyled" role="tablist">
                                        <li class="u-tab-item" role="presentation">
                                            <a class="active u-active-palette-1-light-1 u-button-style u-tab-link u-white u-tab-link-1"
                                                id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5"
                                                aria-selected="true">我發布的</a>
                                        </li>
                                        <li class="u-tab-item" role="presentation">
                                            <a class="u-active-palette-1-light-1 u-button-style u-tab-link u-white u-tab-link-2"
                                                id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7"
                                                aria-selected="false">我應徵的</a>
                                        </li>
                                    </ul>
                                    <div class="u-tab-content">
                                    
                                    <!--  -------------當我發布的備案下，會在CLASS新增ACTIVE---------------- -->
                                        <div class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1"
                                            id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                                            <div class="u-container-layout u-container-layout-5">
                                                <div class="u-list u-list-1">
                                                    <div class="u-repeater u-repeater-1"></div>
                                                </div>
                                                <div class="u-tab-links-align-justify u-tabs u-tabs-2">
                                                    <ul class="u-border-2 u-border-grey-75 u-spacing-30 u-tab-list u-unstyled"
                                                        role="tablist">
                                                        <li class="u-tab-item" role="presentation">
                                                            <a class="active u-active-palette-1-light-1 u-button-style u-tab-link u-white u-tab-link-3"
                                                                id="link-tab-7446" href="#tab-7446" role="tab"
                                                                aria-controls="tab-7446" aria-selected="true">全部案件</a>
                                                        </li>
                                                        <li class="u-tab-item u-tab-item-4" role="presentation">
                                                            <a class="u-active-palette-1-light-1 u-button-style u-tab-link u-white u-tab-link-4"
                                                                id="link-tab-e6d5" href="#tab-e6d5" role="tab"
                                                                aria-controls="tab-e6d5" aria-selected="false">已成立訂單</a>
                                                        </li>
                                                    </ul>
                                                    <div class="u-tab-content">
                                                        <div class="u-container-style u-tab-active u-tab-pane"
                                                            id="tab-7446" role="tabpanel"
                                                            aria-labelledby="link-tab-7446">
                                                            <div
                                                                class="u-container-layout u-valign-bottom u-container-layout-6">
                                                                <div class="u-list u-list-2">
                                                                    <div class="u-repeater u-repeater-2">
                                                                        <div
                                                                            class="u-align-left u-container-style u-list-item u-repeater-item">
                                                                            <div
                                                                                class="u-container-layout u-similar-container u-container-layout-7">
                                                                                <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1"
                                                                                    data-position="">
                                                                                    <div class="menu-collapse"
                                                                                        style="font-size: 1.25rem; font-weight: 700;">
                                                                                        <a class="u-button-style u-custom-border u-custom-border-color u-custom-borders u-custom-color u-custom-hover-color u-custom-text-hover-color u-nav-link"
                                                                                            href="#">
                                                                                            <svg>
                                                                                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                                    xlink:href="#menu-hamburger">
                                                                                                </use>
                                                                                            </svg>
                                                                                            <svg version="1.1"
                                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                                                xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                                <defs>
                                                                                                    <symbol
                                                                                                        id="menu-hamburger"
                                                                                                        viewBox="0 0 16 16"
                                                                                                        style="width: 16px; height: 16px;">
                                                                                                        <rect y="1"
                                                                                                            width="16"
                                                                                                            height="2">
                                                                                                        </rect>
                                                                                                        <rect y="7"
                                                                                                            width="16"
                                                                                                            height="2">
                                                                                                        </rect>
                                                                                                        <rect y="13"
                                                                                                            width="16"
                                                                                                            height="2">
                                                                                                        </rect>
                                                                                                    </symbol>
                                                                                                </defs>
                                                                                            </svg>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div
                                                                                        class="u-custom-menu u-nav-container">
                                                                                        <ul
                                                                                            class="u-nav u-unstyled u-nav-1">
                                                                                            <li class="u-nav-item"><a
                                                                                                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                                                                                    href="####">排序</a>
                                                                                                <div
                                                                                                    class="u-nav-popup">
                                                                                                    <ul
                                                                                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">由新到舊</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">由舊到新</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                    <div
                                                                                        class="u-custom-menu u-nav-container-collapse">
                                                                                        <div
                                                                                            class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                                                                                            <div
                                                                                                class="u-sidenav-overflow">
                                                                                                <div
                                                                                                    class="u-menu-close">
                                                                                                </div>
                                                                                                <ul
                                                                                                    class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3">
                                                                                                    <li
                                                                                                        class="u-nav-item">
                                                                                                        <a class="u-button-style u-nav-link"
                                                                                                            href="####">排序</a>
                                                                                                        <div
                                                                                                            class="u-nav-popup">
                                                                                                            <ul
                                                                                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4">
                                                                                                                <li
                                                                                                                    class="u-nav-item">
                                                                                                                    <a class="u-button-style u-nav-link"
                                                                                                                        href="####">由新到舊</a>
                                                                                                                </li>
                                                                                                                <li
                                                                                                                    class="u-nav-item">
                                                                                                                    <a class="u-button-style u-nav-link"
                                                                                                                        href="####">由舊到新</a>
                                                                                                                </li>
                                                                                                            </ul>
                                                                                                        </div>
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div
                                                                                            class="u-black u-menu-overlay u-opacity u-opacity-70">
                                                                                        </div>
                                                                                    </div>
                                                                                </nav>
                                                                                <nav
                                                                                    class="u-menu u-menu-dropdown u-offcanvas u-menu-2">
                                                                                    <div class="menu-collapse"
                                                                                        style="font-weight: 700; font-size: 1.25rem;">
                                                                                        <a class="u-button-style u-custom-hover-color u-nav-link"
                                                                                            href="#">
                                                                                            <svg>
                                                                                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                                    xlink:href="#menu-hamburger">
                                                                                                </use>
                                                                                            </svg>
                                                                                            <svg version="1.1"
                                                                                                xmlns="http://www.w3.org/2000/svg"
                                                                                                xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                                <defs>
                                                                                                    <symbol
                                                                                                        id="menu-hamburger"
                                                                                                        viewBox="0 0 16 16"
                                                                                                        style="width: 16px; height: 16px;">
                                                                                                        <rect y="1"
                                                                                                            width="16"
                                                                                                            height="2">
                                                                                                        </rect>
                                                                                                        <rect y="7"
                                                                                                            width="16"
                                                                                                            height="2">
                                                                                                        </rect>
                                                                                                        <rect y="13"
                                                                                                            width="16"
                                                                                                            height="2">
                                                                                                        </rect>
                                                                                                    </symbol>
                                                                                                </defs>
                                                                                            </svg>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div
                                                                                        class="u-custom-menu u-nav-container">
                                                                                        <ul
                                                                                            class="u-nav u-unstyled u-nav-5">
                                                                                            <li class="u-nav-item"><a
                                                                                                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                                                                                    href="####">案件狀態</a>
                                                                                                <div
                                                                                                    class="u-nav-popup">
                                                                                                    <ul
                                                                                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-6">
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">上架中</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">已下架</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                    <div
                                                                                        class="u-custom-menu u-nav-container-collapse">
                                                                                        <div
                                                                                            class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                                                                                            <div
                                                                                                class="u-sidenav-overflow">
                                                                                                <div
                                                                                                    class="u-menu-close">
                                                                                                </div>
                                                                                                <ul
                                                                                                    class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-7">
                                                                                                    <li
                                                                                                        class="u-nav-item">
                                                                                                        <a class="u-button-style u-nav-link"
                                                                                                            href="####">案件狀態</a>
                                                                                                        <div
                                                                                                            class="u-nav-popup">
                                                                                                            <ul
                                                                                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-8">
                                                                                                                <li
                                                                                                                    class="u-nav-item">
                                                                                                                    <a class="u-button-style u-nav-link"
                                                                                                                        href="####">上架中</a>
                                                                                                                </li>
                                                                                                                <li
                                                                                                                    class="u-nav-item">
                                                                                                                    <a class="u-button-style u-nav-link"
                                                                                                                        href="####">已下架</a>
                                                                                                                </li>
                                                                                                            </ul>
                                                                                                        </div>
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div
                                                                                            class="u-black u-menu-overlay u-opacity u-opacity-70">
                                                                                        </div>
                                                                                    </div>
                                                                                </nav>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-2">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-8">
                                                                        <div
                                                                            class="u-container-style u-group u-palette-5-light-2 u-group-3">
                                                                            <div
                                                                                class="u-container-layout u-container-layout-9">
                                                                                <h5
                                                                                    class="u-text u-text-default u-text-font u-text-2">
                                                                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-8"
                                                                                        href="####">案件標題(超連結連到案件頁面)</a>
                                                                                </h5>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-4">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-10">
                                                                                        <p class="u-text u-text-3">稿酬預算：
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-5">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-11">
                                                                                        <p class="u-text u-text-4">發布日期：
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                                <a href="前台框架.html"
                                                                                    data-page-id="823408358"
                                                                                    class="u-active-palette-1-light-1 u-border-0 u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-9"
                                                                                    target="_blank">編輯案件</a>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-6">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-12">
                                                                                        <p class="u-text u-text-5">案件狀態：
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-7">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-13">
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-10">上一頁</a>
                                                                        <p class="u-text u-text-default u-text-6">X頁</p>
                                                                        <p class="u-text u-text-default u-text-7">／</p>
                                                                        <p class="u-text u-text-default u-text-8">X頁</p>
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-11">下一頁</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="u-container-style u-tab-pane" id="tab-e6d5"
                                                            role="tabpanel" aria-labelledby="link-tab-e6d5">
                                                            <div class="u-container-layout u-container-layout-14">
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-8">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-15">
                                                                        <nav
                                                                            class="u-menu u-menu-dropdown u-offcanvas u-menu-3">
                                                                            <div class="menu-collapse"
                                                                                style="font-size: 1.25rem; font-weight: 700;">
                                                                                <a class="u-button-style u-custom-hover-color u-nav-link"
                                                                                    href="#">
                                                                                    <svg>
                                                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                            xlink:href="#menu-hamburger">
                                                                                        </use>
                                                                                    </svg>
                                                                                    <svg version="1.1"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                        <defs>
                                                                                            <symbol id="menu-hamburger"
                                                                                                viewBox="0 0 16 16"
                                                                                                style="width: 16px; height: 16px;">
                                                                                                <rect y="1" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="7" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="13" width="16"
                                                                                                    height="2"></rect>
                                                                                            </symbol>
                                                                                        </defs>
                                                                                    </svg>
                                                                                </a>
                                                                            </div>
                                                                            <div class="u-custom-menu u-nav-container">
                                                                                <ul class="u-nav u-unstyled u-nav-9">
                                                                                    <li class="u-nav-item"><a
                                                                                            class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                                                                            href="####">排序</a>
                                                                                        <div class="u-nav-popup">
                                                                                            <ul
                                                                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-10">
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">由新到舊</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">由舊到新</a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div
                                                                                class="u-custom-menu u-nav-container-collapse">
                                                                                <div
                                                                                    class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                                                                                    <div class="u-sidenav-overflow">
                                                                                        <div class="u-menu-close"></div>
                                                                                        <ul
                                                                                            class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-11">
                                                                                            <li class="u-nav-item"><a
                                                                                                    class="u-button-style u-nav-link"
                                                                                                    href="####">排序</a>
                                                                                                <div
                                                                                                    class="u-nav-popup">
                                                                                                    <ul
                                                                                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-12">
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">由新到舊</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">由舊到新</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-black u-menu-overlay u-opacity u-opacity-70">
                                                                                </div>
                                                                            </div>
                                                                        </nav>
                                                                        <nav
                                                                            class="u-menu u-menu-dropdown u-offcanvas u-menu-4">
                                                                            <div class="menu-collapse"
                                                                                style="font-size: 1.25rem; font-weight: 700;">
                                                                                <a class="u-button-style u-custom-hover-color u-nav-link"
                                                                                    href="#">
                                                                                    <svg>
                                                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                            xlink:href="#menu-hamburger">
                                                                                        </use>
                                                                                    </svg>
                                                                                    <svg version="1.1"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                        <defs>
                                                                                            <symbol id="menu-hamburger"
                                                                                                viewBox="0 0 16 16"
                                                                                                style="width: 16px; height: 16px;">
                                                                                                <rect y="1" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="7" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="13" width="16"
                                                                                                    height="2"></rect>
                                                                                            </symbol>
                                                                                        </defs>
                                                                                    </svg>
                                                                                </a>
                                                                            </div>
                                                                            <div class="u-custom-menu u-nav-container">
                                                                                <ul class="u-nav u-unstyled u-nav-13">
                                                                                    <li class="u-nav-item"><a
                                                                                            class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                                                                            href="####">訂單狀態</a>
                                                                                        <div class="u-nav-popup">
                                                                                            <ul
                                                                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-14">
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">第一階段</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">第二階段</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">第三階段</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">已完成</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">已取消</a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div
                                                                                class="u-custom-menu u-nav-container-collapse">
                                                                                <div
                                                                                    class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                                                                                    <div class="u-sidenav-overflow">
                                                                                        <div class="u-menu-close"></div>
                                                                                        <ul
                                                                                            class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-15">
                                                                                            <li class="u-nav-item"><a
                                                                                                    class="u-button-style u-nav-link"
                                                                                                    href="####">訂單狀態</a>
                                                                                                <div
                                                                                                    class="u-nav-popup">
                                                                                                    <ul
                                                                                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-16">
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">第一階段</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">第二階段</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">第三階段</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">已完成</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">已取消</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-black u-menu-overlay u-opacity u-opacity-70">
                                                                                </div>
                                                                            </div>
                                                                        </nav>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-9">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-16">
                                                                        <div
                                                                            class="u-container-style u-group u-palette-5-light-2 u-group-10">
                                                                            <div
                                                                                class="u-container-layout u-container-layout-17">
                                                                                <h5
                                                                                    class="u-text u-text-default u-text-font u-text-9">
                                                                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-12"
                                                                                        href="####">案件標題(連結到案件葉面)</a>
                                                                                </h5>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-11">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-18">
                                                                                        <p class="u-text u-text-10">接案者：
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-12">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-19">
                                                                                        <p class="u-text u-text-11">
                                                                                            訂單狀態：</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-13">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-20">
                                                                                        <p
                                                                                            class="u-text u-text-default u-text-12">
                                                                                            成立時間：</p>
                                                                                    </div>
                                                                                </div>
                                                                                <a href="####"
                                                                                    class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-13">過稿</a>
                                                                                <a href="####"
                                                                                    class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-14">取消訂單</a>
                                                                                <a href="84120983"
                                                                                    class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-15">給評價</a>
                                                                                <a href="####"
                                                                                    class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-16">檔案內容</a><span
                                                                                    class="u-icon u-icon-circle u-text-palette-1-base u-icon-6"
                                                                                    data-href="####"><svg
                                                                                        class="u-svg-link"
                                                                                        preserveAspectRatio="xMidYMin slice"
                                                                                        viewBox="0 0 512.002 512.002"
                                                                                        style="">
                                                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                            xlink:href="#svg-03a9">
                                                                                        </use>
                                                                                    </svg><svg class="u-svg-content"
                                                                                        viewBox="0 0 512.002 512.002"
                                                                                        x="0px" y="0px" id="svg-03a9"
                                                                                        style="enable-background:new 0 0 512.002 512.002;">
                                                                                        <g>
                                                                                            <path style="fill:#88B337;"
                                                                                                d="M423.622,332.518c0.009-3.866-1.059-7.652-3.089-10.944l-19.681-31.683   c-2.453-4.872-3.724-10.255-3.707-15.709v-97.61c0-63.367-51.364-114.731-114.731-114.731h-52.953   c-63.367,0-114.731,51.364-114.731,114.731v97.61c0.018,5.454-1.253,10.838-3.707,15.709l-19.681,31.683   c-2.03,3.292-3.098,7.078-3.089,10.944l0,0c0.044,11.341,9.223,20.519,20.563,20.563h294.241   C414.399,353.037,423.578,343.858,423.622,332.518z">
                                                                                            </path>
                                                                                            <polygon
                                                                                                style="fill:#88B337;"
                                                                                                points="282.415,61.841 326.542,0.063 185.335,0.063 229.462,61.841 229.462,79.492 282.415,79.492     ">
                                                                                            </polygon>
                                                                                        </g>
                                                                                        <path style="fill:#6B962A;"
                                                                                            d="M420.533,321.574l-19.681-31.683c-2.453-4.872-3.724-10.255-3.707-15.709v-97.61  c0.062-25.559-8.419-50.411-24.093-70.604C349.488,235.791,266.529,310.631,188.6,353.081h214.459  c11.402,0.044,20.687-9.161,20.731-20.572c0.018-3.866-1.05-7.652-3.08-10.935H420.533z">
                                                                                        </path>
                                                                                        <path style="fill:#FFFFFF;"
                                                                                            d="M300.065,194.223v-5.648c-0.044-16.354-13.3-29.609-29.654-29.654h-5.648V141.27h-17.651v17.651  h-5.648c-16.38-0.053-29.698,13.176-29.751,29.556c-0.044,12.435,7.678,23.573,19.337,27.897l16.062,6.001v33.625h-5.648  c-6.628,0-12.003-5.375-12.003-12.003l0,0v-5.648h-17.651v5.648c0.044,16.354,13.3,29.609,29.654,29.654h28.948  c16.38,0.053,29.698-13.176,29.751-29.556c0.044-12.435-7.678-23.573-19.337-27.897l-16.062-6.001v-33.625h5.648  c6.628,0,12.003,5.375,12.003,12.003l0,0v5.648H300.065z M274.648,232.702c4.66,1.809,7.74,6.293,7.766,11.297  c0,6.628-5.375,12.003-12.003,12.003l0,0h-5.648v-27.006L274.648,232.702z M247.113,203.578l-9.885-3.707  c-4.66-1.809-7.74-6.293-7.766-11.297c0-6.628,5.375-12.003,12.003-12.003l0,0h5.648V203.578z">
                                                                                        </path>
                                                                                        <g>
                                                                                            <path style="fill:#FDB62F;"
                                                                                                d="M432.447,88.317L432.447,88.317c-3.001-18.11-17.192-32.301-35.302-35.302l0,0   c18.11-3.001,32.301-17.192,35.302-35.302l0,0c3.001,18.11,17.192,32.301,35.302,35.302l0,0   C449.639,56.016,435.448,70.208,432.447,88.317z">
                                                                                            </path>
                                                                                            <path style="fill:#FDB62F;"
                                                                                                d="M35.302,264.826L35.302,264.826C32.301,246.717,18.11,232.525,0,229.525l0,0   c18.11-3.001,32.301-17.192,35.302-35.302l0,0c3.001,18.11,17.192,32.301,35.302,35.302l0,0   C52.494,232.525,38.302,246.717,35.302,264.826z">
                                                                                            </path>
                                                                                        </g>
                                                                                        <path style="fill:#FEC9A3;"
                                                                                            d="M508.081,307.983c-7.246-12.197-22.814-16.512-35.302-9.796l-125.233,53.482  c-2.206,0.935-4.58,1.421-6.972,1.412h-155.24c-9.752,0-17.651-7.899-17.651-17.651c0-9.752,7.899-17.651,17.651-17.651h70.604  c29.248,0,52.953-23.705,52.953-52.953H162.035c-24.341,0.018-47.357,11.094-62.572,30.095l-55.336,66.985l62.308,114.201  l239.788-57.63c10.361-2.392,20.387-6.063,29.83-10.944l123.556-63.279C511.903,336.533,515.68,320.356,508.081,307.983z">
                                                                                        </path>
                                                                                        <path style="fill:#F7BB8F;"
                                                                                            d="M86.578,439.747l19.857,36.361l239.788-57.63c10.361-2.392,20.387-6.063,29.83-10.944l66.809-34.331  C331.837,407.181,184.452,428.362,86.578,439.747z">
                                                                                        </path>
                                                                                        <polygon style="fill:#4398D1;"
                                                                                            points="0,353.081 0,511.939 114.731,511.939 141.207,485.463 35.302,326.605 ">
                                                                                        </polygon>
                                                                                        <path style="fill:#3E8CC7;"
                                                                                            d="M0,511.939h114.731l26.476-26.476l-19.416-29.124C82.536,472.542,41.727,484.695,0,492.612V511.939z">
                                                                                        </path>
                                                                                        <circle style="fill:#D9D9D9;"
                                                                                            cx="79.429" cy="467.838"
                                                                                            r="17.651"></circle>
                                                                                    </svg></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-14">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-21">
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-17">上一頁</a>
                                                                        <p class="u-text u-text-default u-text-13">X頁
                                                                        </p>
                                                                        <p class="u-text u-text-default u-text-14">／</p>
                                                                        <p class="u-text u-text-default u-text-15">X頁
                                                                        </p>
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-18">下一頁</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--  ----------------------------- ---->
                                        
                                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-4"
                                            id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                                            <!-- 當我應徵的備案到，會在CLASS加上ACTIVE -->
                                            <div class="u-container-layout u-container-layout-22">
                                                <div class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-3">
                                                    <ul class="u-border-2 u-border-grey-75 u-spacing-30 u-tab-list u-unstyled"
                                                        role="tablist">
                                                        <li class="u-tab-item" role="presentation">
                                                            <a class="active u-active-palette-1-light-1 u-button-style u-tab-link u-white u-tab-link-5"
                                                                id="link-tab-dea3" href="#tab-dea3" role="tab"
                                                                aria-controls="tab-dea3" aria-selected="true">全部案件</a>
                                                        </li>
                                                        <li class="u-tab-item u-tab-item-6" role="presentation">
                                                            <a class="u-active-palette-1-light-1 u-button-style u-tab-link u-white u-tab-link-6"
                                                                id="link-tab-a26d" href="#tab-a26d" role="tab"
                                                                aria-controls="tab-a26d" aria-selected="false">已成立訂單</a>
                                                        </li>
                                                    </ul>
                                                    <div class="u-tab-content">
                                                        <div class="u-container-style u-tab-active u-tab-pane"
                                                            id="tab-dea3" role="tabpanel"
                                                            aria-labelledby="link-tab-dea3">
                                                            <div class="u-container-layout u-container-layout-23">
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-15">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-24">
                                                                        <nav
                                                                            class="u-menu u-menu-dropdown u-offcanvas u-menu-5">
                                                                            <div class="menu-collapse"
                                                                                style="font-size: 1.25rem; font-weight: 700;">
                                                                                <a class="u-button-style u-custom-hover-color u-nav-link"
                                                                                    href="#">
                                                                                    <svg>
                                                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                            xlink:href="#menu-hamburger">
                                                                                        </use>
                                                                                    </svg>
                                                                                    <svg version="1.1"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                        <defs>
                                                                                            <symbol id="menu-hamburger"
                                                                                                viewBox="0 0 16 16"
                                                                                                style="width: 16px; height: 16px;">
                                                                                                <rect y="1" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="7" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="13" width="16"
                                                                                                    height="2"></rect>
                                                                                            </symbol>
                                                                                        </defs>
                                                                                    </svg>
                                                                                </a>
                                                                            </div>
                                                                            <div class="u-custom-menu u-nav-container">
                                                                                <ul class="u-nav u-unstyled u-nav-17">
                                                                                    <li class="u-nav-item"><a
                                                                                            class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                                                                            href="排序.html">排序</a>
                                                                                        <div class="u-nav-popup">
                                                                                            <ul
                                                                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-18">
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">由新到舊</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">由舊到新</a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div
                                                                                class="u-custom-menu u-nav-container-collapse">
                                                                                <div
                                                                                    class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                                                                                    <div class="u-sidenav-overflow">
                                                                                        <div class="u-menu-close"></div>
                                                                                        <ul
                                                                                            class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-19">
                                                                                            <li class="u-nav-item"><a
                                                                                                    class="u-button-style u-nav-link"
                                                                                                    href="排序.html">排序</a>
                                                                                                <div
                                                                                                    class="u-nav-popup">
                                                                                                    <ul
                                                                                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-20">
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">由新到舊</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">由舊到新</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-black u-menu-overlay u-opacity u-opacity-70">
                                                                                </div>
                                                                            </div>
                                                                        </nav>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-16">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-25">
                                                                        <div
                                                                            class="u-container-style u-group u-palette-5-light-2 u-group-17">
                                                                            <div
                                                                                class="u-container-layout u-container-layout-26">
                                                                                <h5
                                                                                    class="u-text u-text-default u-text-font u-text-16">
                                                                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-19"
                                                                                        href="####">案件標題(超連結連到案件頁面)</a>
                                                                                </h5>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-18">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-27">
                                                                                        <p class="u-text u-text-17">
                                                                                            應徵日期：</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-19">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-28">
                                                                                        <p class="u-text u-text-18">
                                                                                            期望稿酬：</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-20">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-29">
                                                                                        <p class="u-text u-text-19">
                                                                                            預估需時：</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-21">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-30">
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-20">上一頁</a>
                                                                        <p class="u-text u-text-default u-text-20">X頁
                                                                        </p>
                                                                        <p class="u-text u-text-default u-text-21">／</p>
                                                                        <p class="u-text u-text-default u-text-22">X頁
                                                                        </p>
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-21">下一頁</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="u-container-style u-tab-pane" id="tab-a26d"
                                                            role="tabpanel" aria-labelledby="link-tab-a26d">
                                                            <div class="u-container-layout u-container-layout-31">
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-22">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-32">
                                                                        <nav
                                                                            class="u-menu u-menu-dropdown u-offcanvas u-menu-6">
                                                                            <div class="menu-collapse"
                                                                                style="font-size: 1.25rem; font-weight: 700;">
                                                                                <a class="u-button-style u-custom-hover-color u-nav-link"
                                                                                    href="#">
                                                                                    <svg>
                                                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                            xlink:href="#menu-hamburger">
                                                                                        </use>
                                                                                    </svg>
                                                                                    <svg version="1.1"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                        <defs>
                                                                                            <symbol id="menu-hamburger"
                                                                                                viewBox="0 0 16 16"
                                                                                                style="width: 16px; height: 16px;">
                                                                                                <rect y="1" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="7" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="13" width="16"
                                                                                                    height="2"></rect>
                                                                                            </symbol>
                                                                                        </defs>
                                                                                    </svg>
                                                                                </a>
                                                                            </div>
                                                                            <div class="u-custom-menu u-nav-container">
                                                                                <ul class="u-nav u-unstyled u-nav-21">
                                                                                    <li class="u-nav-item"><a
                                                                                            class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                                                                            href="####">排序</a>
                                                                                        <div class="u-nav-popup">
                                                                                            <ul
                                                                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-22">
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">由新到舊</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">由舊到新</a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div
                                                                                class="u-custom-menu u-nav-container-collapse">
                                                                                <div
                                                                                    class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                                                                                    <div class="u-sidenav-overflow">
                                                                                        <div class="u-menu-close"></div>
                                                                                        <ul
                                                                                            class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-23">
                                                                                            <li class="u-nav-item"><a
                                                                                                    class="u-button-style u-nav-link"
                                                                                                    href="####">排序</a>
                                                                                                <div
                                                                                                    class="u-nav-popup">
                                                                                                    <ul
                                                                                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-24">
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">由新到舊</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link"
                                                                                                                href="####">由舊到新</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-black u-menu-overlay u-opacity u-opacity-70">
                                                                                </div>
                                                                            </div>
                                                                        </nav>
                                                                        <nav
                                                                            class="u-menu u-menu-dropdown u-offcanvas u-menu-7">
                                                                            <div class="menu-collapse"
                                                                                style="font-size: 1.25rem; font-weight: 700;">
                                                                                <a class="u-button-style u-custom-hover-color u-nav-link"
                                                                                    href="#">
                                                                                    <svg>
                                                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                                            xlink:href="#menu-hamburger">
                                                                                        </use>
                                                                                    </svg>
                                                                                    <svg version="1.1"
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                        <defs>
                                                                                            <symbol id="menu-hamburger"
                                                                                                viewBox="0 0 16 16"
                                                                                                style="width: 16px; height: 16px;">
                                                                                                <rect y="1" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="7" width="16"
                                                                                                    height="2"></rect>
                                                                                                <rect y="13" width="16"
                                                                                                    height="2"></rect>
                                                                                            </symbol>
                                                                                        </defs>
                                                                                    </svg>
                                                                                </a>
                                                                            </div>
                                                                            <div class="u-custom-menu u-nav-container">
                                                                                <ul class="u-nav u-unstyled u-nav-25">
                                                                                    <li class="u-nav-item"><a
                                                                                            class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                                                                            href="####">訂單狀態</a>
                                                                                        <div class="u-nav-popup">
                                                                                            <ul
                                                                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-26">
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">第一階段</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">第二階段</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">第三階段</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">已完成</a>
                                                                                                </li>
                                                                                                <li class="u-nav-item">
                                                                                                    <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                        href="####">已取消</a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div
                                                                                class="u-custom-menu u-nav-container-collapse">
                                                                                <div
                                                                                    class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                                                                                    <div class="u-sidenav-overflow">
                                                                                        <div class="u-menu-close"></div>
                                                                                        <ul
                                                                                            class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-27">
                                                                                            <li class="u-nav-item"><a
                                                                                                    class="u-button-style u-nav-link"
                                                                                                    href="####">訂單狀態</a>
                                                                                                <div
                                                                                                    class="u-nav-popup">
                                                                                                    <ul
                                                                                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-28">
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">第一階段</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">第二階段</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">第三階段</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">已完成</a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="u-nav-item">
                                                                                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                                                                                href="####">已取消</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-black u-menu-overlay u-opacity u-opacity-70">
                                                                                </div>
                                                                            </div>
                                                                        </nav>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-23">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-33">
                                                                        <div
                                                                            class="u-container-style u-group u-palette-5-light-2 u-group-24">
                                                                            <div
                                                                                class="u-container-layout u-container-layout-34">
                                                                                <h5
                                                                                    class="u-text u-text-default u-text-font u-text-23">
                                                                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-22"
                                                                                        href="####">案件標題（連到案件頁面）</a>
                                                                                </h5>
                                                                                <a href="268685259"
                                                                                    class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-23"
                                                                                    target="_blank">上傳檔案</a>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-25">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-35">
                                                                                        <p class="u-text u-text-24">發案者：
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                                <a href="####"
                                                                                    class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-24">檔案內容</a>
                                                                                <a href="487026840"
                                                                                    class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-25"
                                                                                    target="_blank"> 給評價</a>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-26">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-36">
                                                                                        <p class="u-text u-text-25">
                                                                                            訂單狀態：</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="u-container-style u-group u-shape-rectangle u-group-27">
                                                                                    <div
                                                                                        class="u-container-layout u-container-layout-37">
                                                                                        <p class="u-text u-text-26">
                                                                                            期望稿酬：</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="u-container-style u-group u-white u-group-28">
                                                                    <div
                                                                        class="u-container-layout u-container-layout-38">
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-26">上一頁</a>
                                                                        <p class="u-text u-text-default u-text-27">X頁
                                                                        </p>
                                                                        <p class="u-text u-text-default u-text-28">／</p>
                                                                        <p class="u-text u-text-default u-text-29">X頁
                                                                        </p>
                                                                        <a href="####"
                                                                            class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-27">下一頁</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <footer class="u-align-center u-clearfix u-footer u-grey-70 u-footer" id="sec-c7c8">
        <p class="u-small-text u-text u-text-variant u-text-1">Copyright @ dodo 2021</p>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
            <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
                <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                    href="#">
                    <svg>
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use>
                    </svg>
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <defs>
                            <symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;">
                                <rect y="1" width="16" height="2"></rect>
                                <rect y="7" width="16" height="2"></rect>
                                <rect y="13" width="16" height="2"></rect>
                            </symbol>
                        </defs>
                    </svg>
                </a>
            </div>
            <div class="u-custom-menu u-nav-container">
                <ul class="u-nav u-unstyled u-nav-1">
                    <li class="u-nav-item"><a
                            class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
                            style="padding: 10px 96px;">聯絡我們</a>
                    </li>
                    <li class="u-nav-item"><a
                            class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
                            style="padding: 10px 96px;">常見問題</a>
                    </li>
                </ul>
            </div>
            <div class="u-custom-menu u-nav-container-collapse">
                <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                    <div class="u-sidenav-overflow">
                        <div class="u-menu-close"></div>
                        <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                            <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                    style="padding: 10px 96px;">聯絡我們</a>
                            </li>
                            <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                    style="padding: 10px 96px;">常見問題</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
            </div>
        </nav>
    </footer>
    
        <script type="text/javascript">
    //登入狀態與登出狀態功能列表, backend的不需要此功能
    //透過AllFilter 傳過來的session
//     <h1>${sessionScope.login}</h1>
    console.log(${sessionScope.login})
    if(${sessionScope.login}==1){ //代表有登入狀態
    	$("[name=issue_case]").show()
    	$("[name=account_manager]").show()
    }else{
    	$("[name=header_login]").show()
    	$("[name=header_register]").show()
    	
    }
    //登出
    function logout(){
    	
    	window.location.href = '/PaintPartyMvcProject/logout'
    }
    
    </script>
    
</body>

</html>