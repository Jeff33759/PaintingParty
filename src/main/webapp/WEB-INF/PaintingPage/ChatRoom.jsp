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
    <title>聊天室</title>
    <link rel="stylesheet" href="../resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="../resources/css/ChatRoom.css" media="screen">
    <script class="u-script" type="text/javascript" src="../resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../resources/js/nicepage.js" defer=""></script>
    
    <!-- 聊天室引入，不能用我們的BS，因為版本不一樣，樣式會跑掉 -->
    <link rel=stylesheet href=https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css>
	<script src=https://code.jquery.com/jquery-3.5.1.min.js></script>
	<script src=https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js></script>
    <!-- 聊天室引入，不能用我們的BS，因為版本不一樣，樣式會跑掉 -->
    
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

 <script>
 //代做
    $(function(){
    	
    
    });
    
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
    
    
    
    
    <script>
    //ajax請求出跟誰建立了連接
    
    $(document).ready(ajaxreq_chat_conn);
    
    function ajaxreq_chat_conn (){
 
    	
    	console.log(321);
    	//-------以下WS用 參數設置
    	var host = window.location.host;
		//var host2 = document.domain; //不包括PORT，假設localhost:8080，那就會只拿到localhost
		var myuser_id = parseInt("<%= session.getAttribute("session_member_id") %>");
		
		//以下客戶端傳送訊息包裝用
		var send_message;
		var to_user_id = 0; //先寫死
		
		var url = "ws://"+ host + `<%= request.getContextPath() %>/endpoint?myuser_id=\${myuser_id}&to_user_id=\${to_user_id}`;

		
		var ws;
		
		
		//以下獲取自己與對方的姓名(對方的要配合CLICK事件)，不用每次傳訊息都對資料庫搜索一次，只為了得到對方姓名
		var myuser_name = $("[name=member_name]").html();
		var opposite_user_name = ""; // 先寫死
		console.log(opposite_user_name);
		
    	//----以上WS用參數
    	
    	
    	
		ws = new WebSocket(url); //第一次拜訪這頁面，開啟WS，預設對話者為會員ID_0。
    	
		//----------------------------------------------------以下可以寫成寒士
		
	      	ws.onopen = function(){
       	        console.log('Connection 開啟了...');
       	        
       	        $("#connect-status").text("連線中"); 
       	        
       	      	}//onopen end
       	      	
       	      ws.onclose = function (){

       	      	console.log('Connection 關閉了...');
       	        $("#connect-status").text("離線中"); 
       	      }//onclose end
       	      
       	      
       	      ws.onmessage = function(event) { //接收到伺服端推下來的資料時，要做
       	    	  //console.log("收到");
       	    	  console.log(event.data);
       	    	  console.log(typeof(event.data));
       	    	  //console.log("type: " + typeof( parseInt(to_user_id) ));
       	    	  eval("var result=" + event.data); //eval=將()內的字串當成JS來執行
       	    	  //console.log("type2: " + typeof( parseInt(result.from_user_id) ) );
       	    	  
       	    	  //console.log(typeof( result.from_user_id ) );
       	    	  //console.log(typeof( myuser_id ) );
       	    	  
       	    	  if( result.message_status === 0 ){ //若是系統訊息才印
       	    		  //console.log("--3");
	       	    	  $("#msg-io").append(`<h6 style="color:red;">\${result.send_message}</h6>`); //因為是第一次近來，所以一定只會是系統提示
       	    	  
       	    	  
       	    	  }
       	    		
       	    	  
       	    	  
       	    	  
       	    	  
       	    	  
       	          var msgIoDiv = $("#msg-io")[0];	   //因為#msg-io是INPUT，所以後面要加[0]，才娶的到所要的DIV元素
       	          msgIoDiv.scrollTo(0,msgIoDiv.scrollHeight);	  //決定當滾輪出現時，要預設滾到哪裡，這裡預設Y軸要滾到那個DIV的最上方，我們看見就會是最下方
       	          //element.scrollTo(x-coord, y-coord)
       	          //The scrollTo() method of the Element interface scrolls to a particular set of coordinates inside a given element.
       	          //Element.scrollHeight是衡量元素包含因為overflow而沒顯示在螢幕上的內容高度的唯讀屬性.
       	      
       	      }	//onmessage end
		
		
		
       	 //----------------------------------------------------以上可以寫成寒士
    	

    	
    	
    	 //---------------------------------------------------

    	
    	console.log(123);
        $("#conn_container").html("");//清空左邊conn
        //$("#chat_room_container .chat_content").html("");//清空右邊聊天室
   	 
        $.ajax({ //代做
            url: `<%= request.getContextPath() %>/backend/chatconnlist`,                        // url位置
            type: 'post', 
            error: function (xhr) { $("#conn_container").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
            success: function (data) { 
            	//$("#conn_container").html( JSON.stringify(data) ); //demo
            	
            var i = 0; 
					
            if(data[0]!=null){
           	 
           	  
	           	 for(i=0;i<data.length;i++){
	           		 
	           		$("#conn_container").append(`
	           				
	           			 <a href="/\${data[i].member_name_b}/\${data[i].member_id_b}" style="text-decoration:none;" class="conn_open" > 

	                        <div class="conn_block mb-4 border shadow" >

	                          <div style="display: flex;margin:5px;">
	                            <img src="headshotdownloader/\${data[i].member_id_b}" style="width: 40%;border-radius:50%" >
	                          <div class="conn_bmem_name" style="text-align: center;font-size: medium;margin-left:5px;">\${data[i].member_name_b}</div>

	                          </div>
	                          
	                          <div class="conn_date" style="text-align: center;color: darkgrey;">\${data[i].conn_date}</div>

	                        </div>
	                      </a>
	           				
	           				
	           				`);

	           		 
	           	 }//end for
	           	 
	           	
	           	 
	            	$("#conn_container .conn_open").click(function(){
	            		
	            		
	            		$("#msg-input").removeAttr("disabled");//當選取私聊，取消INPUT的禁止輸入
	            		$("#msg_submit").removeAttr("style");//當選取私聊，解除送出鈕的隱藏
	            		
	            		var change_bmember_id = $(this).attr("href").split("/")[$(this).attr("href").split("/").length-1];
	            		var change_bmember_name = $(this).attr("href").split("/")[$(this).attr("href").split("/").length-2];
	            		//console.log( change_bmember_id ); //得出典籍的BMEMBER ID
	           			//console.log( change_bmember_name ); //得出典籍的BMEMBER name
	           			$("#chat_title").html( "即時聊天室(to " + change_bmember_name + ")" ); //換掉聊天室上方的標題
	           			
	           			
	           			$("#msg-io").html(""); //只要按下，就統一清掉內容
	           			
	           			console.log("原本to_user_id: " + to_user_id);
	           			console.log("原本opposite_user_name: " + opposite_user_name);
	           			
	           			to_user_id = change_bmember_id;
	           			opposite_user_name = change_bmember_name;
	           			
	           			console.log("改變後to_user_id: " + to_user_id);
	           			console.log("改變後opposite_user_name: " + opposite_user_name);
						
	           			if(ws != null){ //如果有WS沒關，那就關掉
	           				ws.close();
	           				
	           			}
	           			
						
	           			console.log("--1");
	           			//代做
	           			
	           				
	           			//------以下抽出與現在典籍的連接者之間的歷史訊息
	           				
			           		$.ajax({ //代做
					            url: `<%= request.getContextPath() %>/backend/chathistory/\${to_user_id}`,                        // url位置
					            type: 'post', 
					            error: function (xhr) { $("#msg-io").html("歷史訊息讀取失敗，請重新整理"); },      // 錯誤後執行的函數
					            success: function (data) { 
					            	console.log("收到DATA"); //這邊請求得速度比較慢，所以變成歷史訊息跑在系統通知後面
					            	//$("#msg-io").prepend( JSON.stringify(data) ); //demo 
					            	if( data.length!=0 ){ // 有歷史訊息才做
					            						      
					            		$("#msg-io").prepend( `<br><hr><div style="display:flex;justify-content: center; "><div style="margin-top:-38px;border-style:double;background-color:white;padding:5px;"><b>歷史訊息</b></div></div><br>` ); //歷史訊息分界線
					            		
					            		for( var i=0 ; i<data.length ; i++){
					            			
					            			if( data[i].member_id_s === myuser_id ){ //若寄迅人是自己，那就藍色
					            				
					            				$("#msg-io").prepend( `<h6 style="color:blue;">【\${data[i].sender_name}】(\${data[i].message_time})：<br/><div style="color:black;">　\${data[i].message_content}</div></h6>` );
					            				
					            			}else{
					            				
					            				$("#msg-io").prepend( `<h6 style="color:black;">【\${data[i].sender_name}】(\${data[i].message_time})：<br/><div style="color:black;">　\${data[i].message_content}</div></h6>` ); //demo
					            				
					            			}
					            			
					            	
					            		}//data[i] for end
					            		
					            		
					            		
					            	}else{ //若沒有，就啥都不要印
					            		
					            		//$("#msg-io").prepend( "暫無歷史訊息" );
					            		
					            	}//有歷史訊息 if end
					            	
					            	
					            	var msgIoDiv = $("#msg-io")[0];	   //因為#msg-io是INPUT，所以後面要加[0]，才娶的到所要的DIV元素
				           	        msgIoDiv.scrollTo(0,msgIoDiv.scrollHeight);
					            
					            }// end success
					            
					        });//end ajax
	           				
	           				
	           				
	           			
	           			
	           			
	           			
	           			//以下開始為下一輪的WS連接做準備
	           			url = "ws://"+ host + `<%= request.getContextPath() %>/endpoint?myuser_id=\${myuser_id}&to_user_id=\${to_user_id}`;
	           			console.log("12311111");
	           			console.log(url);
	           			
	           			//----------------------------------
	           			
	           			console.log(ws);
	           			
	           			ws = new WebSocket(url);//開啟ws
	           	      	
	           	      	ws.onopen = function(){
	           	        console.log('Connection 開啟了...');
	           	        
	           	        $("#connect-status").text("連線中"); 
	           	        
	           	      	} //onopen end
	           	      	
	           	      ws.onclose = function (){
	           	      		
	
	           	      		
	           	        console.log('Connection 關閉了...');
	           	        
	           	        $("#connect-status").text("離線中"); 
	           	      }//onclose end
	           	      
	           	      
	           	      ws.onmessage = function(event) { //接收到伺服端推下來的資料時，要做
	           	    	  //console.log("收到");
	           	    	console.log("--2");
	           	    	  console.log(event.data);
	           	    	  console.log(typeof(event.data));
	           	    	  //console.log("type: " + typeof( parseInt(to_user_id) ));
	           	    	  eval("var result=" + event.data); //eval=將()內的字串當成JS來執行
	           	    	  //console.log("type2: " + typeof( parseInt(result.from_user_id) ) );
	           	    	  
	           	    	  //console.log(typeof( result.from_user_id ) );
	           	    	  //console.log(typeof( myuser_id ) );
	           	    	  
	           	    	  if( result.message_status === 0 ){ //若是系統訊息
	           	    		console.log("--2-2");
	           	    		  $("#msg-io").append(`<h6 style="color:red;">\${result.send_message}</h6>`);
	           	    	  
	           	    	  }else{ //若是私人訊息
	           	    		  
	           	 			
	           	    	  	if( result.from_user_id === myuser_id ){
	           	    	  		console.log(result.current_time);
	           	    		  
	           	    		  $("#msg-io").append(`<h6 style="color:blue;">【\${myuser_name}】(\${result.current_time})：<br/><div style="color:black;">　\${result.send_message}</div></h6>`);
	           	    		  
	           	    	  }else if( parseInt(result.from_user_id) === parseInt(to_user_id) ){
	           	    		  console.log("SEMD的對方名字: " + opposite_user_name);
	           	    		  $("#msg-io").append(`<h6 style="color:black;">【\${opposite_user_name}】(\${result.current_time})：<br/><div style="color:black;">　\${result.send_message}</div></h6>`);
	           	    		  
	           	    	 	 } // 比較是不是自己else end
	           	    	  
	           	    	  
	           	    	  }//若是私人訊息 else end
	           	    	  
	           	    	  
	           	    	 
	           	    	  
	           	          var msgIoDiv = $("#msg-io")[0];	   //因為#msg-io是INPUT，所以後面要加[0]，才娶的到所要的DIV元素
	           	          msgIoDiv.scrollTo(0,msgIoDiv.scrollHeight);	  //決定當滾輪出現時，要預設滾到哪裡，這裡預設Y軸要滾到那個DIV的最上方，我們看見就會是最下方
	           	          //element.scrollTo(x-coord, y-coord)
	           	          //The scrollTo() method of the Element interface scrolls to a particular set of coordinates inside a given element.
	           	          //Element.scrollHeight是衡量元素包含因為overflow而沒顯示在螢幕上的內容高度的唯讀屬性.
	           	      
	           	      }//onmessage end	
	           	      
	           			
	           			//------------------------------
	           			
	           			
	           			//chat_func(url , myuser_name , opposite_user_name , myuser_id , send_message , ws , to_user_id);
	           			
		           		return false;
		           		
		           	}); //conn_open click end	           	 
	           	 
	           	 
	            	 $("#form1").submit(function(){ //送出訊息
		           	    	console.log("---------Send------------");
		           	  		//to_user_id = 4; // 先寫死
		           			send_message = $("#msg-input").val();
		           	  		
		           	  		if(send_message ===""){ //如果欄位沒輸入任何內容，就不給SEND
		           	  			return false;
		           	  			
		           	  		}
		           	  		
		           			var jsonobject = null;
		           			jsonobject = {
		           					"to_user_id":to_user_id,
		           		                "send_message":send_message,
		           		            };
		           			console.log("TO ID: " + to_user_id);
		           			//把訊息變成JSON字串，傳到伺服端
		           			var json = JSON.stringify(jsonobject);
		           	        
		           	        ws.send(json);
		           	        $("#msg-input").val(""); //清空訊息欄
		           	        
		           	        return false;
		           	      });
           	 
           	 
            }else{
           	 
           	 $("#conn_container").html("暫無資料"); 
           	
           	 
            }//data[0]!=null end if
            
            

            
            }// end success
        });//end ajax
   	 
   	 
   	 
   	 
    }//func end
    
    
    
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
                                        <a style="text-decoration:none;" class="u-accordion-link u-border-2 u-border-grey-5 u-button-style u-grey-5 u-radius-6 u-text-active-palette-1-light-1 u-text-hover-palette-1-light-1 u-accordion-link-1"
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

<!-- 以下開發區塊 -->


      <div class="u-container-style u-group u-white u-group-1" style="margin-top:27px;">
        <div class="u-container-layout u-container-layout-1">



          <!--開發用 代做-->
          <div style="font-size: large; margin-left:50px;"><b>訊息</b></div>
          <div style="background-color:#f2f2f2;height:20px;"></div>

          <div id="chat_main_block" style="display:flex;">

            <div class="mt-5 col-md-3" id="conn_container">讀取資料中</div>

            <!----------------------->

            <div class="container mt-5 " id="chat_room_container">
              <div class="row" style="padding-right:40px;">
                <div class="col-md-12 border shadow p-5 chat_content" style="height:500px;">
                  <h4 class="text-center pb-3">
                  <div id="chat_title">即時聊天室</div>
                  <span class="badge badge-light float-right"
                      id="connect-status">離線中</span></h4>
                  <form id="form1">
                    <div class="form-group">
                      <div class="form-control" style="height:250px;overflow:auto;" id="msg-io">
                    
                      </div>
                    </div>
                    <div class="form-group">
                      <input class="form-control" type="text" name="msg-input" id="msg-input" placeholder="請輸入訊息" disabled="disabled"/>
                    </div>
                    <button type="submit" class="btn btn-primary" id="msg_submit" style="display:none;">送出</button>
                    <!--<button type="button" class="btn btn-danger float-right" id="disconnect-btn">離線</button> -->
                  </form>
                </div>
              </div>
            </div>



          </div>







          <!--開發用-->





        </div>
      </div>

 
<!-- 以上開發區塊 -->

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
    
    
	function chat_func(url , myuser_name , opposite_user_name , myuser_id , send_message , ws , to_user_id){
		
		
		
		
	};
    
    
    </script>
    
    
</body>

</html>