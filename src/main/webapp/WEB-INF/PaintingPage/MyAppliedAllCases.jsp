<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<script>

var myappliedcase_sort = 1; //0=由舊到新、1=由新到舊 
var myappliedcase_nowpage = 1; //當前頁數
var myappliedcase_finalpage ; //總頁數

//console.log("原始sort: " + myappliedcase_sort);
//代做

$("#myapplied_allcase_sort .new2old").click(function(){
	
	myappliedcase_sort=1;
	myappliedcase_nowpage = 1;
	//console.log("改變後sort: " + myappliedcase_sort);
	ajaxreqmaac ();
	
});//由新到舊點下去 end


$("#myapplied_allcase_sort .old2new").click(function(){
	
	myappliedcase_sort=0;
	myappliedcase_nowpage = 1;
	//console.log("改變後sort: " + myappliedcase_sort);
	ajaxreqmaac ();
	
});//由舊到新點下去 end


//-----------------------------以下頁數

$("#myapplied_page .preppagebtn").click(function(){
	
	if( $(this).attr("disabled")==="disabled" ){
		return false;
	}

	myappliedcase_nowpage--;
	//console.log("改變後nowpage: " + myappliedcase_nowpage);
	ajaxreqmaac ();
	
});//上一頁 end


$("#myapplied_page .nextpagebtn").click(function(){
	if( $(this).attr("disabled")==="disabled" ){
		return false;
	}
	myappliedcase_nowpage++; 
	//console.log("改變後nowpage: " + myappliedcase_nowpage);
	ajaxreqmaac ();
	
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
        class="u-custom-menu u-nav-container" id="myapplied_allcase_sort">
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





                </nav>
            </div>
        </div>
    </div>
	</div>

    <!-- 以上選單，以下空白準備填入  -->

    <div
    class="u-container-style u-group u-white u-group-2">
    <div
        class="u-container-layout u-container-layout-8" id="MyAppliedAllCasesPage">  <!-- 新增的元素，放在此區塊裡面 -->
        
        
         <script>
                
         
         $(document).ready(ajaxreqmaac);
         
         function ajaxreqmaac (){
        	 
             $.ajax({ //代做
                 url: `<%= request.getContextPath() %>/backend/myappliedallcases2/\${myappliedcase_sort}/\${myappliedcase_nowpage}`,                        // url位置
                 type: 'get', 
                 error: function (xhr) { $("#MyAppliedAllCasesPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
                 success: function (data) { 
                	 $("#MyAppliedAllCasesPage").html("");//demo+重置
                	 //JSON.stringify(data)
                	 if(data.length !=0){
                		 myappliedcase_finalpage = data[0].final_page;
                 	}
                		
                	//console.log("myappliedcase_finalpage: " + myappliedcase_finalpage);
                   	
                	$("#myapplied_page .finalpage").html(myappliedcase_finalpage + "頁");
                   	$("#myapplied_page .nowpage").html(myappliedcase_nowpage + "頁");
                   	//設置頁數
                   	
                   	if(myappliedcase_nowpage===1){
                   		$("#myapplied_page .preppagebtn").attr("disabled","disabled");
                   	}else{
                   		$("#myapplied_page .preppagebtn").removeAttr("disabled");
                   	} //設置上一頁按鈕特效
                   	
                   	if(myappliedcase_nowpage===myappliedcase_finalpage){
                   		$("#myapplied_page .nextpagebtn").attr("disabled","disabled");
                   	}else{
                   		$("#myapplied_page .nextpagebtn").removeAttr("disabled");
                   	} //設置下一頁按鈕特效
                	 
                 
                 let i = 0; 
  					
                 if(data[0]!=null){
                	 
                	  $("#myapplied_page").removeAttr("style"); //若有資料，就解除頁數隱藏
                	  
                	 for(i=0;i<data.length;i++){
                		 
                		 $("#MyAppliedAllCasesPage").append(`                                                                        
                				 <div class="u-container-style u-group u-palette-5-light-2 u-group-17" >
                                 
                                 <div class="u-container-layout u-container-layout-26" >
                                 
                                 
                                     
                                     <h5 class="u-text u-text-default u-text-font u-text-16">
                                         
                                         <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-19" target="_blank"
                                             href="<%= request.getContextPath() %>/casepagemainpage.controller/\${ data[i].case_id }">\${ data[i].case_title }</a>
                                     </h5>
                                     
                                     
                                     <div
                                         class="u-container-style u-group u-shape-rectangle u-group-18">
                                         <div
                                             class="u-container-layout u-container-layout-27" >
                                                 
                                                 <div><b>應徵日期：</b>\${ data[i].apply_date }</div>
                                                 
                                         </div>
                                     </div>
                                     <div
                                         class="u-container-style u-group u-shape-rectangle u-group-19">
                                         <div
                                             class="u-container-layout u-container-layout-28" >
                                         	<div style="padding-left:30px"><b>期望稿酬：</b>\${ data[i].price_expected } (NTD)</div>
                                         </div>
                                     </div>
                                     <div
                                         class="u-container-style u-group u-shape-rectangle u-group-20">
                                         <div
                                             class="u-container-layout u-container-layout-29" >
                                         	<div><b>預估需時：</b>\${ data[i].case_time }天</div>
                                         </div>
                                     </div>
                                     <!-- 會員頁面 -->
                                     <div style="display:flex;margin-left:50px;margin-top:-50px;"><b>發案者：</b><a href="<%= request.getContextPath() %>/memberpage/\${ data[i].amember_id }" target="_blank">\${ data[i].amember_name }</a></div>
                                     
                                  
                                 </div>
                             </div>
						`); //append end
                		 
                		 
                	 }//end for
                	 
                	 
                	 
                 }else{
                	 
                	 $("#MyAppliedAllCasesPage").html("暫無資料"); 
                	 $("#myapplied_page").attr("style","visibility:hidden");
                	 
                 }//end if
                 
                 
                 
                 
                 
                 }// end success
             });//end ajax
        	 
        	 
        	 
        	 
         }//func end
                    

                    
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




</body>
</html>