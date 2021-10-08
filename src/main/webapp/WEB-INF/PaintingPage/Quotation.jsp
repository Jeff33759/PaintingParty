<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="zh-Hant">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>案件報價單</title>
<link rel="stylesheet" href="./resources/css/nicepage.css"
	media="screen">
<link rel="stylesheet" href="./resources/css/Quotation.css"
	media="screen">
<script class="u-script" type="text/javascript"
	src="./resources/js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="./resources/js/nicepage.js" defer=""></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta name="generator" content="Nicepage 3.23.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

<script src="https://www.itxst.com/package/jquery-3.5.1/jquery.min.js"></script>
<script
	src="https://www.itxst.com/package/bootstrap-4.5.0/js/bootstrap.min.js"></script>
<link
	href="https://www.itxst.com/package/bootstrap-4.5.0/css/bootstrap.css"
	rel="stylesheet">
<script
	src="https://www.itxst.com/package/bootstrap-datepicker-1.9.0/js/bootstrap-datepicker.min.js"></script>
<script
	src="https://www.itxst.com/package/bootstrap-datepicker-1.9.0/locales/bootstrap-datepicker.zh-CN.min.js">
	
</script>
<link
	href="https://www.itxst.com/package/bootstrap-datepicker-1.9.0/css/bootstrap-datepicker.min.css"
	rel="stylesheet">

<script type="application/ld+json">
    {
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": "TestDemo",
      "logo": "images/LOGO-TEST-22.png"
    }
  </script>
<style type="text/css">
   		.fix-padding {
    		padding: 10px 46px;
    	}
    	.u-header .u-group-2 {
    		width: 390px;
    	}
</style>
<script type="text/javascript">
	
	var s = '${status}';
	var t = '畫師';
	
	$(document).ready(function(){
		$('#demoClick').click(function(){
			$('#spendDay').attr("value",'5');
			$('#inputBudget').attr("value",'2000');
		})
		$('#send').click(function(){
			let n1=document.getElementById("spendDay").value;
			let n2=document.getElementById("inputBudget").value;
			if(n1!=''&& n2!=''){
				alert("應徵案件成功");
			}
		})
		
		check(s);
			
		
	})
	
	function check(s){
		if (s!=t){
			alert("您並未持有畫師身分！");
			window.location.href = '/PaintPartyMvcProject/caselistpage.controller';
		}
	}

</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="Quotation">
<meta property="og:description" content="">
<meta property="og:type" content="website">
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
			<a href="<%= request.getContextPath() %>/" class="u-image u-logo u-image-1" title="網站首頁"
				data-image-width="570" data-image-height="410"> <img
				src="./resources/images/LOGO-TEST-22.png"
				class="u-logo-image u-logo-image-1">
			</a>
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse"
					style="font-size: 1.125rem; letter-spacing: 0px;">
					<a
						class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg>
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#menu-hamburger"></use></svg> <svg version="1.1"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<defs>
							<symbol id="menu-hamburger" viewBox="0 0 16 16"
								style="width: 16px; height: 16px;">
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-nav u-unstyled u-nav-1">
						<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
									href="<%=request.getContextPath()%>/painterlist"
									style="padding: 10px 20px;">畫師列表</a></li>
								<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
									href="<%=request.getContextPath()%>/caselistpage.controller"
									style="padding: 10px 20px;">案件列表</a></li>
						
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
								<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
									href="<%=request.getContextPath()%>/painterlist"
									style="padding: 10px 20px;">畫師列表</a></li>
								<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
									href="<%=request.getContextPath()%>/caselistpage.controller"
									style="padding: 10px 20px;">案件列表</a></li>
								
								
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
			<div class="u-container-style u-group u-white u-group-1">
				<div class="u-container-layout u-container-layout-1"></div>
			</div>
			<div class="u-container-style u-group u-white u-group-2">
				<div class="u-container-layout u-container-layout-2">
					<div>
						<a href="<%= request.getContextPath() %>/backend/CaseFormApplyPage"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3"
							name="issue_case" style="display: none">發布案件</a>
							<a
							href="<%= request.getContextPath() %>/backend/accountmanager"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin"
							name="account_manager" style="display: none">帳號管理</a> <span
							class="u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4"
							name="member_name" style="display: none"><%=request.getAttribute("member_name")%></span>
					</div>
					<div>
						<a href="/PaintPartyMvcProject/login"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3"
							name="header_login" style="display: none">登入</a> <a
							href="/PaintPartyMvcProject/register"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin"
							name="header_register" style="display: none">註冊</a>
					</div>
				</div>
				<div>
					
				</div>

			</div>
		</div>
		</div>
	</header>
	<section class="u-align-center u-clearfix u-grey-10 u-section-1"
		id="sec-6bb0" style="background-color:#f1f2f6;border-top:1px solid #dfe4ea;">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-text u-text-default u-text-1 u-align-center"
				style="margin-bottom: 30px;">
				<h1
					class="u-custom-font u-font-oswald u-text u-text-black u-text-default u-text-1">案件報價單</h1>
				<button 
		class="u-border-2 u-border-grey-75 u-btn u-btn-round u-button-style u-hover-grey-40 u-radius-12 u-white u-btn-1" id="demoClick">DEMO</button></h2>

			<div
				class="u-align-left  u-radius-5 u-shape-round u-white u-group-2 " style="border: 1px solid #ced6e0">
				<div class=" u-container-layout-1 "
					style="font-family: Arial, Helvetica, sans-serif;">
					<form action="<%=request.getContextPath()%>/addapply.controller"
						method="post" >
						<div class="form-group">
							<label>花費天數</label> <input type="input" class="form-control"
								placeholder="請輸入預計花費天數" name="spendDay" id="spendDay" required="required">
						</div>
						<div class="form-row d-flex">
							<div class="form-group col-md-12">
								<label for="inputLowBudget">期望稿酬</label> <input type="text"
									class="form-control" id="inputBudget" placeholder="(必填)"
									name="expectedBudget" required="required">
							</div>

						</div>


						<button type="submit" class="btn btn-warning btn-lg btn-block" id="send" onclick="dosuccess()">送出</button>


					</form>
				</div>
			</div>
		</div>
	</section>


		

	<footer class="u-align-center u-clearfix u-footer u-grey-70 u-footer"
		id="sec-c7c8">
		<p class="u-small-text u-text u-text-variant u-text-1">Copyright @
			paintingparty 2021</p>
		<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
			<div class="menu-collapse"
				style="font-size: 1rem; letter-spacing: 0px;">
				<a
					class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="#"> <svg>
						<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#menu-hamburger"></use></svg> <svg version="1.1"
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink">
						<defs>
						<symbol id="menu-hamburger" viewBox="0 0 16 16"
							style="width: 16px; height: 16px;">
						<rect y="1" width="16" height="2"></rect>
						<rect y="7" width="16" height="2"></rect>
						<rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
				</a>
			</div>
			<div class="u-custom-menu u-nav-container">
				
			</div>
			<div class="u-custom-menu u-nav-container-collapse">
				<div
					class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
					<div class="u-sidenav-overflow">
						<div class="u-menu-close"></div>
						
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



</body>
</html>