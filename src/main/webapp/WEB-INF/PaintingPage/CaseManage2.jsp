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
    <title>案件管理</title>
    <link rel="stylesheet" href="../resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="../resources/css/CaseManage.css" media="screen">
    <script class="u-script" type="text/javascript" src="../resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.23.2, nicepage.com">
    
    <!-- JQ功能引入 -->
	<script class="u-script" type="text/javascript" src="../resources/js/jquery-3.5.1.min.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="../resources/js/jquery-ui.min.js" defer=""></script>
	<link rel="stylesheet" href="../resources/css/jquery-ui.min.css" media="screen">
    <!-- JQ功能引入 -->

	<script src="../resources/js/jquery-3.5.1.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>

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
    
    
  <style>
  /*評價表的CSS*/
    #idimg{ /* 前面加.表CLASS，家#表ID*/
        width: 80px;
        height: 80px;
        
    }

    #hint{
            font-size: large;
            font-style: italic;
        }

    #message{
        font-size: large;
    }

    #message2{
        font-weight:bold;
        font-size: large;
    }
    
    /* 我應徵得之評價表單CSS */
    
    #idimgb{ /* 前面加.表CLASS，家#表ID*/
        width: 80px;
        height: 80px;
        
    }

    #hintb{
            font-size: large;
            font-style: italic;
        }

    #messageb{
        font-size: large;
    }

    #messageb2{
        font-weight:bold;
        font-size: large;
    }
    


/* 以下表單按鈕的BS */

   .centerblock{

      display:flex;
      justify-content: center;

    }
    
 .btn-primary {
  color: #fff;
  background-color: #0d6efd;
  border-color: #0d6efd;
  border-radius:10px;
}
.btn-primary:hover {
  color: #fff;
  background-color: #0b5ed7;
  border-color: #0a58ca;
}
.btn-check:focus + .btn-primary, .btn-primary:focus {
  color: #fff;
  background-color: #0b5ed7;
  border-color: #0a58ca;
  box-shadow: 0 0 0 0.25rem rgba(49, 132, 253, 0.5);
}
.btn-check:checked + .btn-primary, .btn-check:active + .btn-primary, .btn-primary:active, .btn-primary.active, .show > .btn-primary.dropdown-toggle {
  color: #fff;
  background-color: #0a58ca;
  border-color: #0a53be;
}
.btn-check:checked + .btn-primary:focus, .btn-check:active + .btn-primary:focus, .btn-primary:active:focus, .btn-primary.active:focus, .show > .btn-primary.dropdown-toggle:focus {
  box-shadow: 0 0 0 0.25rem rgba(49, 132, 253, 0.5);
}
.btn-primary:disabled, .btn-primary.disabled {
  color: #fff;
  background-color: #0d6efd;
  border-color: #0d6efd;
}

    /* 以上表單按鈕的BS */
    
    
</style>
 
 
    <style type="text/css">
   		.fix-padding {
    		padding: 10px 46px;
    	}
    	.u-header .u-group-2 {
    		width: 390px;
    	}
   	</style>


 <script>
 

 
 </script>
 
 
</head>

<body class="u-body">

<!-- Messenger 洽談外掛程式 Code -->
    <div id="fb-root"></div>

    <!-- Your 洽談外掛程式 code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "109057744863042");
      chatbox.setAttribute("attribution", "biz_inbox");

      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v12.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/zh_TW/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>


    <header class="u-clearfix u-header u-header" id="sec-4c0b">
        <div class="u-clearfix u-sheet u-sheet-1">
            <a href="<%= request.getContextPath() %>/" class="u-image u-logo u-image-1" title="網站首頁" data-image-width="570"
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
                                href="<%= request.getContextPath() %>/painterlist" style="padding: 10px 20px;">畫師列表</a>
                        </li>
                        <li class="u-nav-item"><a
                                class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
                                href="<%= request.getContextPath() %>/caselistpage.controller" style="padding: 10px 20px;">案件列表</a>
                        </li>
 
                    </ul>
                </div>
                <div class="u-custom-menu u-nav-container-collapse">
                    <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                        <div class="u-sidenav-overflow">
                            <div class="u-menu-close"></div>
                            <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                        style="padding: 10px 20px;">畫師列表</a>
                                </li>
                                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                        style="padding: 10px 20px;">案件列表</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
                </div>
            </nav>
            <div class="u-container-style u-group u-white u-group-1">
                
            </div>
            <div class="u-container-style u-group u-white u-group-2">
                <div class="u-container-layout u-container-layout-2">
                
                
                    <div>
	                       <a href="<%= request.getContextPath() %>/backend/CaseFormApplyPage"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3"
							name="issue_case" style="display: none">發布案件</a> 
	                        <a href="/PaintPartyMvcProject/backend"
	                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin" name="account_manager" style="display:none">帳號管理</a>
                        	<span class="u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4" name="member_name" style="display:none"><%= request.getAttribute("member_name") %></span>
                        </div>
                        <div>
	                        <a href="/PaintPartyMvcProject/login"
	                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3" name="header_login" style="display:none">登入</a>
	                        <a href="/PaintPartyMvcProject/register"
	                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin" name="header_register" style="display:none">註冊</a>
                    	</div>
                    </div>
                
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
                                            id="accordion-0781" aria-labelledby="link-accordion-0781" style="min-height:auto;" >
                                            <div class="u-container-layout u-container-layout-2">
                                                <a href="<%= request.getContextPath() %>/backend/accountmanager"
                                                    class="u-align-left u-border-none u-btn u-btn-round u-button-style u-radius-6 u-text-hover-palette-1-light-1 u-white u-btn-1">帳號設置</a>
                                                <a href="<%= request.getContextPath() %>/backend/personcontent"
                                                    class="u-align-left u-border-none u-btn u-btn-round u-button-style u-radius-6 u-text-hover-palette-1-light-1 u-white u-btn-2">個人資料</a>
                                                <a href="<%= request.getContextPath() %>/backend/casemanage"
                                                    class="u-align-left u-border-none u-btn u-btn-round u-button-style u-radius-6 u-text-hover-palette-1-light-1 u-white u-btn-3">案件管理</a>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<%= request.getContextPath() %>/backend/systemnoticemainpage"
                                    class="u-active-grey-15 u-border-none u-btn u-button-style u-grey-5 u-hover-grey-15 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-btn-5">&nbsp;
                                    系統通知</a><span class="u-icon u-icon-circle u-text-palette-5-dark-1 u-icon-2"
                                    data-href="<%= request.getContextPath() %>/backend/systemnoticemainpage"><svg
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
                                <a href="<%= request.getContextPath() %>/backend/chatroom"
                                    class="u-active-grey-15 u-border-none u-btn u-button-style u-grey-5 u-hover-grey-15 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-btn-6">訊息</a><span
                                    class="u-icon u-icon-circle u-icon-3"
                                    data-href="<%= request.getContextPath() %>/backend/chatroom"><svg
                                        class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 -67 380 380"
                                        style="">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-de85"></use>
                                    </svg><svg class="u-svg-content" viewBox="0 -67 380 380" id="svg-de85">
                                        <path
                                            d="m30 0h320c14.402344.0390625 26.761719 10.261719 29.5 24.398438l-189.5 105.601562-189.5-105.601562c2.738281-14.136719 15.097656-24.3593755 29.5-24.398438zm320 246.601562h-320c-16.546875-.050781-29.953125-13.453124-30-30v-169.601562l185.101562 103.199219c1.5.824219 3.183594 1.273437 4.898438 1.300781 1.722656.019531 3.414062-.429688 4.898438-1.300781l185.101562-103.199219v169.601562c-.011719 16.5625-13.4375 29.984376-30 30zm0 0">
                                        </path>
                                    </svg></span>
                                <a href="<%= request.getContextPath() %>/logout"
                                    class="u-active-grey-15 u-border-none u-btn u-button-style u-grey-5 u-hover-grey-15 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-btn-7">登出</a><span
                                    class="u-icon u-icon-circle u-icon-4"
                                    data-href="<%= request.getContextPath() %>/logout"><svg class="u-svg-link"
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
                            <div class="u-container-layout u-container-layout-3" id="casemanage">
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
                                                            
                                                        <!--  我發布的 => 全部案件  置換頁   -->

                                                        <div class="u-container-layout u-container-layout-6" style="padding-top:20px" id="PostShow1">
                                                            <!-- ------------------- -->
                                                            
                                                        請求中，請等待	            
                                                            
                                                            
                                                            
                                                            <!-- ---------------------------- -->
                                                            
                                                            
                                                        </div>
                                                 <!--  我發布的 => 全部案件  置換頁   -->                                                       
                                                        </div>
                                                        <div class="u-container-style u-tab-pane" id="tab-e6d5"
                                                            role="tabpanel" aria-labelledby="link-tab-e6d5">

                                                            <!--  我發布的 => 訂單  置換頁   -->       

                                                            <div class="u-container-layout u-container-layout-6" style="padding-top:20px" id="PostShow2">
                                                                <!-- ------------------- -->
                                                                
                                                            請求中，請等待	            
                                                                
                                                                
                                                                
                                                                <!-- ---------------------------- -->
                                                                
                                                                
                                                            </div>

                                                            <!--  我發布的 => 訂單  置換頁   -->   


                                                           
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        					<script>
                                        						if( $('#link-tab-7446').attr('aria-selected') == 'true' ){
                                        							
                                        						
                                        							$("#PostShow1").load('<%=request.getContextPath() %>/backend/mypostedallcases');
                                        						
                                        						
                                        						
                                        						}
                                        						<!--為了再第一次拜訪這裡，還沒有按任何東西時先印出來 -->
                                        						
                                        						
                                        						
                                        						
                                        						$('#link-tab-7446').click(function(){ <!--我發布的>全部案件 -->
                                        						
                                        							$('#link-tab-7446').attr('aria-selected','true');
                                        							$("#PostShow2").empty(); //當按下 我發布的>全部案件 把PostShow2裡的子元素給幹掉
                                        							$(".mypostedorders_dialog").remove(); //當按下 我發布的>全部案件 把成立訂單的dialog包含子元素給幹掉
                                        							$("#PostShow1").load('<%=request.getContextPath() %>/backend/mypostedallcases');
                                            						
                                            					
                                                                });
                                        						
                                        						$('#link-tab-e6d5').click(function(){ <!-- 我發布的>成立訂單 -->
                                        						
                                        							$('#link-tab-e6d5').attr('aria-selected','true');
                                        							$("#PostShow1").empty();
                                        							$(".mypostedallcases_dialog").remove(); //當按下 我發布的>成立訂單 把全部案件的dialog包含子元素給幹掉
                                        							$("#PostShow2").load('<%=request.getContextPath() %>/backend/mypostedorders');
                                            		

                                                                });
                                        						
                                        						
                                        	
											                   
											                </script>
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
                                                            


                                                            <!--  我應徵的 => 全部案件  置換頁   -->       

                                                            <div class="u-container-layout u-container-layout-6" style="padding-top:20px" id="PostShow3">
                                                                <!-- ------------------- -->
                                                                
                                                            請求中，請等待	            
                                                                
                                                                
                                                                
                                                                <!-- ---------------------------- -->
                                                                
                                                                
                                                            </div>

                                                            <!--  我發布的 => 全部案件  置換頁   -->   

 




                                                        </div>
                                                        <div class="u-container-style u-tab-pane" id="tab-a26d"
                                                            role="tabpanel" aria-labelledby="link-tab-a26d">



                                                            <!--  我應徵的 => 訂單  置換頁   -->       

                                                            <div class="u-container-layout u-container-layout-6" style="padding-top:20px" id="PostShow4">
                                                                <!-- ------------------- -->
                                                                
                                                            請求中，請等待	            
                                                                
                                                                
                                                                
                                                                <!-- ---------------------------- -->
                                                                
                                                                
                                                            </div>

                                                            <!--  我應徵的 => 訂單  置換頁   -->   






                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <script>
                            
                            
                                if( $('#link-tab-dea3').attr('aria-selected') == 'true' ){
                                    $("#PostShow3").load('<%=request.getContextPath() %>/backend/myappliedallcases');
                                }
                                <!--為了再第一次拜訪這裡，還沒有按任何東西時先印出來 -->
                                
                                
                                
                                
                                $('#link-tab-dea3').click(function(){ <!--我應徵的>全部案件 -->

                                    $('#link-tab-dea3').attr('aria-selected','true');
                                    $("#PostShow4").empty();//當按下 我應徵的>全部案件 把PostShow4裡的子元素給幹掉
                                    $(".myappliedorders_dialog").remove(); //當按下 我應徵的>全部案件 把成立訂單的dialog包含子元素給幹掉
                                    $("#PostShow3").load('<%=request.getContextPath() %>/backend/myappliedallcases');
                                    
                                
                                });
                                
                                $('#link-tab-a26d').click(function(){ <!-- 我應徵的>成立訂單 -->
                                
                                    $('#link-tab-a26d').attr('aria-selected','true');
                                    $("#PostShow3").empty();//當按下 我應徵的>成立訂單 把PostShow3裡的子元素給幹掉
                                    //$(".dialog").remove(); //當按下 我應徵的>全部案件 把全部案件的dialog包含子元素給幹掉(雖然目前沒有做)
                                    $("#PostShow4").load('<%=request.getContextPath() %>/backend/myappliedorders');
                    

                                });
                                
                                
            
                               <!-- 關鍵字:3333JQ -->
                            </script>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <footer class="u-align-center u-clearfix u-footer u-grey-70 u-footer" id="sec-c7c8">
        <p class="u-small-text u-text u-text-variant u-text-1">Copyright @ paintingparty 2021</p>
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

        </nav>
    </footer>
    
    
        <script type="text/javascript">
    //登入狀態與登出狀態功能列表
    //透過AllFilter 傳過來的session
//     <h1>${sessionScope.login}</h1>
    //console.log(${sessionScope.login})
    if(${sessionScope.login}==1){ //代表有登入狀態
    	$("[name=issue_case]").show()
    	$("[name=account_manager]").show()

    	$("[name=member_name]").show()
    }else{
    	$("[name=header_login]").show()
    	$("[name=header_register]").show()
    	
    }

    
    </script>
    
    
    <script>
    	
    var my_status = "<%= session.getAttribute("session_member_status") %>";
    //console.log(my_status);
    if(my_status === "一般會員"){
    	$("#link-tab-14b7").attr("style","display:none");
    	  	
    }
    //因為有用COOKIE來做記住我的功能，所以關掉瀏覽器，再進來本網頁時，會因沒經過LOGIN的流程，導致SESSION的會員狀態沒東西，有時間再改
    
    </script>
    
    
    
    
</body>

</html>