<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

   <script>
   //評價表單
  $(function() {
    $( "#dialog-evaluationa2b" ).dialog({
      autoOpen: false,
      width: 480,
      modal: true
    });
  });
  

  
   //匯款資訊
   
     $(function() {
	    $( "#dialog-payINFO" ).dialog({
	      autoOpen: false,
	      width: 480,
	      modal: true
	    });
	  });
   
     //檔案內容
     $(function() {
	    $( "#dialog-filecontenta" ).dialog({
	      autoOpen: false,
	      width: 540,
	      modal: true
	    });
	  });
   
  
  </script>
  
  
  <script>
	//-----------排序與條件-----------------
	var mypostorders_sort = 1; //0=由舊到新、1=由新到舊 
	var mypostorders_condition = 0; //0=全部、1~3=第一~三階段、4=已完成、5=已取消
	var mypostorders_nowpage = 1; //當前頁數
	var mypostorders_finalpage ; //總頁數
	
	//console.log("原始sort: " + mypostorders_sort);
	//console.log("原始condition: " + mypostorders_condition);
	
	//代做
	$("#mypostorders_sort .new2old").click(function(){
		
		mypostorders_sort=1;
		mypostorders_nowpage = 1;
		//console.log("改變後sort: " + mypostorders_sort);
		ajaxreq ();
		
	});//由新到舊點下去 end
	
	
	$("#mypostorders_sort .old2new").click(function(){
		
		mypostorders_sort=0;
		mypostorders_nowpage = 1;
		//console.log("改變後sort: " + mypostorders_sort);
		ajaxreq ();
		
	});//由舊到新點下去 end
	
	//--------------------以上排序，以下條件--------------
	
	
	
	
	$("#mypostorders_condition .mypostorders_all").click(function(){
		
		mypostorders_condition=0;
		mypostorders_nowpage = 1;
		//console.log("改變後condition: " + mypostorders_condition);
		ajaxreq ();
		
	});//全部 end

	$("#mypostorders_condition .mypostorders_1stage").click(function(){
		
		mypostorders_condition=1;
		mypostorders_nowpage = 1;
		//console.log("改變後condition: " + mypostorders_condition);
		ajaxreq ();
		
	});//第一階段 end
	
	$("#mypostorders_condition .mypostorders_2stage").click(function(){
		
		mypostorders_condition=2;
		mypostorders_nowpage = 1;
		//console.log("改變後condition: " + mypostorders_condition);
		ajaxreq ();
		
	});//第二階段 end
	
	
	$("#mypostorders_condition .mypostorders_3stage").click(function(){
		
		mypostorders_condition=3;
		mypostorders_nowpage = 1;
		//console.log("改變後condition: " + mypostorders_condition);
		ajaxreq ();
		
	});//第三階段 end
	
	
	$("#mypostorders_condition .mypostorders_complete").click(function(){
		
		mypostorders_condition=4;
		mypostorders_nowpage = 1;
		//console.log("改變後condition: " + mypostorders_condition);
		ajaxreq ();
		
	});//已完成 end
	
	
	$("#mypostorders_condition .mypostorders_cancel").click(function(){
		
		mypostorders_condition=5;
		mypostorders_nowpage = 1;
		//console.log("改變後condition: " + mypostorders_condition);
		ajaxreq ();
		
	});//已取消 end
	
	
	//-----------------------------以下頁數
	
	$("#mypostorder_page .preppagebtn").click(function(){
		
		if( $(this).attr("disabled")==="disabled" ){
			return false;
		}

		mypostorders_nowpage--;
		//console.log("改變後nowpage: " + mypostorders_nowpage);
		ajaxreq ();
		
	});//上一頁 end
	
	
	$("#mypostorder_page .nextpagebtn").click(function(){
		if( $(this).attr("disabled")==="disabled" ){
			return false;
		}
		mypostorders_nowpage++; 
		//console.log("改變後nowpage: " + mypostorders_nowpage);
		ajaxreq ();
		
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
        class="u-custom-menu u-nav-container" id="mypostorders_sort">
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
                            <a class="u-button-style u-nav-link u-palette-3-light-3  new2old"
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


                    <div class="u-custom-menu u-nav-container" id="mypostorders_condition">
                        <ul class="u-nav u-unstyled u-nav-13">
                            <li class="u-nav-item"><a
                                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                    href="javascript:">訂單狀態</a>
                                <div class="u-nav-popup">
                                    <ul
                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-14">
                                         <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 mypostorders_all"
                                                href="javascript:">全部</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 mypostorders_1stage"
                                                href="javascript:">第一階段</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 mypostorders_2stage"
                                                href="javascript:">第二階段</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 mypostorders_3stage"
                                                href="javascript:">第三階段</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 mypostorders_complete"
                                                href="javascript:">已完成</a>
                                        </li>
                                        <li class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 mypostorders_cancel"
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
        class="u-container-layout u-container-layout-8" id="MyPostedOrdersPage">  <!-- 新增的元素，放在此區塊裡面 -->
        


<script>

$(document).ready(ajaxreq);

function ajaxreq (){

	//代做
	
	$.ajax({
        url: `<%= request.getContextPath() %>/backend/mypostedorders2/\${mypostorders_sort}/\${mypostorders_condition}/\${mypostorders_nowpage}`,  // url位置
        type: 'post',                   // post/get
        error: function (xhr) { $("#MyPostedOrdersPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
        success: function (data) {
        	
       	 $("#MyPostedOrdersPage").html(""); //demo

       	 
       		if(data.length !=0){
       			mypostorders_finalpage = data[0].final_page;
        	}
       		
       		//console.log("mypostorders_finalpage: " + mypostorders_finalpage);
          	
       		$("#mypostorder_page .finalpage").html(mypostorders_finalpage + "頁");
          	$("#mypostorder_page .nowpage").html(mypostorders_nowpage + "頁");
          	//設置頁數
          	
          	if(mypostorders_nowpage===1){
          		$("#mypostorder_page .preppagebtn").attr("disabled","disabled");
          	}else{
          		$("#mypostorder_page .preppagebtn").removeAttr("disabled");
          	} //設置上一頁按鈕特效
          	
          	if(mypostorders_nowpage===mypostorders_finalpage){
          		$("#mypostorder_page .nextpagebtn").attr("disabled","disabled");
          	}else{
          		$("#mypostorder_page .nextpagebtn").removeAttr("disabled");
          	} //設置下一頁按鈕特效
       	 
       	 
       	 
        
        var i;
        
        if(data[0]!=null){
  	  		
        	$("#mypostorder_page").removeAttr("style"); //若有資料，就解除頁數隱藏
        	
            for(i=0;i<data.length;i++){
           	 
            	$("#MyPostedOrdersPage").append(`                                                                        <div
                       class="u-container-style u-group u-palette-5-light-2 u-group-10" style="margin-bottom:50px">
                       <div class="u-container-layout u-container-layout-17">
                           <h5 class="u-text u-text-default u-text-font u-text-9">
                               <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-12" target="_blank"
                                   href="<%= request.getContextPath() %>/casepagemainpage.controller/\${ data[i].case_id }">\${ data[i].case_title }</a>
                           </h5>
                           <div class="u-container-style u-group u-shape-rectangle u-group-11">
                               <div class="u-container-layout u-container-layout-18">
                               <!-- 會員頁面 -->
                                   <div><b>接案者：</b><a href="<%= request.getContextPath() %>/memberpage/\${ data[i].bmember_id }" target="_blank">\${ data[i].bmember_name }</a></div>
                               </div>
                           </div>
                           <div
                               class="u-container-style u-group u-shape-rectangle u-group-12">
                               <div
                                   class="u-container-layout u-container-layout-19">
                                   
                               <div><b>訂單狀態：</b>\${ data[i].order_status }</div>
                                       
                               </div>
                           </div>
                           
                           <div
                               class="u-container-style u-group u-shape-rectangle u-group-13">
                               <div
                                   class="u-container-layout u-container-layout-20" style="margin-top:-20px;">
                               <div style="margin-left:7px"><b>成立時間：</b>\${ data[i].order_date }</div>
                                   
                               </div>
                               
                           </div>
                          
                           
                           <a href="<%= request.getContextPath() %>/backend/passthestage/\${ data[i].order_id }" 
                               class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-13">過稿</a>
                           <a href="<%= request.getContextPath() %>/backend/cancelorder/\${ data[i].order_id }"
                               class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-14">終止交易</a>
                           <a href="../../\${ data[i].order_id}/\${ data[i].case_id }/\${ data[i].bmember_id }"
                               class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-15" id="evaluation_a2b">給評價</a>
                           <a href="/\${ data[i].order_id }/\${ data[i].bmember_name }/\${ data[i].price }"
                               class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-16">檔案內容</a>
                       
                               <span class="u-icon u-icon-circle u-text-palette-1-base u-icon-6" data-href="../../\${ data[i].bmember_id }" title="匯款資訊">
                               
	                               <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.002 512.002" style="">
	                                   <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-03a9"></use>
	                               </svg>
	                               
	                               <svg class="u-svg-content" viewBox="0 0 512.002 512.002" x="0px" y="0px" id="svg-03a9" style="enable-background:new 0 0 512.002 512.002;">
	                                   <g>
	                                       <path style="fill:#88B337;"
	                                           d="M423.622,332.518c0.009-3.866-1.059-7.652-3.089-10.944l-19.681-31.683   c-2.453-4.872-3.724-10.255-3.707-15.709v-97.61c0-63.367-51.364-114.731-114.731-114.731h-52.953   c-63.367,0-114.731,51.364-114.731,114.731v97.61c0.018,5.454-1.253,10.838-3.707,15.709l-19.681,31.683   c-2.03,3.292-3.098,7.078-3.089,10.944l0,0c0.044,11.341,9.223,20.519,20.563,20.563h294.241   C414.399,353.037,423.578,343.858,423.622,332.518z">
	                                       </path>
	                                       <polygon
	                                           style="fill:#88B337;"
	                                           points="282.415,61.841 326.542,0.063 185.335,0.063 229.462,61.841 229.462,79.492 282.415,79.492     ">
	                                       </polygon>
	                                   </g>
	                                   <path style="fill:#6B962A;"
	                                       d="M420.533,321.574l-19.681-31.683c-2.453-4.872-3.724-10.255-3.707-15.709v-97.61  c0.062-25.559-8.419-50.411-24.093-70.604C349.488,235.791,266.529,310.631,188.6,353.081h214.459  c11.402,0.044,20.687-9.161,20.731-20.572c0.018-3.866-1.05-7.652-3.08-10.935H420.533z">
	                                   </path>
	                                   <path style="fill:#FFFFFF;"
	                                       d="M300.065,194.223v-5.648c-0.044-16.354-13.3-29.609-29.654-29.654h-5.648V141.27h-17.651v17.651  h-5.648c-16.38-0.053-29.698,13.176-29.751,29.556c-0.044,12.435,7.678,23.573,19.337,27.897l16.062,6.001v33.625h-5.648  c-6.628,0-12.003-5.375-12.003-12.003l0,0v-5.648h-17.651v5.648c0.044,16.354,13.3,29.609,29.654,29.654h28.948  c16.38,0.053,29.698-13.176,29.751-29.556c0.044-12.435-7.678-23.573-19.337-27.897l-16.062-6.001v-33.625h5.648  c6.628,0,12.003,5.375,12.003,12.003l0,0v5.648H300.065z M274.648,232.702c4.66,1.809,7.74,6.293,7.766,11.297  c0,6.628-5.375,12.003-12.003,12.003l0,0h-5.648v-27.006L274.648,232.702z M247.113,203.578l-9.885-3.707  c-4.66-1.809-7.74-6.293-7.766-11.297c0-6.628,5.375-12.003,12.003-12.003l0,0h5.648V203.578z">
	                                   </path>
	                                   <g>
	                                       <path style="fill:#FDB62F;"
	                                           d="M432.447,88.317L432.447,88.317c-3.001-18.11-17.192-32.301-35.302-35.302l0,0   c18.11-3.001,32.301-17.192,35.302-35.302l0,0c3.001,18.11,17.192,32.301,35.302,35.302l0,0   C449.639,56.016,435.448,70.208,432.447,88.317z">
	                                       </path>
	                                       <path style="fill:#FDB62F;"
	                                           d="M35.302,264.826L35.302,264.826C32.301,246.717,18.11,232.525,0,229.525l0,0   c18.11-3.001,32.301-17.192,35.302-35.302l0,0c3.001,18.11,17.192,32.301,35.302,35.302l0,0   C52.494,232.525,38.302,246.717,35.302,264.826z">
	                                       </path>
	                                   </g>
	                                   <path style="fill:#FEC9A3;"
	                                       d="M508.081,307.983c-7.246-12.197-22.814-16.512-35.302-9.796l-125.233,53.482  c-2.206,0.935-4.58,1.421-6.972,1.412h-155.24c-9.752,0-17.651-7.899-17.651-17.651c0-9.752,7.899-17.651,17.651-17.651h70.604  c29.248,0,52.953-23.705,52.953-52.953H162.035c-24.341,0.018-47.357,11.094-62.572,30.095l-55.336,66.985l62.308,114.201  l239.788-57.63c10.361-2.392,20.387-6.063,29.83-10.944l123.556-63.279C511.903,336.533,515.68,320.356,508.081,307.983z">
	                                   </path>
	                                   <path style="fill:#F7BB8F;"
	                                       d="M86.578,439.747l19.857,36.361l239.788-57.63c10.361-2.392,20.387-6.063,29.83-10.944l66.809-34.331  C331.837,407.181,184.452,428.362,86.578,439.747z">
	                                   </path>
	                                   <polygon style="fill:#4398D1;"
	                                       points="0,353.081 0,511.939 114.731,511.939 141.207,485.463 35.302,326.605 ">
	                                   </polygon>
	                                   <path style="fill:#3E8CC7;"
	                                       d="M0,511.939h114.731l26.476-26.476l-19.416-29.124C82.536,472.542,41.727,484.695,0,492.612V511.939z">
	                                   </path>
	                                   <circle style="fill:#D9D9D9;"
	                                       cx="79.429" cy="467.838"
	                                       r="17.651"></circle>
	                               </svg>
                               </span>
                               
                               
                               <div style="display:flex;margin-left:321px;margin-top:-40px;margin-right:180px;"><b>稿酬：</b>\${ data[i].price }</div>
                               
                       </div>
                   </div>
`); //append end
           	 
		
						
			//console.log( $("#MyPostedOrdersPage .u-btn-15 ").eq(i) ); //取得"給評價"的物件

           if(data[i].order_status != "已完成"){
					//$("#MyPostedOrdersPage .u-btn-15 ").eq(i).attr("style","visibility:hidden");
					$("#MyPostedOrdersPage .u-btn-15 ").eq(i).attr("style","visibility:hidden");
					
			}
			
			if(data[i].evaluation_status_a2b === "已評價"){
				//$("#MyPostedOrdersPage .u-btn-15 ").eq(i).attr("style","visibility:hidden");
				$("#MyPostedOrdersPage .u-btn-15 ").eq(i).attr("href","javascript:").attr("disabled","disabled").html("已評價");
				
			}
			
			if(data[i].order_status === "已完成" || data[i].order_status === "已取消"){
				
				$("#MyPostedOrdersPage .u-btn-13 ").eq(i).attr("style","visibility:hidden");
				$("#MyPostedOrdersPage .u-btn-14 ").eq(i).attr("style","visibility:hidden");
				
			}
		
			
           	 
            }//for end
            
			
        
        }else{
       	 
       	 $("#MyPostedOrdersPage").html("暫無資料"); 
       	 $("#mypostorder_page").attr("style","visibility:hidden");

        }//if end 
        
        
        
        
        //------過稿功能------
        
        $("#MyPostedOrdersPage .u-btn-13").click(function () {
       	 //console.log($(this).attr("href")); 
       	 
       	 $.ajax({
                url: $(this).attr("href"),                        // url位置
                type: 'post',                   // post/get
                error: function (xhr) { $("#MyPostedOrdersPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
                success: function (data) { ajaxreq ();
                
                
                
                }// end success
            }); //end ajax
       	
            $('html,body').animate({ scrollTop: 0 }, 'slow'); 
           return false;//把預設行為取消，若沒這行，按下上面的按鈕，會被捲到最上面，因為預設行為是超連結
       }); //end click
       
       
     //------終止交易------
        
      
     $("#MyPostedOrdersPage .u-btn-14").click(function () {
       	 //console.log($(this).attr("href")); 
       	 
       	 $.ajax({
                url: $(this).attr("href"),                        // url位置
                type: 'post',                   // post/get
                error: function (xhr) { $("#MyPostedOrdersPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
                success: function (data) { ajaxreq ();
                
                
                
                }// end success
            }); //end ajax
       	
            $('html,body').animate({ scrollTop: 0 }, 'slow'); 
           return false;//把預設行為取消，若沒這行，按下上面的按鈕，會被捲到最上面，因為預設行為是超連結
       }); //end click
       
       
       //---------------給評價的彈出框框
       
     
	 	$("#MyPostedOrdersPage .u-btn-15").click(function () {
	   	  	//console.log(123);
	   	 //console.log( typeof($("#evaluation_caseid").val() ));
	   	  	if( $(this).attr("href") != "javascript:" ){ //判斷評價紐是不是為已評價
	   	  		
	   	  	//當打開評價頁時，要做的事
	   	  	
	   	  	
	   	 	//$( "#dialog-evaluationa2b #evaluation_caseid" ).val( $(this).attr("href").split( "/" ) ); //把此訂單的CASEID抓出來
	   	  	
	   	 	$( "#dialog-evaluationa2b #evaluation_orderid" ).val( $(this).attr("href").split("/")[$(this).attr("href").split("/").length-3] ); //把此訂單的接案者ID抓出來
	   	 	$( "#dialog-evaluationa2b #evaluation_caseid" ).val( $(this).attr("href").split("/")[$(this).attr("href").split("/").length-2] ); //把此訂單的CASEID抓出來
	   	 	$( "#dialog-evaluationa2b #evaluation_bmember_id" ).val( $(this).attr("href").split("/")[$(this).attr("href").split("/").length-1] ); //把此訂單的接案者ID抓出來
	   	 	$( "#dialog-evaluationa2b #message" ).html(""); //把評價訊息清空
	   	 	$( "#dialog-evaluationa2b #message2" ).html("");
	   	 	reset(); //重置星星圖片
	   	 	dblclick(); //重置點擊的事件
	   	 	$( "#dialog-evaluationa2b #comments" ).val(""); //清空評語
	   	 	$( "#dialog-evaluationa2b" ).dialog( "open" ); //打開區塊
	   	 	
	        return false;//把預設行為取消，若沒這行，按下上面的按鈕，會被捲到最上面，因為預設行為是超連結
	   	  		
	   	  	}
	   	  	
	   	  	
	     }); // btn-15 click end
	
        
	     
	     //-------匯款資訊頁面跳出

	      $("#MyPostedOrdersPage .u-icon-6").click(function () {
       	 //console.log($(this).attr("data-href")); 
       	 paybmemberid =JSON.stringify({"pmemid":$(this).attr("data-href").split("/")[$(this).attr("data-href").split("/").length-1]}); //得到BMEMBER的ID
       	 //console.log( paybmemberid ); 
       	 
       	 	
       	 	$.ajax({
	             url: "<%= request.getContextPath() %>/backend/payInfo",                        // url位置
	             type: 'post',                   // post/get
	             contentType:'application/json',
				 dataType: 'json',
	             data:paybmemberid,
	             error: function (xhr) { $("#MyPostedOrdersPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
	             success: function (data) { 
	            	 //$("#dialog-payINFO").prepend(JSON.stringify(data));
	            	 //會員頁面
	            	 $("#payINFO_headshot").attr("href",`<%= request.getContextPath() %>/memberpage/\${data.member_id}`); //設定大頭照(SRC都是GET請求)
	            	 $("#payheadshot").attr("src",`headshotdownloader/\${data.member_id}`); //設定大頭照(SRC都是GET請求)
	            	 $("#paymembername").html(`\${ data.member_name }`);//設定會員名稱
	            	 $("#payINFO_row2").html(` 感謝您的錄用！匯款資訊如下：
	            		      <br>
	            		      <br>
	            		      <b>帳戶號碼：</b>\${ data.bank_account }
	            		      <br>
	            		      <br>
	            		      <p style="color: red;">※注意※<br>
	            		        請於雙方約定日內匯款，<br>並於匯款後告知 匯款日期/金額/轉帳帳戶末五碼 以供對帳用。</p>`);
	            
	            	 $( "#dialog-payINFO" ).dialog( "open" );
	            	 
	            	 
	            	 
	            	 
             }// end success
         }); //end ajax
       	 
       	 
           return false;//把預設行為取消，若沒這行，按下上面的按鈕，會被捲到最上面，因為預設行為是超連結
       }); //u-icon-6 end click
	     
	     
       
       
     //------檔案內容彈出框框------
       
       $("#MyPostedOrdersPage .u-btn-16").click(function () {
    	   

    	   
    	   //-------------------------
    	   
	           	 //console.log( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-1] ); 
    	    	 //console.log( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-2] ); 
    	    	 //console.log( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-3] ); 
 	    	 	
    	    	 var filecontentaorderid = $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-3];//取該筆訂單的ID
    	    	 var filecontentamymemid = <%= request.getSession().getAttribute("session_member_id") %>; //取得自己ID
     	    	 var filecontentaprice = $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-1]; //取總稿酬
     	    	 var filecontentastage1and2 = Math.floor(filecontentaprice/3); //算出階段稿酬
    	    	 var filecontentastage3 = filecontentaprice - (filecontentastage1and2 * 2);
    	   
     	    	 
    	    	 //設置欄位初始值
    	    	 //$("#demofilecontenta").remove(); //清掉DEMO資料
    	    	 $("#dialog-filecontenta .filecontentamembername").html( $( this ).attr("href").split("/")[$(this).attr("href").split("/").length-2] ); //重新給接案者名字
    	    	 $("#filecontentblocka").html(""); //清掉檔案內容
    	    	 $("#dialog-filecontenta .pricestage1").html(filecontentastage1and2+"(NTD)");//設置階段稿酬
    	    	 $("#dialog-filecontenta .pricestage2").html(filecontentastage1and2+"(NTD)");
    	    	 $("#dialog-filecontenta .pricestage3").html(filecontentastage3+"(NTD)");
    	    	 
    	    	 filecontentajstr = JSON.stringify({"order_id":filecontentaorderid,"bmember_id":filecontentamymemid}); //這裡的CONTROLLER，用跟B一樣的CONTROLL，所以參數應該是AMEM，改用B
  				 //console.log(filecontentajstr);
  				 
  				//執行AJAX 
  				//這裡的CONTROLLER，用跟B一樣的CONTROLL，所以參數應該是AMEM，改用B
  				$.ajax({
  					url: "<%= request.getContextPath() %>/backend/filecontentb", 
  					type: 'post',
  					contentType:'application/json',
  					dataType: 'json',
  					data:filecontentajstr,
  					success: function(data) {
  						//alert("連線成功!!");
  						//$("#dialog-filecontenta").prepend(`<div id="demofilecontenta">\${JSON.stringify(data)}</div>`); //DEMO用資料
  						
  						
  						//---------
  						
 						for( let j = 0 ; j<data.length ; j++ ){
  							
  							
  							$("#filecontentblocka").append(`  <div style="background-color: gainsboro; width:500px;border-radius:5px;padding: 10px;margin-top:20px;" class="filecontentb">
  								    <div>
  								      <b style="font-size: medium;">已收到成品\${j+1}：</b>
  								    </div>
  								    <div id="filecontentimga">
  								   <a href="productimg/\${data[j].product_name}" download="\${data[j].product_name}" title="請點擊下載">
  								   		<img src="productimg/\${data[j].product_name}" style="display:block; margin:auto; width:150px;" />
  								    </a>
  								   		</div>
  								   		<br>
  								    <b style="font-size: medium;">來自畫師的留言：</b>
  								      <textarea class="filecontentcommentsa" cols="" rows="4px" readonly style="resize:none;width:470px; ">\${data[j].painter_message}</textarea>
  								  </div>`); //append end
  							
  							
  							
  						}//for end
  
  						
  					},
  					error: function(XMLHttpRequest, textStatus, errorThrown) {
  						alert("發生錯誤");
  						$( "#dialog-filecontenta" ).dialog( "close" );
  						ajaxreq();
 						$('html,body').animate({ scrollTop: 0 }, 'slow'); 
  						
  					}
  				}); //ajax end
    	   
    	   //-----------------------
    	   
    	   
    	   
    	   
    	   $( "#dialog-filecontenta" ).dialog( "open" );
    	   
    	   
          return false;//把預設行為取消
      }); //u-btn-16 end click
       
      
       
        
        }// seccess end
      



});//ajax end
	
	
	
}//func end
     


</script>        




<script>
	//評價表單的JS
    //1.單擊後，再點其他圖片，文字方塊是否會出現反映(應該要不會)  2.連點三下會出錯否 3.雙擊後，OVER OUT CLICK 是否有事件忘記被添加回去
    //待改進:在第五張圖片單擊後，假設在第三張圖片雙擊解除，那時候呈現的會有五個超賽，而不是三個，必須把滑鼠移出去觸發out重置。
    
    
            var imageeva = document.querySelectorAll ("#idimg"); //取得所有ID為IDIMG的所有元素，放進NodeList裡面，成為元素集
            var msg = document.getElementById("message");
            var msg2 = document.getElementById("message2");
            var evt = document.getElementById("evaluation");
            //console.log(imageeva);
            //let sub = document.getElementById("#dialog-evaluationa2b submit");

            

            for(let i=0;i<imageeva.length;i++){
                imageeva[i].addEventListener("mouseover", mouseover );//事件繫結，滑鼠滑入
                
                /*
                做mouseover的功能，需要知道滑鼠一上去時，那張圖片到底是第幾張圖片，假如是移道第三張圖片，那麼1~3張圖片變超賽，所以要想辦法知道滑鼠移道的那張圖片的索引值，用E.TARGATE，可以GET到CLASS名，所以把CLASS名，命名成帶有數字規律。
    
                原本想法:在addEventListener後面的執行方法中，利用逆名韓式寫法，可以傳入引述，我傳入圖片索引數字以及圖片元素集image兩個引述，但用匿名韓式的做法，會無法在CLICK中做removeEventListener，所以放棄。
    
                
                */
                
                imageeva[i].addEventListener("mouseout",mouseout);//事件繫結，滑鼠滑出
                /*原本作法:
                document.getElementById("idimg").addEventListener("mouseover",mouseover);  
                document.getElementById("idimg").addEventListener("mouseout",mouseout);
                ......*N。
                有幾張圖片就要寫幾次，但用querySelectorAll的作法，就可以使用FOR回圈一一取得元素，
                也就是document.getElementById("idimg")在做的事情(利用ID取得元素)，querySelectorAll批次做好放進LIST裡面了。
                */  
    
                imageeva[i].addEventListener("click", click );//事件繫結，滑鼠典籍
    
                imageeva[i].addEventListener("dblclick", dblclick );//事件繫結，滑鼠雙籍
                
            }
    
            
    
                function mouseover( e ) { //滑鼠移入
                    // console.log(parseInt( e.target.className.substr(3) ));
                    //把CLASS名稱取為IMG0~4，e.target.className可以得到CLASS名稱，利用字串切割的方法，substr切調前面三個字，留下數字，再轉成INT，讓我們可以得到滑鼠一上去時該張圖片的索引值。
                    for(let i=0;i<=parseInt( e.target.className.substr(3) );i++){ //從第一章圖片到咦上去那張圖片為止，都變超賽
                        imageeva[i].src="../resources/images/super.jpg";
                    }
                    if((parseInt( e.target.className.substr(3) )+1)==1){
                      msg.innerHTML = `...差評`;
                    }else if((parseInt( e.target.className.substr(3) )+1)==2){
                      msg.innerHTML = `...普通`;
                    }else if((parseInt( e.target.className.substr(3) )+1)==3){
                      msg.innerHTML = `...好評`;
                    }
                    
                }
    
                
    
                function mouseout() { //滑鼠移出，移出都做一樣動作
                    reset(); //所有圖片解除超賽以及消除文字
                }
    
                function click(e){//滑鼠點集，解除事件綁定
                    for(let i=0;i<=2;i++){ 
                        imageeva[i].removeEventListener("mouseout",mouseout);
                        imageeva[i].removeEventListener("mouseover",mouseover);
                        imageeva[i].removeEventListener("click", click );
                    }
                    if((parseInt( e.target.className.substr(3) )+1)==1){
                      msg.innerHTML = `您的評價為`;
                      msg2.style.color = 'red';
                      msg2.innerHTML = `差評`;
                      evt.setAttribute("value","差評");
                      
                    }else if((parseInt( e.target.className.substr(3) )+1)==2){
                      msg.innerHTML = `您的評價為`;
                      msg2.style.color = 'gray';
                      msg2.innerHTML = `普通`;
                      evt.setAttribute("value","普通");
                    }else if((parseInt( e.target.className.substr(3) )+1)==3){
                      msg.innerHTML = `您的評價為`;
                      msg2.style.color = 'green';
                      msg2.innerHTML = `好評`;
                      evt.setAttribute("value","好評");
                    }
                }
    
                function dblclick(){//滑鼠雙集，重新加上事件綁定
                    for(let i=0;i<=2;i++){ 
                        imageeva[i].addEventListener("mouseout",mouseout);
                        imageeva[i].addEventListener("mouseover", mouseover );
                        imageeva[i].addEventListener("click", click );
                    }
                    // reset(); //雙及時，所有圖片都解除超賽，文字也消失
                    //不能在雙擊時把文字和圖片憶起重置，因為會造成連點三下時出問題，所以只消除文自就好
                    msg.innerHTML = `　`;//消除你得到了~~~的文字
                    msg2.innerHTML = `　`;//消除你得到了~~~的文字
                    evt.setAttribute("value","");
                }
    
                function reset(){
                    for(let i=0;i<=2;i++){
                        imageeva[i].src="../resources/images/normal.jpg";
                    }//所有圖片解除超賽
                    msg.innerHTML = `　`;//消除你得到了~~~的文字
                    msg2.innerHTML = `　`;//消除你得到了~~~的文字
                }
   
        </script>
        
        
        <script>
        //評價表單驗證
			function verification() {
				if($("#dialog-evaluationa2b #evaluation").val() == "" || $("#dialog-evaluationa2b #evaluation").val() == null) {
					alert('請選擇您的評價');
					return false;
				}
				
				
				
				//表單發送資料
				
				var mymemid = <%= request.getSession().getAttribute("session_member_id") %>;
				
				jsonstr = JSON.stringify({"case_id":$("#dialog-evaluationa2b #evaluation_caseid").val(),"order_id":$("#dialog-evaluationa2b #evaluation_orderid").val(),"member_id_s":mymemid,"evaluation_star":$("#dialog-evaluationa2b #evaluation").val(),"evaluation_content":$("#dialog-evaluationa2b #comments").val(),"member_id_r":$("#dialog-evaluationa2b #evaluation_bmember_id").val()});
				
				//alert(jsonstr);
				
				$.ajax({
					url: "<%= request.getContextPath() %>/backend/evaluationa2b",
					type: 'post',
					contentType:'application/json',
					dataType: 'json',
					data:jsonstr,
					success: function(data) {
						alert("評價成功!!");
						$( "#dialog-evaluationa2b" ).dialog( "close" );
						ajaxreq();
						$('html,body').animate({ scrollTop: 0 }, 'slow'); 
					},
					error: function(XMLHttpRequest, textStatus, errorThrown) {
						alert("發生錯誤");
						$( "#dialog-evaluationa2b" ).dialog( "close" );
						ajaxreq();
						$('html,body').animate({ scrollTop: 0 }, 'slow'); 
					}
				}); //ajax end
				
				
				return false;
			}
		</script>


<script>
//評價的INPUT隱藏

$("#evaluation").attr("style","display:none");
$("#evaluation_caseid").attr("style","display:none");
$("#evaluation_bmember_id").attr("style","display:none");
$("#evaluation_orderid").attr("style","display:none");


</script>



    </div>
</div>


     <!-- 以上空白區塊，以下頁數  -->

     <div
     class="u-container-style u-group u-white u-group-7" id="mypostorder_page">
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
 
<div id="dialog-evaluationa2b" title="給評價" class="mypostedorders_dialog">
  
  <div id="formblock" style="width:450px;">

            <div class="imgb centerblock">
                <img id="idimg" class="img0" src="../resources/../resources/../resources/images/normal.jpg"/>
                <img id="idimg" class="img1" src="../resources/../resources/images/normal.jpg"/>
                <img id="idimg" class="img2" src="../resources/../resources/images/normal.jpg"/>
            </div>
        
            <div id="hint" class="centerblock">
              單擊星星可評價，雙擊重置。
              <br>
            </div>
        
            <div class="centerblock">
            <div  id="message">　</div>
            <div  id="message2">　</div>
            </div>
            <hr>

            <form id="formeva" method="post" onsubmit="return verification()">
              <div class="centerblock">
                <input type="text" class="centerblock" style="width:100px" id="evaluation" name="evaluation">
                <input type="text" class="centerblock" style="width:100px" id="evaluation_caseid" title="caseid">
                <input type="text" class="centerblock" style="width:100px" id="evaluation_bmember_id" title="bmemberid">
                <input type="text" class="centerblock" style="width:100px" id="evaluation_orderid" title="orderid">
              </div>
              
              <div class="form-group">
              <br>
                <label class="centerblock" style="font-size: large;">評語</label>
                <div class="centerblock">
                  <textarea class="centerblock" cols="40" rows="5" id="comments" name="comments" style="resize:none;" ></textarea>

                </div>
              </div>
              <br>
              <div class="centerblock">
                <button type="submit" id="submit" class="btn btn-primary" style="width:150px">送出</button>
              </div>
              <br>
            </form>

      </div>
  
</div>



 <!-------以下匯款資訊--------->
 <div id="dialog-payINFO" title="接案方的匯款資訊" class="mypostedorders_dialog">
 
	 <div id="payINFO" style="width: 450px;" >
	
	  <!-- 框體1 -->
	    <div id="payINFO_row1" style="display:flex; justify-content: center;">
	      <div id="payINFO_row1-1" >
	
	        <a href="javascript:" id="payINFO_headshot" target="_blank"> 
	          <img src="" style="display:block; margin:auto; width:150px;" id="payheadshot" />
	        
	          <div style="text-align: center;">
	          	<b style="font-size:large;" id="paymembername"></b>
	          </div>
	        </a>
	        <div style="text-align: center;">(接案方)</div>
	
	      </div>
	      
	    </div>
	
	
	<hr>
	<br>
	<!-- 框體2 -->
	    <div id="payINFO_row2" style="text-align: center;">
	      
	     
	
	   
	      
	    </div>
	
	
	</div>
 </div>
 
 <!-- 以下檔案內容 -->
 
 <div id="dialog-filecontenta" title="檔案內容" class="mypostedorders_dialog">

<div style="width: 500px;" id="">
  <div class="centerblock">
    <div>

      <div class="centerblock" style="display:flex;justify-content:space-between;width:480px;">
        
        <div>
          <div style="text-align: center; font-size: medium;">第一階段</div>
          <div style="background-color: brown; border-radius:50%; text-align: center; color: white; font-size: medium;">
            <b>草稿</b>
          </div>
          <div style="text-align: center;" class="pricestage1">100NT</div>
        </div>
        
        
        
        <div>
          <div style="text-align: center;font-size: medium;">第二階段</div>
          <div style="background-color: brown; border-radius:50%; text-align: center;color: white;font-size: medium;">
            <b>線稿</b>
          </div>
          <div style="text-align: center;" class="pricestage2">200NT</div>
        </div>
        
        <div>
          <div style="text-align: center;font-size: medium;">第三階段</div>
          <div style="background-color: brown; border-radius:50%; text-align: center;color: white;font-size: medium;">
            <b>上色</b>
          </div>
          <div style="text-align: center;" class="pricestage3">300NT</div>
        </div>
        
        
      </div>
    </div>
    


  </div>
<br>


  <div style="width:480px;">
    
    <div style="font-size: medium; display:flex" class="filecontentamember">
      <div>
      	<b>畫師：</b>
      </div>
      <div class="filecontentamembername">
      </div>
      
      
    </div>
<br>

<hr>
<div id="filecontentblocka">

</div>

 </div>

</div>
</div>
 
 
 

</body>
</html>