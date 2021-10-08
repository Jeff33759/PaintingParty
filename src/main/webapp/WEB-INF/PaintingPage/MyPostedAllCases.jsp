<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<head>

<script>

$(function() {
    $( "#dialog-casemanagepage" ).dialog({
      autoOpen: false,
      width: 700,
      modal: true
    });
  });

</script>


	<script>
	//-----------排序與條件-----------------
	var myposted_sort = 1; //0=由舊到新、1=由新到舊 
	var myposted_condition = 0; //0=全部、1=上架、2=下架
	var myposted_nowpage = 1; //當前頁數
	var myposted_finalpage ; //總頁數
	
	//console.log("原始sort: " + myposted_sort);
	//console.log("原始condition: " + myposted_condition);
	
	//代做
	$("#mypostedallcasesort .new2old").click(function(){
		
		myposted_sort=1;
		myposted_nowpage = 1;
		//console.log("改變後sort: " + myposted_sort);
		ajaxreqc();
		
	});//由新到舊點下去 end
	
	
	$("#mypostedallcasesort .old2new").click(function(){
		
		myposted_sort=0;
		myposted_nowpage = 1;
		//console.log("改變後sort: " + myposted_sort);
		ajaxreqc();
		
	});//由舊到新點下去 end
	
	//--------------------以上排序，以下條件--------------
	
	
	$("#mypostedallcasecondition .mypostall").click(function(){
		
		myposted_condition=0;
		myposted_nowpage = 1;
		//console.log("改變後condition: " + myposted_condition);
		ajaxreqc();
		
	});//全部 end

	$("#mypostedallcasecondition .onquest").click(function(){
		
		myposted_condition=1;
		myposted_nowpage = 1;
		//console.log("改變後condition: " + myposted_condition);
		ajaxreqc();
		
	});//上架中 end
	
	$("#mypostedallcasecondition .notonquest").click(function(){
		
		myposted_condition=2;
		myposted_nowpage = 1;
		//console.log("改變後condition: " + myposted_condition);
		ajaxreqc();
		
	});//已下架 end
	
	
	//-----------------------------以下頁數
	
	$("#myposted_page .preppagebtn").click(function(){
		
		if( $(this).attr("disabled")==="disabled" ){
			return false;
		}

		myposted_nowpage--;
		//console.log("改變後nowpage: " + myposted_nowpage);
		ajaxreqc();
		
	});//上一頁 end
	
	
	$("#myposted_page .nextpagebtn").click(function(){
		if( $(this).attr("disabled")==="disabled" ){
			return false;
		}
		myposted_nowpage++; 
		//console.log("改變後nowpage: " + myposted_nowpage);
		ajaxreqc();
		
	});//下一頁 end

	</script>



</head>


<html>


<body>

    <!-- ----選單排序  -->

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
        class="u-custom-menu u-nav-container" id="mypostedallcasesort">
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
                    <div
                        class="u-custom-menu u-nav-container" id="mypostedallcasecondition">
                        <ul
                            class="u-nav u-unstyled u-nav-5">
                            <li class="u-nav-item"><a
                                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                    href="javascript:">案件狀態</a>
                                <div
                                    class="u-nav-popup">
                                    <ul
                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-6">
                                        <li
                                            class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 mypostall"
                                                href="javascript:">全部</a>
                                        </li>
                                        <li
                                            class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 onquest"
                                                href="javascript:">上架中</a>
                                        </li>
                                        <li
                                            class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3 notonquest"
                                                href="javascript:">已下架</a>
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
                                    class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-7">
                                    <li
                                        class="u-nav-item">
                                        <a class="u-button-style u-nav-link"
                                            href="javascript:">案件狀態</a>
                                        <div
                                            class="u-nav-popup">
                                            <ul
                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-8">
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="javascript:">上架中</a>
                                                </li>
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="javascript:">已下架</a>
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
        class="u-container-layout u-container-layout-8" id="MyPostedAllCasesPage">  <!-- 新增的元素，放在此區塊裡面 -->
        
        
        
               <script>
               //代做
               $(document).ready(ajaxreqc);

               function ajaxreqc (){
               	
               	//-------
               	
               	$.ajax({
                       url: `<%= request.getContextPath() %>/backend/mypostedallcases2/\${myposted_sort}/\${myposted_condition}/\${myposted_nowpage}`,  // url位置
                       type: 'post',                  
                       error: function (xhr) { $("#MyPostedAllCasesPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
                       success: function (data) {
                      	$("#MyPostedAllCasesPage").html(""); //DEMO用 改
                      	//JSON.stringify(data)
                      	if(data.length !=0){
                      	myposted_finalpage = data[0].final_page;
                    	}
                      	$("#myposted_page .finalpage").html(myposted_finalpage + "頁");
                      	$("#myposted_page .nowpage").html(myposted_nowpage + "頁");
                      	//設置頁數
                      	
                      	if(myposted_nowpage===1){
                      		$("#myposted_page .preppagebtn").attr("disabled","disabled");
                      	}else{
                      		$("#myposted_page .preppagebtn").removeAttr("disabled");
                      	} //設置上一頁按鈕特效
                      	
                      	if(myposted_nowpage===myposted_finalpage){
                      		$("#myposted_page .nextpagebtn").attr("disabled","disabled");
                      	}else{
                      		$("#myposted_page .nextpagebtn").removeAttr("disabled");
                      	} //設置下一頁按鈕特效
                      	
                      	

                       //----------------------------------
                    var i;
  					
                       if(data[0]!=null){
                    	   
                    	   $("#myposted_page").removeAttr("style"); //若有資料，就解除頁數隱藏
                       	
	                    for(i=0;i<data.length;i++){
	                    	
	                    	$("#MyPostedAllCasesPage").append(`                                                                        
	                    			<div class="u-container-style u-group u-palette-5-light-2 u-group-3" style="margin-bottom:50px">
                                    	<div class="u-container-layout u-container-layout-9">
                                        
                                        <h5 class="u-text u-text-default u-text-font u-text-2">
                                            <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-8" target="_blank"
                                                href="<%= request.getContextPath() %>/casepagemainpage.controller/\${data[i].case_id}">\${ data[i].case_title }</a>
                                        </h5>
                                        
                                        
                                       
                                        
                                        
                                        <div class="u-container-style u-group u-shape-rectangle u-group-4">
                                            
                                            <div class="u-container-layout u-container-layout-10" >
                                                
                                                <div style="padding-left:10px"><b>稿酬預算：</b>\${ data[i].price_min }~\${ data[i].price_max } (NTD)</div>
                                                
                                                
                                            </div>
                                            
                                        </div>
                                        <div
                                            class="u-container-style u-group u-shape-rectangle u-group-5">
                                            <div
                                                class="u-container-layout u-container-layout-11">
                                            		<div><b>發布日期：</b>\${ data[i].upload_date }</div>
                                            </div>
                                        </div>
                                        <a href="<%= request.getContextPath() %>/backend/casebackstage/\${ data[i].case_id }"
                                            data-page-id="823408358"
                                            class="u-active-palette-1-light-1 u-border-0 u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-50 u-btn-9"
                                            target="_self">管理案件</a>
                                        <div
                                            class="u-container-style u-group u-shape-rectangle u-group-6">
                                            <div
                                                class="u-container-layout u-container-layout-12">
                                            	<div style="margin-left:-20px;"><b>案件狀態：</b>\${ data[i].case_status }</div>
                                                
                                            </div>
                                        </div>
                                        
                          
                                        
                                        
                                    </div>
                                </div>`); //append end
                                
                                
                                
                            //判斷案件，若上架，就給按管理案件，若下架，就不給按
                            if(data[i].case_status === "下架"){
	            				//$("#MyPostedOrdersPage .u-btn-15 ").eq(i).attr("style","visibility:hidden");
	            				$("#MyPostedAllCasesPage .u-btn-9 ").eq(i).attr("href","javascript:").attr("disabled","disabled").html("已下架");
	            				
	            			}
	                    	
	                    	
	                    }//for end
                       }else{
                       	
                       	$("#MyPostedAllCasesPage").html("暫無資料"); 
                       	$("#myposted_page").attr("style","visibility:hidden");
                       	
                       	
                       }//if end
                       
                       
                       //------------------打開管理案件的框框---------------- 
                       
                       $("#MyPostedAllCasesPage .u-btn-9").click(function () { //按下管理案件
                    	   
                    	   if( $(this).attr("disabled") ==='disabled' ){ //如果是下架狀態，管理案件下去就不反應
                    		   
                    		   return false;
                    		   
                    	   }
        	   	  		
                    	//console.log($(this).attr("href").split("/")[$(this).attr("href").split("/").length-1]);
                    	
        	   	  		//當打開管理案件頁時，要做的事(清空與設值)
        	   	  		$("#casemanage_caseid").val($(this).attr("href").split("/")[$(this).attr("href").split("/").length-1]);//取得案件ID放進INPUT
    
							whoapplyinfo(); //可變動區域設置
 
        	   	 			$( "#dialog-casemanagepage" ).dialog( "open" ); //打開區塊
        	        		return false;//把預設行為取消，若沒這行，按下上面的按鈕，會被捲到最上面，因為預設行為是超連結
        	   	  		
        	   	  	
        	   	  	
        	     		}); // u-btn-9 click end
                       
                    
                       }// seccess end
                   
                   }); // ajax end
               	
               	//----------
               	
               }
           
               
               
               
               
           </script>
        

    </div>
</div>








     <!-- 以上空白區塊，以下頁數  -->

     <div
     class="u-container-style u-group u-white u-group-7" id="myposted_page">
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



 <!----------------以下管理案件 ----------->
 <div id="dialog-casemanagepage" title="管理案件" class="mypostedallcases_dialog">
 
   <div id="casemanagepage" style="width:650px;padding: 20px;">

        <input type="text" name="casemanage_caseid" id="casemanage_caseid" style="display:none;"/>            

            <div id="caseinfo" style="display:flex;justify-content:space-between">

              <div>
                <a id="casepagelink" href="javascript:" target="_blank"><div class="casetitle" style="font-size:large; color:rgb(103, 175, 243);"><b>案件標題</b></div></a>
                
                <div style="display: flex;">
                  <div><b>發布日期：</b></div>
                  <div id="casedate">2020-8-20</div>
                </div>
              </div>

              
              <div>
                <div style="display: flex; margin-top:9px ;">
                  <div><b>案件分類：</b></div>
                  <div id="casetag">插畫、日系</div>
                </div>

                <div style="display: flex;">
                  <div><b>預算區間：</b></div>
                  <div id="budget">200~800(NTD)</div>
                </div>
              </div>

              <div style="margin-top:15px ;">
                <button id="offthiscase" class="btn btn-primary">下架案件</button>
              </div>


            </div>
            
            
            <br>
            <br>

            <div id="whoapply" >
              <div style="text-align: center;font-size: large; background-color:rgb(103, 175, 243); color: white;">誰來應徵此案件</div>
              
              <!-- 替換的  -->

              <!-- 替換的  -->


            </div>


          </div>

</div>
          <!--------------------------->

          
  <script>
   
  function whoapplyinfo(){ //當按下管理案件時要做的事
	  
	  
	  		//$("#democasemanagepage").remove(); //清掉DEMO字串
   	  	    
   	  		$( "#dialog-casemanagepage .casetitle" ).html(""); //清空案件標題的文字
   	  		$( "#dialog-casemanagepage #casedate" ).html(""); //清空發布日期
   	  		$( "#dialog-casemanagepage #casetag" ).html(""); //清空標籤
   	  		$( "#dialog-casemanagepage #budget" ).html(""); //清空預算區間
   	  	    //以上固定內容設置
   	  		
   	  		$( "#whoapply .applymember" ).remove(); //清空變動區塊
        	let casemanage_caseid = $("#casemanage_caseid").val(); 
        	$( "#casepagelink" ).attr("href",`<%= request.getContextPath() %>/casepagemainpage.controller/\${casemanage_caseid}`);
   	  		
   	  		
   	  		
   	  	  //~~~~~~~~~ 
   	  	  
   	  	  
   	  	  
   	  	  
   	  	$.ajax({
				url: `<%= request.getContextPath() %>/backend/casebackstage/\${casemanage_caseid}`,
				type: 'post',
				dataType: 'json',
				success: function(data2) { //data2取值，記得從x+1開始取，跳過第0筆資料
					//alert("連線成功!!");
					//console.log(JSON.stringify(data2));
					//$("#dialog-casemanagepage").prepend(`<div id="democasemanagepage">\${JSON.stringify(data2)}</div>`); //DEMO用資料 改
					$( "#dialog-casemanagepage .casetitle" ).html(`\${data2[0].case_title}`); //清空案件標題的文字
	   	  		$( "#dialog-casemanagepage #casedate" ).html(`\${data2[0].upload_date}`); //清空發布日期
	   	  		$( "#dialog-casemanagepage #casetag" ).html(`\${data2[0].case_tag}`); //清空標籤
	   	  		$( "#dialog-casemanagepage #budget" ).html(`\${data2[0].price_min}~\${data2[0].price_max} (NTD)`); //清空預算區間
					//以上設置固定值
					
					//變動區塊APPEND
					if(data2.length>1){ //因為預設一定會有地靈筆資料，所以從第一筆開始是變動區塊
						
						
						for( let x=1 ; x<data2.length ; x++ ){ //因為預設一定會有地靈筆資料，所以從第一筆開始是變動區塊
							$("#whoapply").append(`
									
						              <div style="margin:30px 10px 2px 10px;box-shadow:3px 3px 5px ; " class="applymember" >

					                <div class="bmemberinfo" style="display: flex;">

					                  <div style="width: 30%;">

					                    <div id="casemanage_col" style="display:flex; justify-content: center;margin: 10px;">
					                      <div id="casemanage_col-1" >
					                <!-- 會員頁面 -->
					                        <a href="<%= request.getContextPath() %>/memberpage/\${ data2[x].bmember_id }" id="casemanage_headshot" target="_blank"> 
					                          <img src="<%= request.getContextPath() %>/backend/headshotdownloader/\${ data2[x].bmember_id }" style="display:block; margin:auto; height:100px;" class="headshotimg" />
					                        
					                          <div style="text-align: center">
					                          <b style="font-size:medium;" id="casemanage_bmembername">\${ data2[x].bmember_name }</b></div>
					                        </a>
					                
					                      </div>
					                      
					                    </div>

					                  </div>


					                  <div id="applyinfo" style="margin-top:20px ;width:50%;">

					                    <div style="display: flex;font-size: 115%;">
					                      <div><b>期望稿酬：</b></div>
					                      <div class="applybuget">\${ data2[x].price_expected }(NTD)</div>
					                    </div>

					                    <div style="display: flex;font-size: 115%;">
					                      <div><b>預估需時：</b></div>
					                      <div class="applydays">\${ data2[x].case_time }(日)</div>
					                    </div>

					                    <div style="display: flex;font-size: 115%;">
					                      <div><b>應徵日期：</b></div>
					                      <div class="applydate">\${ data2[x].apply_date }</div>
					                    </div>

					                  </div>

					  
					                  
					                  <div style="width: 20%;">
					                  <a class="hire" href="<%= request.getContextPath() %>/\${data2[x].bmember_id}/\${data2[x].case_id}/\${data2[x].price_expected}">
					                    <button style="margin-top:50px;margin-left:10px ;" class="btn btn-primary btn-hire">錄用畫師</button>
					                  </a>
					                  </div>


					                </div>

					                
					              
					              </div>
									
									`);//append end
							
							if(data2[x].apply_status === "是"){
								
	           					$("#whoapply .hire ").eq(x-1).attr("href","javascript:");
	           				 	$("#whoapply .btn-hire ").eq(x-1).attr("disabled","disabled").attr("style","background-color:gray;margin-top:50px;margin-left:10px ;").html("已錄用")  
	           				
	           				}
									
									
							
									
									
						}// for end
						
						
     	     		//錄用畫師按鈕預設行為取消 
	           			$("#whoapply .hire").click(function(){ //當按下錄取畫師要做的事
	           			
	           			let hireinfolist = $(this).attr("href").split("/");
	           			//console.log(hireinfolist.length);
						let hirebmemid = hireinfolist[hireinfolist.length-3];
						let hirecase_id = hireinfolist[hireinfolist.length-2];
						let hireexpected = hireinfolist[hireinfolist.length-1];
	           				
	           				
						$.ajax({
	     					url: `<%= request.getContextPath() %>/backend/hire/\${ hirecase_id }/\${ hirebmemid }/\${ hireexpected }`,
	     					type: 'post',
	     					success: function(data) {
	     						alert("成功錄用!");
	     						whoapplyinfo();
	     						
	     						
	     						//---------
	     					
	     
	     						
	     					}, //錄用畫師 success end
	     					error: function(XMLHttpRequest, textStatus, errorThrown) {
	     						alert("發生錯誤");
	     						
	     						
	     					} //錄用畫師 error end
	     				}); //錄用畫師 ajax end
						
						
	           				
	           				//---------
	           				
	           	return false; //取消錄用畫師這顆按鈕的預設行為
	           				
	           				
	           	});
						
						
						
						
					}//if end
					
					
					
				}, //data2 success end
				
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					alert("發生錯誤");
					
				}
			}); //ajax end
	  
	  
	  
	  
	  
  }
  
  
  </script>
  
  <script>
  
  $("#offthiscase").click(function (){ //下架案件被點下去
	  
	  let offcase_id = $("#casemanage_caseid").val(); 
	  
	  $.ajax({
			url: `<%= request.getContextPath() %>/backend/offthiscase/\${ offcase_id }`,
			type: 'post',
			success: function() {
				alert("案件已成功下架!");
				$( "#dialog-casemanagepage" ).dialog( "close" );
				ajaxreqc();
				$('html,body').animate({ scrollTop: 0 }, 'slow'); 
				
				
				//---------
			

				
			}, //下架案件 success end
			error: function(XMLHttpRequest, textStatus, errorThrown) {
				alert("發生錯誤");
				
				
			} //下架案件 error end
		}); //下架案件 ajax end
	  
	  
	  
	  
  }); //offthiscase click end
  
  
  
  
  </script>
          
          
          


</body>

</html>