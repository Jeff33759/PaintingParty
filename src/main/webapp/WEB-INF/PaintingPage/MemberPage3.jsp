<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html style="font-size: 16px;" lang="zh-Hant">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>會員個人頁面</title>
    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/css/MemberPage.css">
    <link rel="stylesheet" href="resources/css/前台框架.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
<script type="text/javascript">
	var indexPage = 1;
	
	$(document).ready(function() {
		load(indexPage);
	});
	
	function change(page){
		indexPage = page;
		load(indexPage);
	}
	
	
		function load(indexPage){
		$.ajax({
			type : 'post',
			url : "/PaintPartyMvcProject/queryByPage/" + indexPage,
			dataType : 'JSON',
			contentType : 'application/json',
			success : function(data) {
				var json = JSON.stringify(data);
				$('#row1').empty("");
				$('#row2').empty("");
				//取得頁數1 2 3   假設目前在地1頁(i=1)的狀況  總共的頁數如何取得data.length/8 取整數
				//for(var i=indexPage;i<=totalPages;i++){
					
				var j=((0+1))-1;
				var y=j+4;   

					for(var j=0;j<4;j++){
						$('#row1').append(
								`<div class="u-container u-white mb-3"
								style="border-radius: 20px; padding: 10px;">
								<div class="u-container-layout u-container-layout-4" >
									<div class="input-group mb-3">
										<span class="m-1">案件名稱:</span> <div id="caseName" style="color: burlywood; font-size: 20px">
														\${data[j].case_title}</div>
									</div>
									<div class="input-group mb-3">
										<span class="m-1">發布日期:</span> <div id="uDate" style="color: burlywood; font-size: 20px">
														\${data[j].upload_date}</div>
									</div>
									<div class="input-group mb-3">
										<span class="m-1">案件標籤:</span> <div id="caseTag" style="color: burlywood; font-size: 20px">
														\${data[j].case_tag}</div>
									</div>
									<a href=<%= request.getContextPath() %>/MemberPage3/\${ data[j].case_id }>前往案件</a>
								</div>
							</div>`
							)	
					}
					for(var y;y<4;y++){
						$('#row2').append(
								`<div class="u-container u-white mb-3"
								style="border-radius: 20px; padding: 10px;">
								<div class="u-container-layout u-container-layout-4" >
									<div class="input-group mb-3">
										<span class="m-1">案件名稱:</span> <div id="caseName" style="color: burlywood; font-size: 20px">
														\${data[y].case_title}</div>
									</div>
									<div class="input-group mb-3">
										<span class="m-1">發布日期:</span> <div id="uDate" style="color: burlywood; font-size: 20px">
														\${data[y].upload_date}</div>
									</div>
									<div class="input-group mb-3">
										<span class="m-1">案件標籤:</span> <div id="caseTag" style="color: burlywood; font-size: 20px">
														\${data[y].case_tag}</div>
									</div>
									<a href=<%= request.getContextPath() %>/casepagemainpage.controller/\${ data[y].case_id }>前往案件</a>
								</div>
							</div>`
							)
					}
			}
		})
	};
</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="前台框架">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
</head>

<body class="u-body">
    <div class="container-fluid">
        <header class="u-clearfix u-header u-header" id="sec-4c0b">
            <div class="u-clearfix u-sheet u-sheet-1">
                <a href="2143501032" class="u-image u-logo u-image-1" title="網站首頁" data-image-width="570"
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
                        <a href="139992805"
                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3">發布案件</a>
                        <a href="139992805"
                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4">帳號管理</a>
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
                                                    <img src="resources/images/Patrick.png" class="rounded-circle">
                                                </div>
                                            </div>
                                        </a>
                                        <div class="portfolio-caption">
                                            <div class="text-center">
                                                <a href="#" class="link-dark">
                                                    <span class="font-weight-bold display-7"> 王冠霖 </span>
                                                </a>
                                            </div>
                                            <div class="my-2 text-center">
                                                <span class="badge badge-light">繪圖</span>
                                            </div>
                                            <div class="text-center d-flex align-items-center justify-content-center">
                                                <a href="#">
                                                    <button type="button" class="btn btn-secondary btn-lg">私人訊息</button>
                                                </a>
                                            </div>
                                            <div class="bg-light p-3 my-3 rounded-lg">
                                                <div class="text-muted font-weight-bold"> 委託暫停中 </div>
                                                <div class="mt-1 ql-show-container">
                                                    <P>
                                                        "8月/"
                                                        <span style="color: rgb(136,136,136);"> 已滿單 </span>
                                                    </P>
                                                </div>
                                            </div>
                                            <div class="mt-4 mx-2 mb-2 text-muted q1-show container">
                                                <p>大家好 我是新來的畫師!</p>
                                                <p>喜歡畫可愛的插圖及Q版的人物</p>
                                                <p>有興趣的人請私訊我唷!</p>
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
                                        <div class="row mt-4" style="padding-top:30px" id="row1"> 
                                        </div>
                                        
                                        
										<div class="row mt-4" style="padding-top:30px" id="row2"> 
										</div>
                                         <!--    <div class="mt-1">
                                                <nav aria-label="Page navigation">
                                                    <ul class="pages">
                                                        <li class="page-item">
                                                            <button type="button" class="btn btn-outline-secondary"> 上一頁
                                                            </button>
                                                        </li>
                                                        <li class="page-item">
                                                            <h6>X頁</h6>
                                                        </li>
                                                        <li class="page-item">
                                                            <h6>／</h6>
                                                        </li>
                                                        <li class="page-item">
                                                            <h6>X頁</h6>
                                                        </li>
                                                        <li class="page-item">
                                                            <button type="button" class="btn btn-outline-secondary"> 下一頁
                                                            </button>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </div>-->
                                        </div>
                                        
                                    <div class="tab-pane fade" id="profile" role="tabpanel"
                                        aria-labelledby="profile-tab">
                                        <div class="tab_css">
                                            <input id="tab1" type="radio" name="tab" checked="checked" />
                                            <label for="tab1">被委託</label>
                                            <div class="tab_content">
                                                <div class="row mt-4">
                                                    <div class="col-12 mb-4">
                                                        <div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                                                            <div class="media">
                                                                <a href="#" target="_blank">
                                                                    <div class="w-3 mr-3">
                                                                        <div
                                                                            class="text-center rounded-circle square-cover">
                                                                            <img src="resources/images/LOGO-TEST-22.png">
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                                <div class="media-body">
                                                                    <div class="font-weight-bold my-1">
                                                                        <h5>"會員ID"</h5>
                                                                    </div>
                                                                    <div class="font-weight-bold my-1">
                                                                        <span class="badge badge-light mr-2">委託者</span>
                                                                    </div>
                                                                    <div class="">
                                                                        <div class="font-weight-bold my-1">
                                                                        </div>
                                                                        <div class="text-muted">
                                                                            <h4>很喜歡成品!非常感謝!</h4>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 mb-4">
                                                        <div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                                                            <div class="media">
                                                                <a href="#" target="_blank">
                                                                    <div class="w-3 mr-3">
                                                                        <div
                                                                            class="text center rounded-circle square-cover">
                                                                            <img src="resources/images/LOGO-TEST-22.png">
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                                <div class="media-body">
                                                                    <div class="font-weight-bold my-1">
                                                                        <h5>"會員ID"</h5>
                                                                    </div>
                                                                    <div class="font-weight-bold my-1">
                                                                        <span class="badge badge-light mr-2">委託者</span>
                                                                    </div>
                                                                    <div class="">
                                                                        <div class="font-weight-bold my-1">
                                                                        </div>
                                                                        <div class="text-muted">
                                                                            <h4>很喜歡成品!非常感謝!</h4>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 mb-4">
                                                        <div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                                                            <div class="media">
                                                                <a href="#" target="_blank">
                                                                    <div class="w-3 mr-3">
                                                                        <div
                                                                            class="text-center rounded-circle square-cover">
                                                                            <img src="resources/images/LOGO-TEST-22.png">
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                                <div class="media-body">
                                                                    <div class="font-weight-bold my-1">
                                                                        <h5>"會員ID"</h5>
                                                                    </div>
                                                                    <div class="font-weight-bold my-1">
                                                                        <span class="badge badge-light mr-2">委託者</span>
                                                                    </div>
                                                                    <div class="">
                                                                        <div class="font-weight-bold my-1">
                                                                        </div>
                                                                        <div class="text-muted">
                                                                            <h4>很喜歡成品!非常感謝!</h4>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-1">
                                                        <nav aria-label="Page navigation">
                                                            <ul class="pages">
                                                                <li class="page-item">
                                                                    <button type="button"
                                                                        class="btn btn-outline-secondary"> 上一頁
                                                                    </button>
                                                                </li>
                                                                <li class="page-item">
                                                                    <h6>X頁</h6>
                                                                </li>
                                                                <li class="page-item">
                                                                    <h6>／</h6>
                                                                </li>
                                                                <li class="page-item">
                                                                    <h6>X頁</h6>
                                                                </li>
                                                                <li class="page-item">
                                                                    <button type="button"
                                                                        class="btn btn-outline-secondary"> 下一頁
                                                                    </button>
                                                                </li>
                                                            </ul>
                                                        </nav>
                                                    </div>
                                                </div>
                                            </div>
                                            <input id="tab2" type="radio" name="tab" />
                                            <label for="tab2">委託他人</label>
                                            <div class="tab_content">
                                                <div class="row mt-4">
                                                    <div class="col-12 mb-4">
                                                        <div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                                                            <div class="media">
                                                                <a href="#" target="_blank">
                                                                    <div class="w-3 mr-3">
                                                                        <div
                                                                            class="text center rounded-circle square-cover">
                                                                            <img src="resources/images/LOGO-TEST-22.png">
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                                <div class="media-body">
                                                                    <div class="font-weight-bold my-1">
                                                                        <h5>"會員ID"</h5>
                                                                    </div>
                                                                    <div class="font-weight-bold my-1">
                                                                        <span class="badge badge-light mr-2">創作者</span>
                                                                    </div>
                                                                    <div class="">
                                                                        <div class="font-weight-bold my-1">
                                                                        </div>
                                                                        <div class="text-muted">
                                                                            <h4>買家匯款速度快~大力推薦</h4>
                                                                        </div>
                                                                        <div
                                                                            class="reply my-3 ml-3 p1-3 border-left-1-light">
                                                                            <div class="font-weight-bold my-1">
                                                                                <a href="#" target="_blank"
                                                                                    class="link-dark">
                                                                                    <span style="padding: 20px;">
                                                                                        買家</span>
                                                                                </a>
                                                                            </div>
                                                                            <div class="text-muted">
                                                                                <span style="padding: 20px;">
                                                                                    "收到了好可愛的貼圖,好開心!"</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 mb-4">
                                                        <div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                                                            <div class="media">
                                                                <a href="#" target="_blank">
                                                                    <div class="w-3 mr-3">
                                                                        <div
                                                                            class="text center rounded-circle square-cover">
                                                                            <img src="resources/images/LOGO-TEST-22.png">
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                                <div class="media-body">
                                                                    <div class="font-weight-bold my-1">
                                                                        <h5>"會員ID"</h5>
                                                                    </div>
                                                                    <div class="font-weight-bold my-1">
                                                                        <span class="badge badge-light mr-2">創作者</span>
                                                                    </div>
                                                                    <div class="">
                                                                        <div class="font-weight-bold my-1">
                                                                        </div>
                                                                        <div class="text-muted">
                                                                            <h4>買家匯款速度快~大力推薦</h4>
                                                                        </div>
                                                                        <div
                                                                            class="reply my-3 ml-3 p1-3 border-left-1-light">
                                                                            <div class="font-weight-bold my-1">
                                                                                <a href="#" target="_blank"
                                                                                    class="link-dark">
                                                                                    <span style="padding: 20px;">
                                                                                        買家</span>
                                                                                </a>
                                                                            </div>
                                                                            <div class="text-muted">
                                                                                <span style="padding: 20px;">
                                                                                    "收到了好可愛的貼圖,好開心!"</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 mb-4">
                                                        <div class="commissions-item shadow-sm p-3 bg-white rounded-lg">
                                                            <div class="media">
                                                                <a href="#" target="_blank">
                                                                    <div class="w-3 mr-3">
                                                                        <div
                                                                            class="text center rounded-circle square-cover">
                                                                            <img src="resources/images/LOGO-TEST-22.png">
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                                <div class="media-body">
                                                                    <div class="font-weight-bold my-1">
                                                                        <h5>"會員ID"</h5>
                                                                    </div>
                                                                    <div class="font-weight-bold my-1">
                                                                        <span class="badge badge-light mr-2">創作者</span>
                                                                    </div>
                                                                    <div class="">
                                                                        <div class="font-weight-bold my-1">
                                                                        </div>
                                                                        <div class="text-muted">
                                                                            <h4>買家匯款速度快~大力推薦</h4>
                                                                        </div>
                                                                        <div
                                                                            class="reply my-3 ml-3 p1-3 border-left-1-light">
                                                                            <div class="font-weight-bold my-1">
                                                                                <a href="#" target="_blank"
                                                                                    class="link-dark">
                                                                                    <span style="padding: 20px;">
                                                                                        買家</span>
                                                                                </a>
                                                                            </div>
                                                                            <div class="text-muted">
                                                                                <span style="padding: 20px;">
                                                                                    "收到了好可愛的貼圖,好開心!"</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-1">
                                                        <nav aria-label="Page navigation">
                                                            <ul class="pages">
                                                                <li class="page-item">
                                                                    <button type="button"
                                                                        class="btn btn-outline-secondary"> 上一頁
                                                                    </button>
                                                                </li>
                                                                <li class="page-item">
                                                                    <h6>X頁</h6>
                                                                </li>
                                                                <li class="page-item">
                                                                    <h6>／</h6>
                                                                </li>
                                                                <li class="page-item">
                                                                    <h6>X頁</h6>
                                                                </li>
                                                                <li class="page-item">
                                                                    <button type="button"
                                                                        class="btn btn-outline-secondary"> 下一頁
                                                                    </button>
                                                                </li>
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
    </div>

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
</body>

</html>