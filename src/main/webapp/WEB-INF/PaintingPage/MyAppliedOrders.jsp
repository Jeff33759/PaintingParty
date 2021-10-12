<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<head>

   <script>
  $(function() {
    $( "#dialog-evaluationb2a" ).dialog({
      autoOpen: false,
      width: 480,
      modal: true
    });
  });
  
  $(function() {
    $( "#dialog-productupload" ).dialog({
      autoOpen: false,
      width: 480,
      modal: true
    });
  });
  
  $(function() {
    $( "#dialog-filecontentb" ).dialog({
      autoOpen: false,
      width: 540,
      modal: true
    });
  });
  
  
  </script>




	<script>
				//代做
	var myappliedorder_sort = 1; //0=由舊到新、1=由新到舊 
	var myappliedorder_condition = 0; //0=全部、1~3=第一~三階段、4=已完成、5=已取消
	var myapplied_order_nowpage = 1; //當前頁數
	var myapplied_order_finalpage ; //總頁數
	
	//console.log("原始sort: " + myappliedorder_sort);
	//console.log("原始condition: " + myappliedorder_condition);
	
	//代做
	$("#myapplied_order_sort .new2old").click(function(){
		
		myappliedorder_sort=1;
		myapplied_order_nowpage  = 1;
		//console.log("改變後sort: " + myappliedorder_sort);
		ajaxreqb();
		
	});//由新到舊點下去 end
	
	
	$("#myapplied_order_sort .old2new").click(function(){
		
		myappliedorder_sort=0;
		myapplied_order_nowpage = 1;
		//console.log("改變後sort: " + myappliedorder_sort);
		ajaxreqb();
		
	});//由舊到新點下去 end
	
	//--------------------以上排序，以下條件--------------
	
	$("#myapplied_order_condition .myapplied_order_all").click(function(){
		
		myappliedorder_condition=0;
		myapplied_order_nowpage  = 1;
		//console.log("改變後condition: " + myappliedorder_condition);
		ajaxreqb();
		
	});//全部 end

	$("#myapplied_order_condition .myapplied_order_1stage").click(function(){
		
		myappliedorder_condition=1;
		myapplied_order_nowpage  = 1;
		//console.log("改變後condition: " + myappliedorder_condition);
		ajaxreqb();
		
	});//第一階段 end
	
	$("#myapplied_order_condition .myapplied_order_2stage").click(function(){
		
		myappliedorder_condition=2;
		myapplied_order_nowpage  = 1;
		//console.log("改變後condition: " + myappliedorder_condition);
		ajaxreqb();
		
	});//第二階段 end
	
	
	$("#myapplied_order_condition .myapplied_order_3stage").click(function(){
		
		myappliedorder_condition=3;
		myapplied_order_nowpage  = 1;
		//console.log("改變後condition: " + myappliedorder_condition);
		ajaxreqb();
		
	});//第三階段 end
	
	
	$("#myapplied_order_condition .myapplied_order_complete").click(function(){
		
		myappliedorder_condition=4;
		myapplied_order_nowpage  = 1;
		//console.log("改變後condition: " + myappliedorder_condition);
		ajaxreqb();
		
	});//已完成 end
	
	
	$("#myapplied_order_condition .myapplied_order_cancel").click(function(){
		
		myappliedorder_condition=5;
		myapplied_order_nowpage  = 1;
		//console.log("改變後condition: " + myappliedorder_condition);
		ajaxreqb();
		
	});//已取消 end
	
	
//-----------------------------以下頁數
	
	$("#myapplied_page .preppagebtn").click(function(){
		
		if( $(this).attr("disabled")==="disabled" ){
			return false;
		}

		myapplied_order_nowpage --;
		//console.log("改變後nowpage: " + myapplied_order_nowpage );
		ajaxreqb();
		
	});//上一頁 end
	
	
	$("#myapplied_page .nextpagebtn").click(function(){
		if( $(this).attr("disabled")==="disabled" ){
			return false;
		}
		myapplied_order_nowpage++; 
		//console.log("改變後nowpage: " + myapplied_order_nowpage);
		ajaxreqb();
		
	});//下一頁 end
	
	

	</script>


</head>



<html>

<body>





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
        class="u-custom-menu u-nav-container" id="myapplied_order_sort">
        <ul
            class="u-nav u-unstyled u-nav-1">
            <li class="u-nav-item"><a
                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                    href="javascript:">排序</a>
                <div
                    class="u-nav-popup">
                    <ul
                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">
                        <li
                            class="u-nav-item">
                            <a class="u-button-style u-nav-link u-palette-3-light-3 new2old"
                                href="javascript:">由新到舊</a>
                        </li>
                        <li
                            class="u-nav-item">
                            <a class="u-button-style u-nav-link u-palette-3-light-3 old2new"
                                href="javascript:">由舊到新</a>
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
                            href="javascript:">排序</a>
                        <div
                            class="u-nav-popup">
                            <ul
                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4">
                                <li
                                    class="u-nav-item">
                                    <a class="u-button-style u-nav-link"
                                        href="javascript:">由新到舊</a>
                                </li>
                                <li
                                    class="u-nav-item">
                                    <a class="u-button-style u-nav-link"
                                        href="javascript:">由舊到新</a>
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


                    <div class="u-custom-menu u-nav-container" id="myapplied_order_condition">
                        <ul class="u-nav u-unstyled u-nav-13">
                            <li class="u-nav-item"><a
                                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                    href="javascript:">訂單狀態</a>
                                <div class="u-nav-popup">
                                    <ul
                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-14">
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 myapplied_order_all"
                                                href="javascript:">全部</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 myapplied_order_1stage"
                                                href="javascript:">第一階段</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 myapplied_order_2stage"
                                                href="javascript:">第二階段</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 myapplied_order_3stage"
                                                href="javascript:">第三階段</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 myapplied_order_complete"
                                                href="javascript:">已完成</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 myapplied_order_cancel"
                                                href="javascript:">已取消</a>
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
                                            href="javascript:">訂單狀態</a>
                                        <div
                                            class="u-nav-popup">
                                            <ul
                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-16">
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="javascript:">第一階段</a>
                                                </li>
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="javascript:">第二階段</a>
                                                </li>
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="javascript:">第三階段</a>
                                                </li>
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="javascript:">已完成</a>
                                                </li>
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="javascript:">已取消</a>
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

    <!-- 以上選單，以下空白準備填入  -->

    <div
    class="u-container-style u-group u-white u-group-2">
    <div
        class="u-container-layout u-container-layout-8" id="MyAppliedOrdersPage">  <!-- 新增的元素，放在此區塊裡面 -->
        
       <script>
                
       $(document).ready(ajaxreqb);

       function ajaxreqb (){    //代做
    	   
    	   
    	   $.ajax({
               url: `<%= request.getContextPath() %>/backend/myappliedorders2/\${myappliedorder_sort}/\${myappliedorder_condition}/\${myapplied_order_nowpage }`,   // url位置
               type: 'get',  // post/get
               error: function (xhr) { $("#MyAppliedOrdersPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
               success: function (data) { 
              	 $("#MyAppliedOrdersPage").html(""); //demo+重置
              	 //JSON.stringify(data)
              	 
              	if(data.length !=0){
              		myapplied_order_finalpage = data[0].final_page;
            	}
           		
           		//console.log("myapplied_order_finalpage: " + myapplied_order_finalpage);
              	
           		$("#myapplied_page .finalpage").html(myapplied_order_finalpage + "頁");
              	$("#myapplied_page .nowpage").html(myapplied_order_nowpage  + "頁");
              	//設置頁數
              	
              	if(myapplied_order_nowpage ===1){
              		$("#myapplied_page .preppagebtn").attr("disabled","disabled");
              	}else{
              		$("#myapplied_page .preppagebtn").removeAttr("disabled");
              	} //設置上一頁按鈕特效
              	
              	if(myapplied_order_nowpage ===myapplied_order_finalpage){
              		$("#myapplied_page .nextpagebtn").attr("disabled","disabled");
              	}else{
              		$("#myapplied_page .nextpagebtn").removeAttr("disabled");
              	} //設置下一頁按鈕特效
              	 
  					
                   if(data[0]!=null){
                	   
                	   $("#myapplied_page").removeAttr("style"); //若有資料，就解除頁數隱藏
                	   
                  	 for(let i = 0;i<data.length;i++){

                  		 $("#MyAppliedOrdersPage").append(`                                                                        <div
                                   class="u-container-style u-group u-palette-5-light-2 u-group-24" style="margin-bottom:50px;">
                                   <div
                                       class="u-container-layout u-container-layout-34">
                                       <h5
                                           class="u-text u-text-default u-text-font u-text-23">
                                           <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-22" target="_blank"
                                               href="<%= request.getContextPath() %>/casepagemainpage.controller/\${ data[i].case_id }">\${ data[i].case_title }</a>
                                       </h5>
                                       <a href="/\${ data[i].order_id }"
                                           class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-23"
                                           target="_blank">上傳檔案</a>
                                       <div
                                           class="u-container-style u-group u-shape-rectangle u-group-25">
                                           <div
                                               class="u-container-layout u-container-layout-35">
                                           <!--會員頁面 -->
                                           <div><b>發案者：</b><a href="<%= request.getContextPath() %>/memberpage/\${ data[i].amember_id }" target="_blank">\${ data[i].amember_name }</a></div>
                                           
                                           
                                           </div>
                                       </div>
                                       <a href="/\${ data[i].order_id }/\${ data[i].amember_name }/\${ data[i].price }"
                                           class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-24">檔案內容</a>
                                       <a href="../../\${ data[i].order_id}/\${ data[i].case_id }/\${ data[i].amember_id }"
                                           class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-25"
                                           target="_self"> 給評價</a>
                                       <div
                                           class="u-container-style u-group u-shape-rectangle u-group-26">
                                           <div
                                               class="u-container-layout u-container-layout-36" style="margin-top:6px;">
                                           <div><b>訂單狀態：</b>\${ data[i].order_status }</div>
                                           </div>
                                       </div>
                                       <div
                                           class="u-container-style u-group u-shape-rectangle u-group-27">
                                           <div
                                               class="u-container-layout u-container-layout-37">
                                           <div style="margin-left:30px;"><b>稿酬：</b>\${ data[i].price }</div>
                                           </div>
                                       </div>
                                       <div style="display:flex; margin-left:327px; margin-top:-110px;margin-right:200px;"><b>成立日期：</b>\${ data[i].order_date }</div>
                                   </div>
                               </div>
  `); //append end
                  		 
                  		 
                  		 if(data[i].order_status != "已完成"){
           					//$("#MyAppliedOrdersPage .u-btn-15 ").eq(i).attr("style","visibility:hidden");
           					$("#MyAppliedOrdersPage .u-btn-25 ").eq(i).attr("style","visibility:hidden");
           					
           				}
           				
                  		 if(data[i].evaluation_status_b2a === "已評價"){
           					//$("#MyAppliedOrdersPage .u-btn-15 ").eq(i).attr("style","visibility:hidden");
           					$("#MyAppliedOrdersPage .u-btn-25 ").eq(i).attr("href","javascript:").attr("disabled","disabled").html("已評價");
           					
           				}
           				
                  		 if(data[i].order_status === "已完成" || data[i].order_status === "已取消"){
           					
           					$("#MyAppliedOrdersPage .u-btn-23 ").eq(i).attr("style","visibility:hidden");
           					
           				}
                  		 
                  		 
                  	 }//end for
                  	 
                  	 
                  	 
                   }else{
                  	 
                  	 $("#MyAppliedOrdersPage").html("暫無資料"); 
                  	 $("#myapplied_page").attr("style","visibility:hidden");
                  	 
                   }//end if
              	 
                   
                 //---------------給評價的彈出框框
                   
                   
           	 	$("#MyAppliedOrdersPage .u-btn-25").click(function () {
           	 		
        	   	 //console.log( typeof($("#evaluationb_caseid").val() ));
        	   	  	if( $(this).attr("href") != "javascript:" ){ //判斷評價紐是不是為已評價
        	   	  		
        	   	  	//當打開評價頁時，要做的事
        	   	  	
        	   	  	
        	   	 	//$( "#dialog-evaluationb2a #evaluationb_caseid" ).val( $(this).attr("href").split( "/" ) ); //把此訂單的CASEID抓出來
        	   	  	
        	   	 	$( "#dialog-evaluationb2a #evaluationb_orderid" ).val( $(this).attr("href").split("/")[$(this).attr("href").split("/").length-3] ); //把此訂單的接案者ID抓出來
        	   	 	$( "#dialog-evaluationb2a #evaluationb_caseid" ).val( $(this).attr("href").split("/")[$(this).attr("href").split("/").length-2] ); //把此訂單的CASEID抓出來
        	   	 	$( "#dialog-evaluationb2a #evaluationb_amember_id" ).val( $(this).attr("href").split("/")[$(this).attr("href").split("/").length-1] ); //把此訂單的接案者ID抓出來
        	   	 	$( "#dialog-evaluationb2a #messageb" ).html(""); //把評價訊息清空
        	   	 	$( "#dialog-evaluationb2a #messageb2" ).html("");
        	   	 	resetb(); //重置星星圖片
        	   	 	dblclickb(); //重置點擊的事件
        	   	 	$( "#dialog-evaluationb2a #commentsb" ).val(""); //清空評語
        	   	 	$( "#dialog-evaluationb2a" ).dialog( "open" ); //打開區塊
        	   	 	
        	        return false;//把預設行為取消，若沒這行，按下上面的按鈕，會被捲到最上面，因為預設行為是超連結
        	   	  		
        	   	  	}
        	   	  	
        	   	  	
        	     }); // btn-25 click end
        	     
        	     //-----上傳檔案的表單彈出框框
        	     $("#MyAppliedOrdersPage .u-btn-23").click(function () {
        	    	 //console.log( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-1] ); //取的該筆訂單ID

        	    	 $( "#productorderid" ).val( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-1] ); //把此訂單的ID抓出來
        	    	 $("#imgpreview").remove();//清空圖片預覽
        	    	 var productfile = document.getElementById("productupload");//點進來就清空INPUT檔案上傳的內容
        	    	 productfile.value = "";
        	    	 $( "#productcomments" ).val(""); //清空給案主的訊息
        	    	 
        	    	 
        	    	 $( "#dialog-productupload" ).dialog( "open" );
        	    	 
        	    	 return false;
        	    	 
        	    	 
        	     }); //u-btn-23 click end
        	     
        	     
        	     
        	     
        	     //-----檔案內容的表單彈出框框
        	     $("#MyAppliedOrdersPage .u-btn-24").click(function () {
        	    	 
        	    	 //console.log( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-1] ); 
        	    	 //console.log( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-2] ); 
     	    	 	var filecontentborderid = $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-3];//取該筆訂單的ID
        	    	var filecontentbmymemid = <%= request.getSession().getAttribute("session_member_id") %>; //取得自己ID
        	    	var filecontentbprice = $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-1]; //取總稿酬
        	    	var filecontentbstage1and2 = Math.floor(filecontentbprice/3); //算出階段稿酬
        	    	var filecontentbstage3 = filecontentbprice - (filecontentbstage1and2 * 2);
        	    	
        	    	//設置欄位初始值
        	    	 //$("#demofilecontent").remove(); //清掉DEMO資料
        	    	 $("#dialog-filecontentb .filecontentamembername").html( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-2] ); //重新給案主名字
        	    	 $("#filecontentblockb").html(""); //清掉檔案內容
        	    	 $("#dialog-filecontentb .pricestage1").html(filecontentbstage1and2+"(NTD)");//設置階段稿酬
        	    	 $("#dialog-filecontentb .pricestage2").html(filecontentbstage1and2+"(NTD)");
        	    	 $("#dialog-filecontentb .pricestage3").html(filecontentbstage3+"(NTD)");
        	    	 
     				filecontentbjstr = JSON.stringify({"order_id":filecontentborderid,"bmember_id":filecontentbmymemid});
     				//console.log(filecontentbjstr);
     				
     				
     				//執行AJAX 代做
     				
     				$.ajax({
     					url: "<%= request.getContextPath() %>/backend/filecontentb",
     					type: 'post',
     					contentType:'application/json',
     					dataType: 'json',
     					data:filecontentbjstr,
     					success: function(data) {
     						//alert("連線成功!!");
     						//$("#dialog-filecontentb").prepend(`<div id="demofilecontent">\${JSON.stringify(data)}</div>`); //DEMO用資料
     						
     						
     						//---------
     						
     						
							for( let j = 0 ; j<data.length ; j++ ){
     							
     							
     							$("#filecontentblockb").append(`  <div style="background-color: gainsboro; width:500px;border-radius:5px;padding: 10px;margin-top:20px;" class="filecontentb">
     								    <div>
     								      <b style="font-size: medium;">已交付成品\${j+1}：</b>
     								    </div>
     								    <div id="filecontentimgb">
     								   <a href="productimg/\${data[j].product_name}" download="\${data[j].product_name}" title="請點擊下載">
     								   		<img src="productimg/\${data[j].product_name}" style="display:block; margin:auto; width:150px;" />
     								    </a>
     								   		</div>
     								   		<br>
     								    <b style="font-size: medium;">我給案主的留言：</b>
     								      <textarea class="filecontentcommentsb" cols="" rows="4px" readonly style="resize:none;width:470px; ">\${data[j].painter_message}</textarea>
     								  </div>`); //append end
     							
     							
     							
     						}//for end
     
     						
     					},
     					error: function(XMLHttpRequest, textStatus, errorThrown) {
     						alert("發生錯誤");
     						$( "#dialog-filecontentb" ).dialog( "close" );
     						ajaxreqb();
    						$('html,body').animate({ scrollTop: 0 }, 'slow'); 
     						
     					}
     				}); //ajax end
     				
     				
        	    	
        	    	 
        	    	 
					 $( "#dialog-filecontentb" ).dialog( "open" );
        	    	 
        	    	 return false;
        	    	 
        	    	 
        	     }); //u-btn-24 click end
        	     
        	     
        	     
        	     
        	     
               
               }// seccuss end
           }); //ajax end
    	   
    	   
    	   
       }//func end         
       
       
        
                    
         </script>
         
         
         
         <script>
	//評價表單的JS
    //1.單擊後，再點其他圖片，文字方塊是否會出現反映(應該要不會)  2.連點三下會出錯否 3.雙擊後，OVER OUT CLICK 是否有事件忘記被添加回去
    //待改進:在第五張圖片單擊後，假設在第三張圖片雙擊解除，那時候呈現的會有五個超賽，而不是三個，必須把滑鼠移出去觸發out重置。
    
    
            var imageevab = document.querySelectorAll ("#idimgb"); //取得所有ID為IDIMG的所有元素，放進NodeList裡面，成為元素集
            var msgb = document.getElementById("messageb");
            var msgb2 = document.getElementById("messageb2");
            var evtb = document.getElementById("evaluationb");
            //let subb = document.getElementById("submit");

            

            for(let i=0;i<imageevab.length;i++){
                imageevab[i].addEventListener("mouseover", mouseoverb );//事件繫結，滑鼠滑入
                
                /*
                做mouseover的功能，需要知道滑鼠一上去時，那張圖片到底是第幾張圖片，假如是移道第三張圖片，那麼1~3張圖片變超賽，所以要想辦法知道滑鼠移道的那張圖片的索引值，用E.TARGATE，可以GET到CLASS名，所以把CLASS名，命名成帶有數字規律。
    
                原本想法:在addEventListener後面的執行方法中，利用逆名韓式寫法，可以傳入引述，我傳入圖片索引數字以及圖片元素集image兩個引述，但用匿名韓式的做法，會無法在CLICK中做removeEventListener，所以放棄。
    
                
                */
                
                imageevab[i].addEventListener("mouseout",mouseoutb);//事件繫結，滑鼠滑出
                /*原本作法:
                document.getElementById("idimg").addEventListener("mouseover",mouseover);  
                document.getElementById("idimg").addEventListener("mouseout",mouseout);
                ......*N。
                有幾張圖片就要寫幾次，但用querySelectorAll的作法，就可以使用FOR回圈一一取得元素，
                也就是document.getElementById("idimg")在做的事情(利用ID取得元素)，querySelectorAll批次做好放進LIST裡面了。
                */  
    
                imageevab[i].addEventListener("click", clickb );//事件繫結，滑鼠典籍
    
                imageevab[i].addEventListener("dblclick", dblclickb );//事件繫結，滑鼠雙籍
                
            }
    
            
    
                function mouseoverb( e ) { //滑鼠移入
                    // console.log(parseInt( e.target.className.substr(3) ));
                    //把CLASS名稱取為IMG0~4，e.target.className可以得到CLASS名稱，利用字串切割的方法，substr切調前面三個字，留下數字，再轉成INT，讓我們可以得到滑鼠一上去時該張圖片的索引值。
                    for(let i=0;i<=parseInt( e.target.className.substr(3) );i++){ //從第一章圖片到咦上去那張圖片為止，都變超賽
                        imageevab[i].src="../resources/images/super.jpg";
                    }
                    if((parseInt( e.target.className.substr(3) )+1)==1){
                      msgb.innerHTML = `...差評`;
                    }else if((parseInt( e.target.className.substr(3) )+1)==2){
                      msgb.innerHTML = `...普通`;
                    }else if((parseInt( e.target.className.substr(3) )+1)==3){
                      msgb.innerHTML = `...好評`;
                    }
                    
                }
    
                
    
                function mouseoutb() { //滑鼠移出，移出都做一樣動作
                    resetb(); //所有圖片解除超賽以及消除文字
                }
    
                function clickb(e){//滑鼠點集，解除事件綁定
                    for(let i=0;i<=2;i++){ 
                        imageevab[i].removeEventListener("mouseout",mouseoutb);
                        imageevab[i].removeEventListener("mouseover",mouseoverb);
                        imageevab[i].removeEventListener("click", clickb );
                    }
                    if((parseInt( e.target.className.substr(3) )+1)==1){
                      msgb.innerHTML = `您的評價為`;
                      msgb2.style.color = 'red';
                      msgb2.innerHTML = `差評`;
                      evtb.setAttribute("value","差評");
                      
                    }else if((parseInt( e.target.className.substr(3) )+1)==2){
                      msgb.innerHTML = `您的評價為`;
                      msgb2.style.color = 'gray';
                      msgb2.innerHTML = `普通`;
                      evtb.setAttribute("value","普通");
                    }else if((parseInt( e.target.className.substr(3) )+1)==3){
                      msgb.innerHTML = `您的評價為`;
                      msgb2.style.color = 'green';
                      msgb2.innerHTML = `好評`;
                      evtb.setAttribute("value","好評");
                    }
                }
    
                function dblclickb(){//滑鼠雙集，重新加上事件綁定
                    for(let i=0;i<=2;i++){ 
                        imageevab[i].addEventListener("mouseout",mouseoutb);
                        imageevab[i].addEventListener("mouseover", mouseoverb );
                        imageevab[i].addEventListener("click", clickb );
                    }
                    // reset(); //雙及時，所有圖片都解除超賽，文字也消失
                    //不能在雙擊時把文字和圖片憶起重置，因為會造成連點三下時出問題，所以只消除文自就好
                    msgb.innerHTML = `　`;//消除你得到了~~~的文字
                    msgb2.innerHTML = `　`;//消除你得到了~~~的文字
                    evtb.setAttribute("value","");
                }
    
                function resetb(){
                    for(let i=0;i<=2;i++){
                        imageevab[i].src="../resources/images/normal.jpg";
                    }//所有圖片解除超賽
                    msgb.innerHTML = `　`;//消除你得到了~~~的文字
                    msgb2.innerHTML = `　`;//消除你得到了~~~的文字
                }
   
        </script>
        
        
        <script>
        //評價表單驗證
			function verificationb() {
				if($("#dialog-evaluationb2a #evaluationb").val() == "" || $("#dialog-evaluationb2a #evaluationb").val() == null) {
					alert('請選擇您的評價');
					return false;
				}
				
				
				
				//表單發送資料
				
				var mymemid = <%= request.getSession().getAttribute("session_member_id") %>;
				
				jsonstr = JSON.stringify({"case_id":$("#dialog-evaluationb2a #evaluationb_caseid").val(),"order_id":$("#dialog-evaluationb2a #evaluationb_orderid").val(),"member_id_s":$("#dialog-evaluationb2a #evaluationb_amember_id").val(),"evaluation_star":$("#dialog-evaluationb2a #evaluationb").val(),"evaluation_content":$("#dialog-evaluationb2a #commentsb").val(),"member_id_r":mymemid});
				
				//alert(jsonstr);
				
				$.ajax({
					url: "<%= request.getContextPath() %>/backend/evaluationb2a",
					type: 'post',
					contentType:'application/json',
					dataType: 'json',
					data:jsonstr,
					success: function(data) {
						alert("評價成功!!");
						$( "#dialog-evaluationb2a" ).dialog( "close" );
						ajaxreqb();
						$('html,body').animate({ scrollTop: 0 }, 'slow'); 
					},
					error: function(XMLHttpRequest, textStatus, errorThrown) {
						alert("發生錯誤");
						$( "#dialog-evaluationb2a" ).dialog( "close" );
						ajaxreqb();
						$('html,body').animate({ scrollTop: 0 }, 'slow'); 
					}
				}); //ajax end
				
				
				return false;
			}
        
        
        
        
        
			//檔案上傳表單驗證 
			function verificationproduct() {
				
				if($("#productupload").val() == "" || $("#productupload").val() == null) {
					alert('請選擇您的檔案');
					return false;
				}
				
				//若有東西，就執行上傳的動作
				var productformData = new FormData($("#productform")[0]);
				 var proorderid=$("#productorderid").val();
				 var procomment=$("#productcomments").val();
				 productformData.append("proorderid",proorderid);
				 productformData.append("procomment",procomment);				
				
				$.ajax({
					type : "POST",
					url : `<%= request.getContextPath() %>/backend/productuploader`,
					data : productformData,
					cache : false, // 不需要cache
					processData : false, 
					contentType : false, // jQuery預設contentType為'application/x-www-form-urlencoded; charset=UTF-8', 且不用自己設定為'multipart/form-data'
					//dataType: 'text',
					success : function() {
						alert('上傳成功!');
						$( "#dialog-productupload" ).dialog( "close" );
						$('html,body').animate({ scrollTop: 0 }, 'slow'); 
					},
					error : function(data) {
						alert('發生錯誤');
						$( "#dialog-productupload" ).dialog( "close" );
						
					}
				});
				
				return false;
			}
        
        
        
		</script>
         
         
         <script>
         //評價的INPUT隱藏
         $("#evaluationb").attr("style","display:none");
         $("#evaluationb_caseid").attr("style","display:none");
         $("#evaluationb_amember_id").attr("style","display:none");
         $("#evaluationb_orderid").attr("style","display:none");
         
         </script>
         
         
         <script type="text/javascript">
         
//上傳檔案 
  $(function() {
	
    //當選檔變更時,立即預覽之前被選擇的照片
    	
    $("#productupload").change(function() {
      $("#imgpreview").remove();
      //console.log(this.files);
        previewImg(this.files);			
    });

    	


  });

//圖片預覽
  function previewImg(files) {		

    var fileReaders = [];
    
    if(files.length == 0){
    	return;
    } //若沒東西就不用預覽
    	
    	fileReaders[0] = new FileReader();		

        //註冊當選檔被讀取完成後之事件處理器
        fileReaders[0].onload = function() {
      	  //console.log("預覽");
      	  
      	  
        let imgWrapperDiv = `
            <div id="imgpreview">
              <img src="\${fileReaders[0].result}" style="width:100%;height:100%;" />
              <div id="productfilename" style="display:none; font-size:small;">\${files[0].name}</div>
            </div>
            `;			

		    $("#img-container").html(imgWrapperDiv);    	
            
          
        }; //file.onload func end

        fileReaders[0].readAsDataURL(files[0]);		
   
    
  } //func(previewImg) end
</script>
         
         

    </div>
</div>


     <!-- 以上空白區塊，以下頁數  -->

     <div
     class="u-container-style u-group u-white u-group-7" id="myapplied_page">
     <div
         class="u-container-layout u-container-layout-13">
         <a href="javascript:"
             class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-10 preppagebtn">上一頁</a>
         <div class="u-text u-text-default u-text-6 nowpage" style="right:3px;">X頁</div>
         <div class="u-text u-text-default u-text-7" style="left:2px;">｜</div>
         <div class="u-text u-text-default u-text-8 finalpage" style="left:3px;">X頁</div>
         <a href="javascript:"
             class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-11 nextpagebtn">下一頁</a>
     </div>
 </div>

 <!-------結束--------->
 
  <!-------以下評價表單--------->
 
 <div id="dialog-evaluationb2a" title="給評價" class="myappliedorders_dialog" >
  
  <div id="formblock" style="width:450px;">

            <div class="imgb centerblock">
                <img id="idimgb" class="img0" src="../resources/../resources/../resources/images/normal.jpg"/>
                <img id="idimgb" class="img1" src="../resources/../resources/images/normal.jpg"/>
                <img id="idimgb" class="img2" src="../resources/../resources/images/normal.jpg"/>
            </div>
        
            <div id="hintb" class="centerblock">
              單擊星星可評價，雙擊重置。
              <br>
            </div>
        
            <div class="centerblock">
            <div  id="messageb">　</div>
            <div  id="messageb2">　</div>
            </div>
            <hr>

            <form id="formeva" method="post" onsubmit="return verificationb()">
              <div class="centerblock">
                <input type="text" class="centerblock" style="width:100px" id="evaluationb" name="evaluation">
                <input type="text" class="centerblock" style="width:100px" id="evaluationb_caseid" title="caseid">
                <input type="text" class="centerblock" style="width:100px" id="evaluationb_amember_id" title="amemberid">
                <input type="text" class="centerblock" style="width:100px" id="evaluationb_orderid" title="orderid">
              </div>
              
              <div class="form-group">
              <br>
                <label class="centerblock" style="font-size: large;">評語</label>
                <div class="centerblock">
                  <textarea class="centerblock" cols="40" rows="5" id="commentsb" name="comments" style="resize:none;"></textarea>

                </div>
              </div>
              <br>
              <div class="centerblock">
                <button type="submit" id="submitb" class="btn btn-primary" style="width:150px">送出</button>
              </div>
              <br>
            </form>

      </div>
  
</div>
 
   <!-------上傳檔案--------->

<div id="dialog-productupload" title="上傳成品" class="myappliedorders_dialog">

	<div class="centerblock" style="width: 450px;">

  <div>


    <form method="post" enctype="multipart/form-data" id="productform" name="productform" onsubmit="return verificationproduct()">


      <br>
      <div id="img-container" style="width:250px;" >
      </div>
    
      <div>
        <input type="file" name="productupload" accept="image/*" id="productupload" />
      </div>
      <div>
        <b style="color: red;">※檔案上傳限制為圖片類，禁止上傳與訂單無關之檔案。</b>
      </div>
        <br>
              <div class="centerblock" >
        <input type="text" name="productorderid" id="productorderid" style="display:none;" />
      </div>

        <div class="form-group">
          <label class="centerblock" style="font-size: medium;"><b>給案主的訊息：</b></label>
          <div class="centerblock">
            <textarea class="centerblock" cols="40" rows="5" id="productcomments" name="comments" style="resize:none;width: 450px ;" ></textarea>
  
          </div>
        </div>

      <br>
      <div style="display:flex;justify-content:right;">
        <button type="submit" class="btn btn-primary" style="width:100px;height:35px;">送出</button>
      </div>
      <br>

    
    </form>


  </div>


 </div>




</div>


<!-------檔案內容--------->

<div id="dialog-filecontentb" title="檔案內容" class="myappliedorders_dialog">

<div style="width: 500px;" id="">
  <div class="centerblock">
    <div>

      <div class="centerblock" style="display:flex;justify-content:space-between;width:480px;">
        
        <div>
          <div style="text-align: center; font-size: medium;">第一階段</div>
          <div style="background-color: brown; border-radius:50%; text-align: center; color: white; font-size: medium;">
            <b>草稿</b>
          </div>
          <div style="text-align: center;" class="pricestage1"></div>
        </div>
        
        
        
        <div>
          <div style="text-align: center;font-size: medium;">第二階段</div>
          <div style="background-color: brown; border-radius:50%; text-align: center;color: white;font-size: medium;">
            <b>線稿</b>
          </div>
          <div style="text-align: center;" class="pricestage2"></div>
        </div>
        
        <div>
          <div style="text-align: center;font-size: medium;">第三階段</div>
          <div style="background-color: brown; border-radius:50%; text-align: center;color: white;font-size: medium;">
            <b>上色</b>
          </div>
          <div style="text-align: center;" class="pricestage3"></div>
        </div>
        
        
      </div>
    </div>
    


  </div>
<br>


  <div style="width:480px;">
    
    <div style="font-size: medium; display:flex" class="filecontentamember">
      <div>
      	<b>案主：</b>
      </div>
      <div class="filecontentamembername">
      </div>
      
      
    </div>
<br>

<hr>
<div id="filecontentblockb">




</div>



 </div>



</div>
</div>
<!-- 以上檔案內容 -->
</body>
</html>