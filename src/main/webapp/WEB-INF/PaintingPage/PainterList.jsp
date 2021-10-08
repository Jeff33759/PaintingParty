<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>畫師列表</title>

    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="resources/css/PainterList.css" media="screen">
    <link rel="stylesheet"  href="resources/css/前台框架.css" media="screen">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
     <!--<script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script> -->
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>

	<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
    
    <script src="/PaintPartyMvcProject/resources/js/jquery-3.5.1.min.js"></script>
    
	<link rel="stylesheet" type="text/css" href="/PaintPartyMvcProject/resources/css/jquery-ui.min.css"></link>
    <meta name="generator" content="Nicepage 3.23.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

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
    <div class="container-fluid" style="text-align: center;background-color: #f8f9fa; height: auto; padding-top: 40px">
        <form action="#">
            <div class="left sele-set">
                <label for="type">創作類別</label>
                <select id="Select1" class="form-select" aria-label="Default select example" style="margin-left: 5px;width: 215px;" >
                	<option value="">請選擇</option>
                    <option value="1">插畫</option>
                    <option value="2">貼圖</option>
                    <option value="3">頭貼</option>
                    <option value="4">小漫畫</option>
                    <option value="5">UI</option>
                    <option value="6">人物設計</option>
                    <option value="7">風景</option>
                </select>
            </div>
            <div class="right sele-set mb-3 mt-3">
                <label for="type">創作風格</label>
                <select id="Select2" class="form-select" aria-label="Default select example" style="margin-left: 5px;width: 215px;">
                	<option value="">請選擇</option>
                    <option value="8">日系</option>
                    <option value="9">歐美</option>
                    <option value="10">武俠</option>
                    <option value="11">Q版</option>
                    <option value="12">寫實</option>
                    <option value="13">3D</option>
                    <option value="14">水墨</option>
                    <option value="15">水彩</option>
                    <option value="16">像素</option>
                </select>
            </div>
            <button id="btnSearch" class="select-btn" type="button">查詢</button>
            
            
        </form>
    </div>
    <section class="page-section bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="row" id="row1">
               
                     <!--  <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/Patrick.png" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4" id="memberName">
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                    style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2" id="sc" style="color: burlywood; font-size: 20px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/Patrick.png" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4"  id="memberName2">
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                    style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2" id="sc2"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/Patrick.png" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4" id="memberName3">
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                    style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2" id="sc3"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/Patrick.png" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4" id="memberName4">
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                    style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2" id="sc4"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/4.jpeg" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4"  id="memberName5">
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                    style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2" id="sc5"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/4.jpeg" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4" id="memberName6">
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                 style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2" id="sc6"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/4.jpeg" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4">
                                            <a href="#" style="text-decoration:none" arget="_blank" class="link-dark">
                                                王冠霖
                                            </a>
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                 style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2">刊登中</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-4 mb-4">
                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
                                <div class="text-center pb-1">
                                    <a href="#" target="_blank">
                                        <div
                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
                                            <img src="resources/images/4.jpeg" alt="avator" class="comisstion-cover">
                                        </div>
                                    </a>
                                    <div class="portfolio-caption text-center">
                                        <div class="heading font-weight-bold text-truncate display-6 p-4">
                                            <a href="#" style="text-decoration:none" target="_blank" class="link-dark">
                                                王冠霖
                                            </a>
                                        </div>
                                        <div class="text-truncate">
                                            <a href="#">
                                                <button type="button" class="btn btn-light"
                                                    style="background-color: #D3D3D3 ">私人訊息</button>
                                            </a>
                                        </div>
                                        <div class="text-muted my-2">刊登中</div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                      <div class="row" id="row2">  
                      </div>
                    </div>
                </div>
            </div>
            <div class="page-wrap">
                <div class="page-wrap">
                    <div class="pager">
                          <ul class="pages">
                            <li class="page-item">
                                <button id="btnPrev" type="button" class="btn btn-outline-secondary"> 上一頁 </button>
                            </li>
                            <li class="page-item">
                                <h6 id="nowPage">頁</h6>
                            </li>
                            <li class="page-item">
                                <h6>／</h6>
                            </li>
                            <li class="page-item">
                                <h6 id="totalPage">頁</h6>
                            </li>
                            <li class="page-item">
                                <button id="btnNext" type="button" class="btn btn-outline-secondary"> 下一頁 </button>
                            </li>
                        </ul>
                 		<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center" id="page">
								<c:forEach var="i" begin="1" end="${totalPages}" step="1">
										<button class="page-item page-link" id="pageBtn" name="pageBtn" value="${i}">${i}</button>
								</c:forEach>
							</ul>
						</nav>
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
	$(document).ready(function() {
		var $btnSearch = $('#btnSearch');
		var $nowPage = $('#nowPage');
		var $totalPage = $('#totalPage');
		var $btnPrev = $('#btnPrev');
		var $btnNext = $('#btnNext');
		var $pageBtn = $('[name = pageBtn]');
		
		var lstData = []; // 所有資料
		var totalPage = 0; // 所有頁數
		var pageIndex = -1; // 目前頁數
		var pageCount = 8; // 預設筆，之後可以調
		
		var indexPage = 1;
		//load(indexPage);
		
		//登入狀態與登出狀態功能列表
	    //透過AllFilter 傳過來的session
//	     <h1>${sessionScope.login}</h1>
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
	    
	    $btnSearch.off('click').on('click' , search)
	    
	    function search(){
	    	lstData = [];
			totalPage = 0; 
			pageIndex = -1;
			
	    	
			$.ajax({
				type : 'post',
				url : "/PaintPartyMvcProject/search",
				dataType : 'JSON',
				data : {Select1:$('#Select1').val() , Select2:$('#Select2').val()},
		//		contentType : 'application/json',
				success : function(data) {	
							//console.log(data);
							lstData = data;
							totalPage = lstData.length / pageCount;
							totalPage = parseInt(totalPage);
							
							if(lstData.length % pageCount > 0){
								totalPage ++;	
							}
							
							console.log(lstData);
							console.log("total Page : " + totalPage);
							pageIndex = 0;
							
							setPageCount(pageIndex , totalPage);
							
							let show = convertPageData(lstData , totalPage , pageIndex);
							showData(show);
				}			
			})
	    }
	    
	    var setPageCount = function(now , total){
	    	$nowPage.text((now + 1));
	    	$totalPage.text(total);
	    }
	    
	    $btnPrev.off('click').on('click',function(){
			pageIndex --;
			
	    	if(pageIndex < 0){
	    		pageIndex = 0;
	    	}else{
	    		setPageCount(pageIndex , totalPage);
		    	let show = convertPageData(lstData , totalPage , pageIndex);
				showData(show);
	    	}
	    })
	    
	    $btnNext.off('click').on('click',function(){
	    	pageIndex ++;
	    	
	    	if(pageIndex >= totalPage){
	    		pageIndex = totalPage - 1;
	    	}else{
	    		setPageCount(pageIndex , totalPage);
		    	let show = convertPageData(lstData , totalPage , pageIndex);
				showData(show);
	    	}
	    	
	    });
	    
	    $pageBtn.off('click').on('click',function(){
	    	changePage($(this).val());
	    });
	    
	    var changePage = function(page){
	    	pageIndex = (page - 1);
	    	setPageCount(pageIndex , totalPage);
	    	let show = convertPageData(lstData , totalPage , pageIndex);
			showData(show);
		}
	    
	    var convertPageData = function(lstData , totalPage , pageIndex){
	    	var showData = [];
	    	var startIndex =  pageIndex * pageCount;
	    	var endIndex = pageIndex * pageCount + pageCount;
	    	
	    	if(endIndex > lstData.length){ // 結束位置以資料表的長度為基準
	    		endIndex = lstData.length; 
	    	}
	    	
	
	    	var lenData = endIndex - pageIndex * pageCount;
	    	for(i = 0; i < lenData ; i++ ){
	    		showData[i] = lstData[startIndex + i];
	    	}
	    	

	    	
	    	return showData;
	    }

	   var showData = function(data){
		   $('#row1').empty();
			for (var i = 0 ; i<data.length; i++)
			{  // var path=data[i].profile_pic_path + "/" + data[i].profile_pic ;
					$('#row1').append(
			                 `<div class="col-lg-3 col-4 mb-4">
	                            <div class="creators-item shadow-sm p-3 bg-white rounded-1g h-100">
	                                <div class="text-center pb-1">
	                                    <a href="memberpage/\${data[i].member_id}" target="_blank">
	                                        <div
	                                            class="text-center rounded-1g d-flex justify-content-center overflow-hidden">
	                                            <!--<img src= "resources/images/HeadShot/\${data[i].profile_pic}"    alt="avator" class="comisstion-cover">-->
                                                <img src= "painterimage/\${data[i].member_id}" alt="avator" class="comisstion-cover">
	                                        </div>
	                                    </a>
	                                    <div class="portfolio-caption text-center">
	                                        <div class="heading font-weight-bold text-truncate display-6 p-4" id="memberName">
	                                        \${data[i].member_name}  	                                        
	                                        </div>
	                                    <!--    <div class="paintertag"> 
                                            <span class="tag1"> 繪圖 </span>
                                            <span class="badge badge-primary">Primary</span> 
	                                        </div>  -->
	                                        <div class="text-truncate">
	                                            <a href="/PaintPartyMvcProject/backend/gotochat/\${data[i].member_id}">
	                                                <button type="button" class="btn btn-light"
	                                                    style="background-color: #D3D3D3 ">私人訊息</button>
	                                            </a>
	                                        </div>
	                                        <div class="text-muted my-2" id="sc">
	                                        \${data[i].schedule} 
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>`														
				        	)
			           }
	   }
	
		search();

	});
	
	
	
    
    </script>
    
     <script type="text/javascript">
    //登入狀態與登出狀態功能列表
    //透過AllFilter 傳過來的session
//     <h1>${sessionScope.login}</h1>
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