<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>

<html style="font-size: 16px;" lang="zh-Hant">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>繪聚</title>
    
    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="resources/css/Home.css" media="screen">
    <link rel="stylesheet"  href="resources/css/前台框架.css" media="screen">
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
	<script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
 <!--   <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>  --> 
 	<script src="/PaintPartyMvcProject/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/PaintPartyMvcProject/resources/css/jquery-ui.min.css">
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.23.2, nicepage.com">
 <!--   <script type="text/javascript" src="scripts/jquery/jquery-1.6.2.min.js"></script>  --> 
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
    <meta property="og:title" content="前台框架">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
    
    	<style type="text/css">
   		.fix-padding {
    		padding: 10px 46px;
    	}
    	.u-header .u-group-2 {
    		width: 390px;
    	}
   	</style>
</head>

<body class="u-body">
    <header class="u-clearfix u-header u-header" id="sec-4c0b">
        <div class="u-clearfix u-sheet u-sheet-1">
            <a href="<%= request.getContextPath() %>/" class="u-image u-logo u-image-1" title="網站首頁" data-image-width="570"
                data-image-height="410">
                <img src="resources/images/LOGO-TEST-22.png" class="u-logo-image u-logo-image-1">
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
                                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="javascript::"
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
                <div class="u-container-layout u-container-layout-1">
                   
                </div>
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
    </header>
    <div class="container-fluid">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="resources/images/carousel-1.png" class="d-block w-100" style="height: 750px" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="resources/images/carousel-2.png" class="d-block w-100" style="height: 750px" alt=" ...">
                </div>
                <div class="carousel-item">
                    <img src="resources/images/carousel-3.png" class="d-block w-100" style="height: 750px" alt=" ...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
     </div>
     	<div class="container">   
        <section class="top-page-section page-seciotn pt-0" style="margin-top: 5cm;">
            <div class="container">
                <h1 class="text-center section-title">
                    <strong>找尋專屬於你的繪圖</strong>
                </h1>
                <div class=" row d-flex align-items-center pt-2">
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="h-100 text-center">
                            <img src="resources/images/painting.png" alt="" style="height: 200px; width: 200px;">
                            <div class="crad-body text-center">
                                <h3 class="card-title"><strong>委託喜歡的畫師</strong></h3>
                                <p class="card-text pb-5" style="font-size: 20px;">
                                    繪聚是一個可以讓繪師跟使用者互相交流的平台。</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="h-100 text-center">
                            <img src="resources/images/publish.png" alt="" style="height: 200px; width: 200px;">
                            <div class="crad-body text-center">
                                <h3 class="card-title"><strong>刊登委託的項目</strong></h3>
                                <p class="card-text pb-5" style="font-size: 20px;">由會員刊登自己的需求，或著進入畫師列表，選擇自己喜歡的畫師聯絡。</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="h-100 text-center">
                            <img src="resources/images/deal.png" alt="" style="height: 200px; width: 200px;">
                            <div class="crad-body text-center">
                                <h3 class="card-title"><strong>與畫師溝通需求</strong></h3>
                                <p class="card-text pb-5" style="font-size: 20px;">
                                    透過創作者提供的付款資訊進行匯款
                                    創作者在收到款項後就會進行製作，別忘了進行確認喔！</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="h-100 text-center">
                            <img src="resources/images/message.jpg" alt="" style="height: 200px; width: 200px;">
                            <div class="crad-body text-center">
                                <h3 class="card-title"><strong>給與畫師回饋</strong></h3>
                                <p class="card-text pb-5" style="font-size: 20px;">
                                    收到作品後可到畫師的個人會員頁面留言、回饋以及評分，也可讓其他使用者當作參考。</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col text-center mt-2 mb-4">
                    <a href="<%= request.getContextPath() %>/painterlist" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">前往畫師列表</a>
                </div>
            </div>
        </section>
        <section class="top-page-section page-section bg-orange-gradient3" style="margin-top: 5cm">
            <div class="container mt-2">
                <h1 class="text-center section-title">
                    <strong>如何刊登案件?</strong>
                </h1>
            </div>
            <div class="row d-flex align-items-center pt-2">
                <div class="col-12 col-md-6">
                    <p>
                        <span class="btn btn-primary rounded-pill m-1 py-1 px-3 flex-fill font-weight-bold ">步驟 1</span>
                    </p>
                    <div class="px-2">
                        <h2 class="display-8 font-weight-bold py-2 text-muted">點擊右上角的發布案件!</h2>
                        <p class="py-2">花費三分鐘的時間發布案件，就有機會遇見專業的畫師，把精美的繪圖帶回家呦!</p>
                    </div>
                </div>
                <div class="col-12 col-md-6 pt-5">
                    <img src="resources/images/pic1.png" style="height: 400px; width: 550px;">
                </div>
            </div>
            <div class="row d-flex align-items-center pt-5 mt-5 flex-row-reverse">
                <div class="col-12 col-md-6">
                    <p>
                        <span class="btn btn-primary rounded-pill m-1 py-1 px-3 flex-fill font-weight-bold ">步驟 2</span>
                    </p>
                    <div class="px-2">
                        <h2 class="display-8 font-weight-bold py-2 text-muted">將需求填寫在刊登案件中!</h2>
                        <p class="py-2">詳細的填寫委託單後點選送出,這樣畫師在收到需求後就能夠明確的製作唷!不僅方便更節省了溝通的時間，發布成功後就會出現在案件列表中。</p>
                    </div>
                </div>
                <div class="col-12 col-md-6 pt-5">
                    <img src="resources/images/pic2.png" style="height: 400px; width: 550px;">
                </div>
            </div>
            <div class="row d-flex align-items-center pt-2">
                <!-- <div class="col-12 col-md-6">
                    <p>
                        <span class="btn btn-primary rounded-pill m-1 py-1 px-3 flex-fill font-weight-bold ">步驟3</span>
                    </p>
                    <div class="px-2">
                        <h2 class="display-8 font-weight-bold py-2 text-muted">點擊右上角的發布案件!</h2>
                        <p class="py-2">花費三分鐘的時間發布案件，就有機會遇見專業的畫師，把精美的繪圖帶回家呦!</p>
                    </div>
                </div>
                <div class="col-12 col-md-6 pt-5">
                    <img src="images/pic1.png" style="height: 400px; width: 550px;">
                </div> -->
                <div class="col text-center mt-2 mb-4">
                    <a href="<%= request.getContextPath() %>/caselistpage.controller" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">前往案件列表</a>
                </div>
            </div>
        </section>
    </div>
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
	//<h1>${sessionScope.login}</h1>
    console.log(${sessionScope.login})
    if(${sessionScope.login}==1){ //代表有登入狀態
    	$("[name=issue_case]").show()
    	$("[name=account_manager]").show()
    	$("[name=member_name]").show()
    }else{
    	$("[name=header_login]").show()
    	$("[name=header_register]").show()
    	
    }
    //登出
    function logout(){
    	
    	window.location.href = '/PaintPartyMvcProject/logout'
    }
    
    </script>

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
    
    
    
    
    
    
</body>
</html>