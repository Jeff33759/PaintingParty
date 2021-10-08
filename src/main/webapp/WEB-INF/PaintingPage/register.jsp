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
    <title>register</title>
    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/login.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
    
    <script src="/PaintPartyMvcProject/resources/js/jquery-3.5.1.min.js"></script>
	<script src="/PaintPartyMvcProject/resources/js/jquery-ui.min.css"></script>
    <meta name="generator" content="Nicepage 3.23.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "框架final project",
		"logo": "images/LOGO-TEST-22.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="register">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-4c0b"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="<%= request.getContextPath() %>/" class="u-image u-logo u-image-1" title="網站首頁" data-image-width="570"
                data-image-height="410">
                <img src="resources/images/LOGO-TEST-22.png" class="u-logo-image u-logo-image-1">
            </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1.125rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="/PaintPartyMvcProject/painterlist" style="padding: 10px 20px;">畫師列表</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="/PaintPartyMvcProject/caselistpage.controller" style="padding: 10px 20px;">案件列表</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="javascript::" style="padding: 10px 20px;">畫師列表</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;">案件列表</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <div class="u-container-style u-group u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
          	            
                        
                        
                        <a href="/PaintPartyMvcProject/login"
                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-1" name="header_login" style="display:none">登入</a>
                        <a href="/PaintPartyMvcProject/register"
                            class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-2" name="header_register" style="display:none">註冊</a>
          </div>
        </div>
      </div></header>
    <section class="u-clearfix u-grey-10 u-section-1" id="sec-7cff">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-align-center u-form u-form-1">
          <form action="#" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;">
            <div class="u-form-group u-form-group-2">
              <label for="text-c4fd" class="u-form-control-hidden u-label"></label>
              <input type="text" placeholder="帳號" id="text-c4fd" name="member_account" blur="checkAccount()" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
              <div style="color:red ;display: none" name="member_account_error">帳號已註冊</div>
            </div>
            <div class="u-form-group u-form-group-3">
              <label for="text-d6e6" class="u-form-control-hidden u-label"></label>
              <input type="password" placeholder="密碼" id="text-d6e6" name="password" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
            </div>
            <div class="u-form-group u-form-name">
              <label for="name-7f03" class="u-form-control-hidden u-label"></label>
              <input type="text" placeholder="名稱" id="name-7f03" name="member_name_for_register" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
            </div>
            <div class="u-form-email u-form-group">
              <label for="email-7f03" class="u-form-control-hidden u-label"></label>
              <input type="email" placeholder="信箱" id="email-7f03" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
              
            </div>
            <div class="u-form-group u-form-phone u-form-group-5">
              <label for="phone-d2ff" class="u-form-control-hidden u-label"></label>
              <input type="tel" pattern="\+?\d{0,3}[\s\(\-]?([0-9]{2,3})[\s\)\-]?([\s\-]?)([0-9]{3})[\s\-]?([0-9]{2})[\s\-]?([0-9]{2})" placeholder="手機" id="phone-d2ff" name="phone" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="required">
            </div>
<!--             <div class="u-form-group"> -->
<!--               <label for="message-7f03" class="u-form-control-hidden u-label"></label> -->
<!--               <input placeholder="會員身分" rows="4" cols="50" id="message-7f03" name="message" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" type="text"> -->
<!--             </div> -->

			<div class="u-form-group u-form-phone u-form-group-5">
				<label for="email-7f03" class="u-form-control-hidden u-label"></label>
				<select name="member_status" style="
    						width: 100%;
						    height: auto;
						    padding: 10px;
							" required="">
					<option value="" disabled selected>請選擇會員身分</option>
					<option >一般會員</option>
					<option >畫師</option>
				</select>
				<div name="member_status_error" style="display:none; color:red">尚未選擇身分</div>
			</div>
            <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-btn u-btn-submit u-button-style">送出</a>
              <input type="submit" value="submit" class="u-form-control-hidden" name="submit" onclick="registerCheckx()">
            </div>
<!--             <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div> -->
<!--             <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div> -->
<!--             <input type="hidden" value="" name="recaptchaResponse"> -->
          </form>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-70 u-footer" id="sec-c7c8"><p class="u-small-text u-text u-text-variant u-text-1">Copyright @ dodo 2021</p><nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
        <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
          <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
            <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
          </a>
        </div>
        <div class="u-custom-menu u-nav-container">
          <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" style="padding: 10px 96px;">聯絡我們</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" style="padding: 10px 96px;">常見問題</a>
</li></ul>
        </div>
        <div class="u-custom-menu u-nav-container-collapse">
          <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
            <div class="u-sidenav-overflow">
              <div class="u-menu-close"></div>
              <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 96px;">聯絡我們</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 96px;">常見問題</a>
</li></ul>
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
    //登出
    function logout(){
    	
    	window.location.href = '/PaintPartyMvcProject/logout'
    }
    
    //送出註冊資料
    function registerCheckx(){
    			console.log("測試1");
    			console.log($("[name=member_account]").val());
    			console.log($("[name=member_status]").val());
    	var data={
    			"member_account":$("[name=member_account]").val(),
    			"password":$("[name=password]").val(),
    			"member_name":$("[name=member_name_for_register]").val(),
     			"email":$("[name=email]").val(),
    			"phone":$("[name=phone]").val(),
    			"member_status":$("[name=member_status]").val(),
    			
    	}
    	
    	if($("[name=member_status]").val()!=null){
    	$.ajax({ //如果帳號,email已經使用會提醒顯示div
    		url:"processRegister_memberAccount",
    		method:"POST",
    		data:data,
    		dataType:"json",
    		success:function(data){
    			console.log("進入success");
    			console.log(data.success);
    			if(data.result){//無人註冊,下一步是寫入sql

					window.location.href = "./login";
    				
    			}else{
    				
    				$("[name=member_account_error]").show()
    			}
    			
    		},
    		error:function(shit) {
    			console.log("進入error");
    		//console.log(shit.responseJSON.msg)
//     		$("#username-error").show()
    		}
    	})
    		
    	}else{
    		$("[name=member_status_error]").show()
    		
    	}
    	
    	
    }
//     function checkAccount(){
//     	var data={
//     			"member_account":$("[name=member_account]").val()   			
//     	}
//     	$.ajax({ //如果帳號,email已經使用會提醒顯示div
//     		url:"processRegister_memberAccount",
//     		method:"POST",
//     		data:data,
//     		dataType:"json"
//     		success:
//     	})
//     }
    
    
    </script>
      
  </body>
</html>