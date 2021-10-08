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
<title>login</title>
<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/login.css" media="screen">
<script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>

<!--     <link href="resources/js/jquery-3.6.0.min.js" rel="stylesheet" /> -->
<!--     <link href="resources/js/jquery-ui.min.css" rel="stylesheet" /> -->
<script src="/PaintPartyMvcProject/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="/PaintPartyMvcProject/resources/css/jquery-ui.min.css" media="screen">



<meta name="generator" content="Nicepage 3.23.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">


<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "框架final project",
		"logo": "resources/images/LOGO-TEST-22.png"
}</script>


<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="login">
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
                <img src="resources/images/LOGO-TEST-22.png" class="u-logo-image u-logo-image-1">
            </a>
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse"
					style="font-size: 1.125rem; letter-spacing: 0px;">
					<a
						class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg>
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#menu-hamburger"></use>
								</svg>
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<defs>
							<symbol id="menu-hamburger" viewBox="0 0 16 16"
								style="width: 16px; height: 16px;">
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
							href="<%= request.getContextPath() %>/painterlist" style="padding: 10px 20px;">畫師列表</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							href="<%= request.getContextPath() %>/caselistpage.controller" style="padding: 10px 20px;">案件列表</a></li>

					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="javascript::" style="padding: 10px 20px;">畫師列表</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									style="padding: 10px 20px;">案件列表</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									style="padding: 10px 20px;">公開畫廊</a></li>
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
	<section class="u-align-center u-clearfix u-grey-10 u-section-1"
		id="sec-84b8">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="u-align-center u-container-style u-group u-radius-50 u-shape-round u-white u-group-1">
				<div class="u-container-layout u-container-layout-1">
					<h3 class="u-text u-text-default u-text-1">登入</h3>
					<div class="u-expanded-width u-form u-login-control u-form-1">
						<form action="xxx" method="POST"
							class="u-clearfix u-form-custom-backend u-form-spacing-35 u-form-vertical u-inner-form"
							source="custom" name="form-2" style="padding: 10px;">
							<div class="u-form-group u-form-name">
								<div id="username-error" style="display: none; color:red">帳號或密碼錯誤，請重新輸入</div>
								<label for="username-708d" class="u-form-control-hidden u-label"></label>
								<input type="text" placeholder="輸入帳號" id="username-708d"
									name="member_account" 
									class="u-grey-5 u-input u-input-rectangle" required="">
							</div>
							<div class="u-form-group u-form-password">
								<label for="password-708d" class="u-form-control-hidden u-label"></label>
								<input type="password" placeholder="輸入密碼" id="password-708d"
									name="password1" class="u-grey-5 u-input u-input-rectangle"
									required="">
							</div>
							<div class="u-form-checkbox u-form-group">
								<input type="checkbox" id="checkbox-708d" name="keep">
								<label for="checkbox-708d" class="u-label">記住我</label>
							</div>
							<div class="u-align-center u-form-group u-form-submit">
								<!-- <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-radius-17 u-btn-1">登入<br>
                  </a>-->
								<input type="button" value="登入" name="submit"
									class="u-btn u-btn-round u-btn-submit u-button-style u-radius-17 u-btn-1"
									onclick="sendData()">
							</div>
							<!--  <input type="hidden" value="" name="recaptchaResponse">-->
						</form>
					</div>
					<a href="/PaintPartyMvcProject/register"
						class="u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius-17 u-btn-2">註冊</a>
					<a href="/PaintPartyMvcProject/forgetpwd"
						class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-login-control u-login-forgot-password u-none u-text-palette-1-base u-btn-3">Forgot
						password?</a>
				</div>
			</div>
		</div>
	</div>
	</section>


	<footer class="u-align-center u-clearfix u-footer u-grey-70 u-footer"
		id="sec-c7c8">
		<p class="u-small-text u-text u-text-variant u-text-1">Copyright @
			dodo 2021</p>
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
				<ul class="u-nav u-unstyled u-nav-1">
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
						style="padding: 10px 96px;">聯絡我們</a></li>
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
						style="padding: 10px 96px;">常見問題</a></li>
				</ul>
			</div>
			<div class="u-custom-menu u-nav-container-collapse">
				<div
					class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
					<div class="u-sidenav-overflow">
						<div class="u-menu-close"></div>
						<ul
							class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								style="padding: 10px 96px;">聯絡我們</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								style="padding: 10px 96px;">常見問題</a></li>
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
    console.log(${sessionScope.login})
    if(${sessionScope.login}==1){ //代表有登入狀態
    	$("[name=issue_case]").show()
    	$("[name=account_manager]").show()
    	$("[name=member_name]").show()
    }else{
    	$("[name=header_login]").show()
    	$("[name=header_register]").show()
    	
    }
	
// 	$(function(){
// 	    $("#username-error").hide();                    // 把div提示框隱藏起來
// 	})
	
	function sendData() {
        var user = { 
				"username":$("[name=member_account]").val(), 
        		"password":$("[name=password1]").val(), 
        		"keep":$("[name=keep]").prop('checked') 
        	}; //變成json格式
        $.ajax({
        	url:"validateLogin",
        	method:"POST",
        	data:user,
        	dataType:"json",
       		success:function(data,status,xhr){
        		if(data.success){ //驗證輸入的帳密是否正確，若正確，做以下
        			
        			location.href = 'login.successmessage';  

//        				window.location.href = "./Index";  //登入成功跳轉的頁面,未定
        		}else{ //若輸入的帳密錯誤，做以下
        			$("#username-error").show()
        		}
        	},
        	error:function() {
        		//console.log(shit.res !ponseJSON.msg)
        		$("#username-error").show()
        	}
        })
	}
	
	function pageNotRedirect(prevLink) {
		var pages = ['register','resetpassword']
		for(var page of pages) {
			if (prevLink.indexOf(page) != -1) {
				return true
			}
		}
		return false
	}
	
// 	var prevLink = document.referrer;  
// 	if($.trim(prevLink)==''){  
// 	    location.href = 'www.example.com/index.html';  
// 	}else{  
// 	    if(prevLink.indexOf('PaintPartyMvcProject')==-1){    //來自其它站點  
// 	        location.href = 'PaintPartyMvcProject/Index.jsp';  
// 	    }  
// 	    if(prevLink.indexOf('register.html')!=-1){      //來自注冊頁面  
// 	        location.href = 'www.example.com/index.html';  
// 	    }  
// 	    location.href = prevLink;  
// 	} 
	</script>



</body>
</html>