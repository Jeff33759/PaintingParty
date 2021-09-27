<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
<!DOCTYPE html>
<html style="font-size: 16px;" lang="zh-Hant">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>會員個人頁面</title>
    <link rel="stylesheet" href="../resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css">
    <script src="../resources/js/popper.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/MemberPage.css">
    <link rel="stylesheet" href="../resources/css/前台框架.css" media="screen">
    <script class="u-script" type="text/javascript" src="../resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.23.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
	<script src="../resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../resources/css/jquery-ui.min.css"></link>
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "框架demo",
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


    <div class="container-fluid">
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
                                    href="/PaintPartyMvcProject/painterlist" style="padding: 10px 20px;">畫師列表</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
                                    href="/PaintPartyMvcProject/caselistpage.controller"
                                    style="padding: 10px 20px;">案件列表</a>
                            </li>

                        </ul>
                    </div>
                    <div class="u-custom-menu u-nav-container-collapse">
                        <div
                            class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
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
                <div class="u-container-style u-group u-white u-group-2 ">
                    <div class="u-container-layout u-container-layout-2">
                        
                    </div>
                </div>
                <div class="u-container-style u-group u-white u-group-2">
                    <div class="u-container-layout u-container-layout-2">
                    	<div>
	                        <a href="<%= request.getContextPath() %>/backend/CaseFormApplyPage"
	                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3" name="issue_case" style="display:none">發布案件</a>
	                        <a href="/PaintPartyMvcProject/backend"
	                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin" name="account_manager" style="display:none">帳號管理</a>
                        	<span class="u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4" name="member_name" style="display:none"><%= request.getAttribute("member_name_login") %></span>
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
        <section class="page-section bg-light">
            <div class="container-lg">
                <div class="row">
                    <div class="col-12 col-md-12">
                        <div class="row">
                            <div class="col-12 col-lg-4">
                                <div class="creators-item shadow-sm p-3 bg-white rounded-1g">
                                    <div class="text-center pt-3 pr-3 pl-3 pb-2">
                                        <a href="#">
                                            <div class="w-100 mw-200px my-2 mx-auto">
                                                <div class=" propic text-center rounded-circle">
<!--                                                     <img src="../resources/images/Patrick.png" class="rounded-circle"> -->
                                                    <img src="/PaintPartyMvcProject/memberpageshowpic/${member_id}" class="rounded-circle">
                                                </div>
                                            </div>
                                        </a>
                                        <div class="portfolio-caption">
                                            <div class="text-center">
                                                <a href="#" class="link-dark">
                                                    <span class="font-weight-bold display-7"> ${member_name } </span>
                                                </a>
                                            </div>
                                            <div class="my-2 text-center">
                                            	<c:forEach var="i" begin="0" end="${tagIdSize }">
                                            		<span class="badge badge-light">${map.get(i)}</span>
                                            	
                                            	</c:forEach>
<%--                                                 <span class="badge badge-light">${tag_content+i}</span> --%>
<%--                                                 <span class="badge badge-light">${tag_content+i}</span> --%>
<%--                                                 <span class="badge badge-light">${tag_content+i}</span> --%>
                                            </div>
                                            <div class="text-center d-flex align-items-center justify-content-center">
                                                <a href="/PaintPartyMvcProject/backend/gotochat/${member_id}">
                                                    <button type="button" class="btn btn-secondary btn-lg">私人訊息</button>
                                                </a>
                                            </div>
                                            <div class="bg-light p-3 my-3 rounded-lg">
                                                <div class="text-muted font-weight-bold"> ${schedule} </div>
                                                <div class="mt-1 ql-show-container">
<!--                                                     <P> -->
<!--                                                         "8月/" -->
<!--                                                         <span style="color: rgb(136,136,136);"> 已滿單 </span> -->
<!--                                                     </P> -->
                                                </div>
                                            </div>
                                            <div class="mt-4 mx-2 mb-2 text-muted q1-show container">
                                                <p>${profile_content}</p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-8">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                                            data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                            aria-selected="true">委託中案件</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                            data-bs-target="#profile" type="button" role="tab" aria-controls="profile"
                                            aria-selected="false">委託評價</button>
                                    </li>
                                </ul>
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel"
                                        aria-labelledby="home-tab">
                                        <div class="row mt-4" style="padding-top:30px">
<%--                                         	<c:if test="${(mapCaseSize-1)>=0 }"> --%>
<%--                                             <c:forEach items="" begin=0 > --%>
<%--                                             <c:forEach var="i" begin="0" end="3" > --%>
<!-- 	                                            	<div class="col-lg-6 col-6 mb-4"> -->
<!-- 		                                                <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100"> -->
<!-- 		                                                    <section class="project-cell slideInUp delay-0"> -->
<!-- 		                                                        <a href="#" class="project-cell_container" target="_blank"> -->
<!-- 		                                                            <section class="project-cell-header"> -->
<!-- 		                                                                <h4 class="project-cell-title"> -->
<!-- 		                                                                    <span class="project-cell-name" -->
<%-- 		                                                                        style="color: black;">案件 : ${getString("case_title") }</span> --%>
<!-- 		                                                                </h4> -->
<!-- 		                                                                <br /> -->
<!-- 		                                                            </section> -->
<!-- 		                                                            <section class="project-cell-date"> -->
<!-- 		                                                                <h4 class="project-cell-date"> -->
<!-- 		                                                                    <span class="project-cell-name" -->
<%-- 		                                                                        style="color: black;">發布日期 :${getString("upload_date") } </span> --%>
<!-- 		                                                                </h4> -->
<!-- 		                                                                <br /> -->
<!-- 		                                                                <section class="project-cell-label"> -->
<!-- 		                                                                    <h4 class="project-cell-label"> -->
<!-- 		                                                                        <span class="project-cell-name" -->
<%-- 	                                                                           style="color: black;">案件標籤 : ${getString("case_tag") }</span> --%>
<!-- 		                                                                    </h4> -->
<!-- 		                                                                </section> -->
<!-- 		                                                            </section> -->
<!-- 		                                                        </a> -->
<!-- 		                                                    </section> -->
<!-- 		                                                </div> -->
<!-- 	                                            	</div> -->
<%--                                               </c:forEach> --%>
<%--                                               </c:if> --%>
<%--                                               <c:if test="${(mapCaseSize-1)<0 }"> --%>
<!--                                               <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100"> -->
<!--                                                     <a>此畫師暫無委託案件</a> -->
<!--                                                 </div> -->
<%--                                                 </c:if> --%>
                                              
<!--                                             <div class="col-lg-6 col-6 mb-4"> -->
<!--                                                 <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100"> -->
<!--                                                     <section class="project-cell slideInUp delay-0"> -->
<!--                                                         <a href="#" class="project-cell_container" target="_blank"> -->
<!--                                                             <section class="project-cell-header"> -->
<!--                                                                 <h4 class="project-cell-title"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">案件 : 案件標題</span> -->
<!--                                                                 </h4> -->
<!--                                                                 <br /> -->
<!--                                                             </section> -->
<!--                                                             <section class="project-cell-date"> -->
<!--                                                                 <h4 class="project-cell-date"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">發布日期 : </span> -->
<!--                                                                 </h4> -->
<!--                                                                 <br /> -->
<!--                                                                 <section class="project-cell-label"> -->
<!--                                                                     <h4 class="project-cell-label"> -->
<!--                                                                         <span class="project-cell-name" -->
<!--                                                                             style="color: black;">案件標籤 : </span> -->
<!--                                                                     </h4> -->
<!--                                                                 </section> -->
<!--                                                             </section> -->
<!--                                                         </a> -->
<!--                                                     </section> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                             <div class="col-lg-6 col-6 mb-4"> -->
<!--                                                 <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100"> -->
<!--                                                     <section class="project-cell slideInUp delay-0"> -->
<!--                                                         <a href="#" class="project-cell_container" target="_blank"> -->
<!--                                                             <section class="project-cell-header"> -->
<!--                                                                 <h4 class="project-cell-title"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">案件 : 案件標題</span> -->
<!--                                                                 </h4> -->
<!--                                                                 <br /> -->
<!--                                                             </section> -->
<!--                                                             <section class="project-cell-date"> -->
<!--                                                                 <h4 class="project-cell-date"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">發布日期 : </span> -->
<!--                                                                 </h4> -->
<!--                                                                 <br /> -->
<!--                                                                 <section class="project-cell-label"> -->
<!--                                                                     <h4 class="project-cell-label"> -->
<!--                                                                         <span class="project-cell-name" -->
<!--                                                                             style="color: black;">案件標籤 : </span> -->
<!--                                                                     </h4> -->
<!--                                                                 </section> -->
<!--                                                             </section> -->
<!--                                                         </a> -->
<!--                                                     </section> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                             <div class="col-lg-6 col-6 mb-4"> -->
<!--                                                 <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100"> -->
<!--                                                     <section class="project-cell slideInUp delay-0"> -->
<!--                                                         <a href="#" class="project-cell_container" target="_blank"> -->
<!--                                                             <section class="project-cell-header"> -->
<!--                                                                 <h4 class="project-cell-title"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">案件 : 案件標題</span> -->
<!--                                                                     </h3> -->
<!--                                                                     <br /> -->
<!--                                                             </section> -->
<!--                                                             <section class="project-cell-date"> -->
<!--                                                                 <h4 class="project-cell-date"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">發布日期 : </span> -->
<!--                                                                 </h4> -->
<!--                                                                 <br /> -->
<!--                                                                 <section class="project-cell-label"> -->
<!--                                                                     <h4 class="project-cell-label"> -->
<!--                                                                         <span class="project-cell-name" -->
<!--                                                                             style="color: black;">案件標籤 : </span> -->
<!--                                                                     </h4> -->
<!--                                                                 </section> -->
<!--                                                             </section> -->
<!--                                                         </a> -->
<!--                                                     </section> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                             <div class="col-lg-6 col-6 mb-4"> -->
<!--                                                 <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100"> -->
<!--                                                     <section class="project-cell slideInUp delay-0"> -->
<!--                                                         <a href="#" class="project-cell_container" target="_blank"> -->
<!--                                                             <section class="project-cell-header"> -->
<!--                                                                 <h4 class="project-cell-title"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">案件 : 案件標題</span> -->
<!--                                                                     </h3> -->
<!--                                                                     <br /> -->
<!--                                                             </section> -->
<!--                                                             <section class="project-cell-date"> -->
<!--                                                                 <h4 class="project-cell-date"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">發布日期 : </span> -->
<!--                                                                 </h4> -->
<!--                                                                 <br /> -->
<!--                                                                 <section class="project-cell-label"> -->
<!--                                                                     <h4 class="project-cell-label"> -->
<!--                                                                         <span class="project-cell-name" -->
<!--                                                                             style="color: black;">案件標籤 : </span> -->
<!--                                                                     </h4> -->
<!--                                                                 </section> -->
<!--                                                             </section> -->
<!--                                                         </a> -->
<!--                                                     </section> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                             <div class="col-lg-6 col-6 mb-4"> -->
<!--                                                 <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100"> -->
<!--                                                     <section class="project-cell slideInUp delay-0"> -->
<!--                                                         <a href="#" class="project-cell_container" target="_blank"> -->
<!--                                                             <section class="project-cell-header"> -->
<!--                                                                 <h4 class="project-cell-title"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">案件 : 案件標題</span> -->
<!--                                                                     </h3> -->
<!--                                                                     <br /> -->
<!--                                                             </section> -->
<!--                                                             <section class="project-cell-date"> -->
<!--                                                                 <h4 class="project-cell-date"> -->
<!--                                                                     <span class="project-cell-name" -->
<!--                                                                         style="color: black;">發布日期 : </span> -->
<!--                                                                 </h4> -->
<!--                                                                 <br /> -->
<!--                                                                 <section class="project-cell-label"> -->
<!--                                                                     <h4 class="project-cell-label"> -->
<!--                                                                         <span class="project-cell-name" -->
<!--                                                                             style="color: black;">案件標籤 : </span> -->
<!--                                                                     </h4> -->
<!--                                                                 </section> -->
<!--                                                             </section> -->
<!--                                                         </a> -->
<!--                                                     </section> -->
<!--                                                 </div> -->
<!--                                             </div> -->
                                            
                                            
                                        </div>
                                        <div class="mt-1">
                                                <nav aria-label="Page navigation">
                                                    <ul class="pages">
                                                    	
                                                    	<c:forEach var="i" begin="0" end="${totalPage-1}">
	                                                        <li class="page-item">
	                                                            <button type="button" class="btn btn-outline-secondary" name="page${i}" onclick="memberCasesUtil.getCasesByPagination(${i})">${i + 1}頁
	                                                            </button>
	                                                        </li>
                                                    	
                                                    	</c:forEach>
                                                    	
<!--                                                         <li class="page-item"> -->
<!--                                                             <h6>X頁</h6> -->
<!--                                                         </li> -->
<!--                                                         <li class="page-item"> -->
<!--                                                             <h6>／</h6> -->
<!--                                                         </li> -->
<!--                                                         <li class="page-item"> -->
<!--                                                             <h6>X頁</h6> -->
<!--                                                         </li> -->
<!--                                                         <li class="page-item"> -->
<!--                                                             <button type="button" class="btn btn-outline-secondary"> 下一頁 -->
<!--                                                             </button> -->
<!--                                                         </li> -->
                                                    </ul>
                                                </nav>
                                            </div>
                                    </div>
                                    <div class="tab-pane fade" id="profile" role="tabpanel"
                                        aria-labelledby="profile-tab">
                                        <div class="tab_css">
                                            <input id="tab1" type="radio" name="tab" checked="checked" />
                                            <label for="tab1">被委託</label>
                                            <div class="tab_content">
                                                <div class="row mt-4">
                                                    <div class="col-12 mb-4">
<!--                                                         <div class="commissions-item shadow-sm p-3 bg-white rounded-lg"> -->
<!--                                                             <div class="media"> -->
<!--                                                                 <a href="#" target="_blank"> -->
<!--                                                                     <div class="w-3 mr-3"> -->
<!--                                                                         <div -->
<!--                                                                             class="text-center rounded-circle square-cover"> -->
<!--                                                                         </div> -->
<!--                                                                             <img src="../resources/images/LOGO-TEST-22.png"> -->
<!-- <!--                                                                             <img src="../resources/images/Patrick.png">  -->
<!--                                                                     </div> -->
<!--                                                                 </a> -->
<!--                                                                 <div class="media-body"> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <h5>"會員ID"</h5> -->
<!--                                                                     </div> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <span class="badge badge-light mr-2">委託者</span> -->
<!--                                                                     </div> -->
<!--                                                                     <div class=""> -->
<!--                                                                         <div class="font-weight-bold my-1"> -->
<!--                                                                         </div> -->
<!--                                                                         <div class="text-muted"> -->
<!--                                                                             <h4>很喜歡成品!非常感謝!</h4> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
                                                    </div>
<!--                                                     <div class="col-12 mb-4"> -->
<!--                                                         <div class="commissions-item shadow-sm p-3 bg-white rounded-lg"> -->
<!--                                                             <div class="media"> -->
<!--                                                                 <a href="#" target="_blank"> -->
<!--                                                                     <div class="w-3 mr-3"> -->
<!--                                                                         <div -->
<!--                                                                             class="text center rounded-circle square-cover"> -->
<!--                                                                             <img src="../resources/images/LOGO-TEST-22.png"> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </a> -->
<!--                                                                 <div class="media-body"> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <h5>"會員ID"</h5> -->
<!--                                                                     </div> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <span class="badge badge-light mr-2">委託者</span> -->
<!--                                                                     </div> -->
<!--                                                                     <div class=""> -->
<!--                                                                         <div class="font-weight-bold my-1"> -->
<!--                                                                         </div> -->
<!--                                                                         <div class="text-muted"> -->
<!--                                                                             <h4>很喜歡成品!非常感謝!</h4> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
<!--                                                     </div> -->
<!--                                                     <div class="col-12 mb-4"> -->
<!--                                                         <div class="commissions-item shadow-sm p-3 bg-white rounded-lg"> -->
<!--                                                             <div class="media"> -->
<!--                                                                 <a href="#" target="_blank"> -->
<!--                                                                     <div class="w-3 mr-3"> -->
<!--                                                                         <div -->
<!--                                                                             class="text-center rounded-circle square-cover"> -->
<!--                                                                             <img src="../resources/images/LOGO-TEST-22.png"> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </a> -->
<!--                                                                 <div class="media-body"> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <h5>"會員ID"</h5> -->
<!--                                                                     </div> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <span class="badge badge-light mr-2">委託者</span> -->
<!--                                                                     </div> -->
<!--                                                                     <div class=""> -->
<!--                                                                         <div class="font-weight-bold my-1"> -->
<!--                                                                         </div> -->
<!--                                                                         <div class="text-muted"> -->
<!--                                                                             <h4>很喜歡成品!非常感謝!</h4> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
<!--                                                     </div> -->
												
                                                </div>
                                                    <div class="mt-1">
		                                                <nav aria-label="Page navigation">
		                                                    <ul class="pages">
		                                                    	
		                                                    	<c:forEach var="i" begin="0" end="${totalPageForEva-1}">
			                                                        <li class="page-item">
			                                                            <button type="button" class="btn btn-outline-secondary" name="page${i}" onclick="evaUtil.getevasByPagination(${i})">${i + 1}頁</button>
			                                                        </li>
		                                                    	
		                                                    	</c:forEach>

		                                                    </ul>
		                                                </nav>
		                                            </div>
<!--                                             <h3>哈哈</h3> -->
                                            </div>
                                            <input id="tab2" type="radio" name="tab" />
                                            <label for="tab2" >委託他人</label>
                                            <div class="haha">

                                                <div class="row mt-4">
                                                    <div class="col-12 mb-4">
<!--                                                         <div class="commissions-item shadow-sm p-3 bg-white rounded-lg"> -->
<!--                                                             <div class="media"> -->
<!--                                                                 <a href="#" target="_blank"> -->
<!--                                                                     <div class="w-3 mr-3"> -->
<!--                                                                         <div -->
<!--                                                                             class="text center rounded-circle square-cover"> -->
<!--                                                                             <img src="../resources/images/LOGO-TEST-22.png"> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </a> -->
<!--                                                                 <div class="media-body"> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <h5>"會員ID"</h5> -->
<!--                                                                     </div> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <span class="badge badge-light mr-2">創作者</span> -->
<!--                                                                     </div> -->
<!--                                                                     <div class=""> -->
<!--                                                                         <div class="font-weight-bold my-1"> -->
<!--                                                                         </div> -->
<!--                                                                         <div class="text-muted"> -->
<!--                                                                             <h4>買家匯款速度快~大力推薦</h4> -->
<!--                                                                         </div> -->
<!--                                                                         <div -->
<!--                                                                             class="reply my-3 ml-3 p1-3 border-left-1-light"> -->
<!--                                                                             <div class="font-weight-bold my-1"> -->
<!--                                                                                 <a href="#" target="_blank" -->
<!--                                                                                     class="link-dark"> -->
<!--                                                                                     <span style="padding: 20px;"> -->
<!--                                                                                         買家</span> -->
<!--                                                                                 </a> -->
<!--                                                                             </div> -->
<!--                                                                             <div class="text-muted"> -->
<!--                                                                                 <span style="padding: 20px;"> -->
<!--                                                                                     "收到了好可愛的貼圖,好開心!"</span> -->
<!--                                                                             </div> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
                                                    </div>
                                                   
<!--                                                     <div class="col-12 mb-4"> -->
<!--                                                         <div class="commissions-item shadow-sm p-3 bg-white rounded-lg"> -->
<!--                                                             <div class="media"> -->
<!--                                                                 <a href="#" target="_blank"> -->
<!--                                                                     <div class="w-3 mr-3"> -->
<!--                                                                         <div -->
<!--                                                                             class="text center rounded-circle square-cover"> -->
<!--                                                                             <img src="../resources/images/LOGO-TEST-22.png"> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </a> -->
<!--                                                                 <div class="media-body"> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <h5>"會員ID"</h5> -->
<!--                                                                     </div> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <span class="badge badge-light mr-2">創作者</span> -->
<!--                                                                     </div> -->
<!--                                                                     <div class=""> -->
<!--                                                                         <div class="font-weight-bold my-1"> -->
<!--                                                                         </div> -->
<!--                                                                         <div class="text-muted"> -->
<!--                                                                             <h4>買家匯款速度快~大力推薦</h4> -->
<!--                                                                         </div> -->
<!--                                                                         <div -->
<!--                                                                             class="reply my-3 ml-3 p1-3 border-left-1-light"> -->
<!--                                                                             <div class="font-weight-bold my-1"> -->
<!--                                                                                 <a href="#" target="_blank" -->
<!--                                                                                     class="link-dark"> -->
<!--                                                                                     <span style="padding: 20px;"> -->
<!--                                                                                         買家</span> -->
<!--                                                                                 </a> -->
<!--                                                                             </div> -->
<!--                                                                             <div class="text-muted"> -->
<!--                                                                                 <span style="padding: 20px;"> -->
<!--                                                                                     "收到了好可愛的貼圖,好開心!"</span> -->
<!--                                                                             </div> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
<!--                                                     </div> -->
<!--                                                     <div class="col-12 mb-4"> -->
<!--                                                         <div class="commissions-item shadow-sm p-3 bg-white rounded-lg"> -->
<!--                                                             <div class="media"> -->
<!--                                                                 <a href="#" target="_blank"> -->
<!--                                                                     <div class="w-3 mr-3"> -->
<!--                                                                         <div -->
<!--                                                                             class="text center rounded-circle square-cover">                                                                           -->
<!--                                                                             <img src="../resources/images/LOGO-TEST-22.png"> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </a> -->
<!--                                                                 <div class="media-body"> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <h5>"會員ID"</h5> -->
<!--                                                                     </div> -->
<!--                                                                     <div class="font-weight-bold my-1"> -->
<!--                                                                         <span class="badge badge-light mr-2">創作者</span> -->
<!--                                                                     </div> -->
<!--                                                                     <div class=""> -->
<!--                                                                         <div class="font-weight-bold my-1"> -->
<!--                                                                         </div> -->
<!--                                                                         <div class="text-muted"> -->
<!--                                                                             <h4>買家匯款速度快~大力推薦</h4> -->
<!--                                                                         </div> -->
<!--                                                                         <div -->
<!--                                                                             class="reply my-3 ml-3 p1-3 border-left-1-light"> -->
<!--                                                                             <div class="font-weight-bold my-1"> -->
<!--                                                                                 <a href="#" target="_blank" -->
<!--                                                                                     class="link-dark"> -->
<!--                                                                                     <span style="padding: 20px;"> -->
<!--                                                                                         買家</span> -->
<!--                                                                                 </a> -->
<!--                                                                             </div> -->
<!--                                                                             <div class="text-muted"> -->
<!--                                                                                 <span style="padding: 20px;"> -->
<!--                                                                                     "收到了好可愛的貼圖,好開心!"</span> -->
<!--                                                                             </div> -->
<!--                                                                         </div> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
<!--                                                     </div> -->
                                                </div>
                                                    <div class="mt-1">
                                                <nav aria-label="Page navigation">
                                                    <ul class="pages">
                                                    	
                                                    	<c:forEach var="i" begin="0" end="${totalPageForEvab2a-1}">
	                                                        <li class="page-item">
	                                                            <button type="button" class="btn btn-outline-secondary" name="page${i}" onclick="evab2aUtil.getevasb2aByPagination(${i})">${i + 1}頁
	                                                            </button>
	                                                        </li>
                                                    	
                                                    	</c:forEach>
                                                    	
<!--                                                         <li class="page-item"> -->
<!--                                                             <h6>X頁</h6> -->
<!--                                                         </li> -->
<!--                                                         <li class="page-item"> -->
<!--                                                             <h6>／</h6> -->
<!--                                                         </li> -->
<!--                                                         <li class="page-item"> -->
<!--                                                             <h6>X頁</h6> -->
<!--                                                         </li> -->
<!--                                                         <li class="page-item"> -->
<!--                                                             <button type="button" class="btn btn-outline-secondary"> 下一頁 -->
<!--                                                             </button> -->
<!--                                                         </li> -->
                                                    </ul>
                                                </nav>
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
    //登入狀態與登出狀態功能列表
    //透過AllFilter 傳過來的session
//     <h1>${sessionScope.login}</h1>
//     console.log(${sessionScope.login})
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
    
//     function sendPage(i){
//     	console.log(`/PaintPartyMvcProject/memberpage/${member_id}?presentpage=` + i)
//     	$.ajax({
//     		url: `/PaintPartyMvcProject/memberpage/${member_id}?presentpage=` + i,
//     		method:"post",
//     		success:function(res){
//     			window.location.href =`/PaintPartyMvcProject/memberpage/${member_id}?presentpage=` + i
//     		},
//     		error: function (err) {
//     			console.log('error', err)
//     		}
//     	})
//     }

    var memberCasesUtil = window.memberCasesUtil = {
    		casesPack: null,  // 瀏覽會員中的所有案件
    		currentPageCases: [],	// 當前頁面的案件
    		dom: document.querySelector('.tab-content .row.mt-4'), // 要顯示案件的父元素
    		// 切換頁數
    		getCasesByPagination(page) {
    			this.currentPageCases = this.casesPack[page] || []
    			if (this.currentPageCases.length <= 0) {
    				this.renderDefaultHtml()
    			} else {
    				this.renderHtml()
    			}
    		},
    		// 渲染無案件的頁面
    		renderDefaultHtml() {
    			this.dom.innerHTML = `
    				<div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100">
                		<a>此畫師暫無委託案件</a>
            		</div>
    			`
    		},
    		// 渲染有案件的頁面
    		renderHtml() {
//     			function(content, caseObj) {  就是下面 currentPageCases.reduce((content, caseObj) =>
//     				return //
//     			}
    			var html = this.currentPageCases.reduce((content, caseObj) => {
    				return content + `
		   				<div class="col-lg-6 col-6 mb-4">
		                    <div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100">
		                        <section class="project-cell slideInUp delay-0">
		                            <a href="/PaintPartyMvcProject/casepagemainpage.controller/\${caseObj.case_id}" class="project-cell_container" target="_blank">
		                                <section class="project-cell-header">
		                                    <h4 class="project-cell-title">
		                                        <span class="project-cell-name" style="color: black;">案件 : \${caseObj.case_title}</span>
		                                    </h4>
		                                    <br />
		                                </section>
		                                <section class="project-cell-date">
		                                    <h4 class="project-cell-date">
		                                        <span class="project-cell-name"
		                                            style="color: black;">發布日期 : \${caseObj.upload_date}</span>
		                                    </h4>
		                                    <br />
		                                    <section class="project-cell-label">
		                                        <h4 class="project-cell-label">
		                                            <span class="project-cell-name"
		                                           style="color: black;">案件標籤 : \${caseObj.case_tag}</span>
		                                        </h4>
		                                    </section>
		                                </section>
		                            </a>
		                        </section>
		                    </div>
		            	</div>
    					`
    			}, '') //initialValue是空
    			this.dom.innerHTML = html
    		},
    		// 初始化
    		init() {
    			this.casesPack = ${mapCase} //從後端拿資料
    			this.getCasesByPagination(0) //初始化第0頁
    		}
    }
    // 呼叫初始化方法,直接載入memberCasesUtil
    memberCasesUtil.init() 
    
    
    
    var evaUtil = window.evaUtil = {
    		evaPack: null,  // 瀏覽會員中的所有案件
    		currentPageEva: [],	// 當前頁面的案件
    		dom: document.querySelector('.tab_content .row.mt-4'), // 要顯示案件的父元素
    		// 切換頁數
    		getevasByPagination(page) {
    			this.currentPageEva = this.evaPack[page] || []
    			if (this.currentPageEva.length <= 0) {
    				this.renderDefaultHtml()
    			} else {
    				this.renderHtml()
    			}
    		},
    		// 渲染無案件的頁面
    		renderDefaultHtml() {
    			this.dom.innerHTML = `
    				<div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100">
                		<a>此畫師暫無評價</a>
            		</div>
    			`
    		},
    		// 渲染有案件的頁面
    		renderHtml() {
//     			function(content, caseObj) {  就是下面 currentPageCases.reduce((content, caseObj) =>
//     				return //
//     			}
    			var html = this.currentPageEva.reduce((content, evaObj) => {
    				return content + `
    				<div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                    <div class="media">
                        <a href="/PaintPartyMvcProject/memberpage/\${evaObj.memIdS}" target="_blank">
                            <div class="w-3 mr-3">
                                <div
                                    class="text center square-cover">
                                    <img src="/PaintPartyMvcProject/memberpageshowpic/\${evaObj.memIdS}" 
                                    	style="width: 100%; height: 120px"
                                    	class="rounded-circle">
                                </div>
                            </div>
                        </a>
                        <div class="media-body">
                            <div class="font-weight-bold my-1">
                                <h5>\${evaObj.memNameS}</h5>
                            </div>
                            <div class="font-weight-bold my-1">
                                <span class="badge badge-light mr-2">委託者</span>
                                <span class="badge badge-light mr-2">\${evaObj.evaluation_star}</span>
                            </div>
                            <div class="">
                                <div class="font-weight-bold my-1">
                                </div>
                                <div class="text-muted">
                                    <h4>\${evaObj.eva_content}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    					`
    			}, '')
    			this.dom.innerHTML = html
    		},
    		// 初始化
    		init() {
    			this.evaPack = ${evaJson} //從後端拿資料
    			this.getevasByPagination(0) //初始化第0頁
    		}
    }
    // 呼叫初始化方法,直接載入memberCasesUtil
    evaUtil.init() 
    
    
    //------------------------------------------------------------
    var evab2aUtil = window.evaba2Util = {
    		evab2aPack: null,  // 瀏覽會員中的所有案件
    		currentPageEvab2a: [],	// 當前頁面的案件
    		dom: document.querySelector('.haha .row.mt-4'), // 要顯示案件的父元素
    		// 切換頁數
    		getevasb2aByPagination(page) {
    			this.currentPageEvab2a = this.evab2aPack[page] || []
    			if (this.currentPageEvab2a.length <= 0) {
    				this.renderDefaultHtml()
    			} else {
    				this.renderHtml()
    			}
    		},
    		// 渲染無案件的頁面
    		renderDefaultHtml() {
    			this.dom.innerHTML = `
    				<div class="projects-list shadow-sm p-3 bg-white rounded-1g h-100">
                		<a>暫無評價</a>
            		</div>
    			`
    		},
    		// 渲染有案件的頁面
    		renderHtml() {
//     			function(content, caseObj) {  就是下面 currentPageCases.reduce((content, caseObj) =>
//     				return //
//     			}
    			var html = this.currentPageEvab2a.reduce((content, evab2aObj) => {
    				return content + `

                    <div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                        <div class="media">
                            <a href="/PaintPartyMvcProject/memberpage/\${evab2aObj.memIdR}" target="_blank">
                                <div class="w-3 mr-3">
                                    <div
                                        class="text center rounded-circle square-cover">
                                        <img src="/PaintPartyMvcProject/memberpageshowpic/\${evab2aObj.memIdR}"
                                        	style="width: 100%; height: 120px"
                                            	class="rounded-circle">
                                    </div>
                                </div>
                            </a>
                            <div class="media-body">
                                <div class="font-weight-bold my-1">
                                    <h5>\${evab2aObj.memNameR}</h5>
                                </div>
                                <div class="font-weight-bold my-1">
                                    <span class="badge badge-light mr-2">創作者</span>
                                </div>
                                <div class="">
                                    <div class="font-weight-bold my-1">
                                    </div>
                                    <div class="text-muted">
                                        <h4>\${evab2aObj.evaB2AContent}</h4>
                                    </div>
                                    <div
                                        class="reply my-3 ml-3 p1-3 border-left-1-light">
                                        <div class="font-weight-bold my-1">
                                            <a href="#" target="_blank"
                                                class="link-dark">
                                                <span style="padding: 20px;">
                                                    委託者回應</span>
                                            </a>
                                        </div>
                                        <div class="text-muted">
                                            <span style="padding: 20px;">
                                                "\${evab2aObj.evaA2BContent}"</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

    					`
    			}, '')
    			this.dom.innerHTML = html
    		},
    		// 初始化
    		init() {
    			this.evab2aPack = ${evab2aJson} //從後端拿資料
    			this.getevasb2aByPagination(0) //初始化第0頁
    		}
    }
    // 呼叫初始化方法,直接載入memberCasesUtil
    evab2aUtil.init() 
    
    </script>
   	
</body>

</html>