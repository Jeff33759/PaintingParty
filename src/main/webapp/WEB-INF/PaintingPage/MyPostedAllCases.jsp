<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<<<<<<< HEAD
=======

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


</head>


>>>>>>> a2971d36c547dd5e37fb1db6ad7d4bba311377d9
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
        class="u-custom-menu u-nav-container">
        <ul
            class="u-nav u-unstyled u-nav-1">
            <li class="u-nav-item"><a
                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                    href="####">排序</a>
                <div
                    class="u-nav-popup">
                    <ul
                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">
                        <li
                            class="u-nav-item">
                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                href="####">由新到舊</a>
                        </li>
                        <li
                            class="u-nav-item">
                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                href="####">由舊到新</a>
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
                            href="####">排序</a>
                        <div
                            class="u-nav-popup">
                            <ul
                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4">
                                <li
                                    class="u-nav-item">
                                    <a class="u-button-style u-nav-link"
                                        href="####">由新到舊</a>
                                </li>
                                <li
                                    class="u-nav-item">
                                    <a class="u-button-style u-nav-link"
                                        href="####">由舊到新</a>
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
                        class="u-custom-menu u-nav-container">
                        <ul
                            class="u-nav u-unstyled u-nav-5">
                            <li class="u-nav-item"><a
                                    class="u-border-2 u-border-grey-75 u-button-style u-hover-palette-5-light-1 u-nav-link"
                                    href="####">案件狀態</a>
                                <div
                                    class="u-nav-popup">
                                    <ul
                                        class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-6">
                                        <li
                                            class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                href="####">上架中</a>
                                        </li>
                                        <li
                                            class="u-nav-item">
                                            <a class="u-button-style u-nav-link u-palette-3-light-3"
                                                href="####">已下架</a>
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
                                            href="####">案件狀態</a>
                                        <div
                                            class="u-nav-popup">
                                            <ul
                                                class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-8">
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="####">上架中</a>
                                                </li>
                                                <li
                                                    class="u-nav-item">
                                                    <a class="u-button-style u-nav-link"
                                                        href="####">已下架</a>
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
        
        
<<<<<<< HEAD
        
        
        
        
                    <script>
                
                    
                    $.ajax({
                        url: `<%= request.getContextPath() %>/backend/mypostedallcases2`,                        // url位置
                        type: 'post',                   // post/get
                        error: function (xhr) { $("#MyPostedAllCasesPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
                        success: function (data) {
                        //----------------------------------
	                    var i;
	  
=======
               <script>
               
               $(document).ready(ajaxreqc);

               function ajaxreqc (){
               	
               	//-------
               	
               	$.ajax({
                       url: `<%= request.getContextPath() %>/backend/mypostedallcases2`,                        // url位置
                       type: 'post',                   // post/get
                       error: function (xhr) { $("#MyPostedAllCasesPage").html('請求失敗，請重新整理'); },      // 錯誤後執行的函數
                       success: function (data) {
                      	 $("#MyPostedAllCasesPage").html(JSON.stringify(data));

                       //----------------------------------
                    var i;
  					
                       if(data[0]!=null){
                       	
>>>>>>> a2971d36c547dd5e37fb1db6ad7d4bba311377d9
	                    for(i=0;i<data.length;i++){
	                    	
	                    	$("#MyPostedAllCasesPage").append(`                                                                        
	                    			<div class="u-container-style u-group u-palette-5-light-2 u-group-3" style="margin-bottom:50px">
                                    	<div class="u-container-layout u-container-layout-9">
                                        
                                        <h5 class="u-text u-text-default u-text-font u-text-2">
                                            <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-8"
                                                href="####">\${ data[i].case_title }</a>
                                        </h5>
                                        
                                        
                                       
                                        
                                        
                                        <div class="u-container-style u-group u-shape-rectangle u-group-4">
                                            
                                            <div class="u-container-layout u-container-layout-10" >
                                                
<<<<<<< HEAD
                                                <div style="padding-left:30px"><b>稿酬預算：</b>\${ data[i].price_min }~\${ data[i].price_max }元</div>
=======
                                                <div style="padding-left:10px"><b>稿酬預算：</b>\${ data[i].price_min }~\${ data[i].price_max } (NTD)</div>
>>>>>>> a2971d36c547dd5e37fb1db6ad7d4bba311377d9
                                                
                                                
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
<<<<<<< HEAD
                                            target="_self">編輯案件</a>
=======
                                            target="_self">管理案件</a>
>>>>>>> a2971d36c547dd5e37fb1db6ad7d4bba311377d9
                                        <div
                                            class="u-container-style u-group u-shape-rectangle u-group-6">
                                            <div
                                                class="u-container-layout u-container-layout-12">
<<<<<<< HEAD
                                            	<div><b>案件狀態：</b>\${ data[i].case_status }</div>
=======
                                            	<div style="margin-left:-20px;"><b>案件狀態：</b>\${ data[i].case_status }</div>
>>>>>>> a2971d36c547dd5e37fb1db6ad7d4bba311377d9
                                                
                                            </div>
                                        </div>
                                        
                          
                                        
                                        
                                    </div>
                                </div>`); //append end
	                    	
	                    	
	                    }//for end
<<<<<<< HEAD
                        //----------------------------------
	                    
                        }// seccess end
                    
                    }); // ajax end
                    
                    
                </script>
=======
                       }else{
                       	
                       	$("#MyPostedAllCasesPage").html("暫無資料"); 
                       	
                       	
                       }//if end
                       
                       
                       //------------------打開管理案件的框框---------------- 代做
                       
                       
                       
                       $("#MyPostedAllCasesPage .u-btn-9").click(function () {
        	   	  		
                    	//console.log($(this).attr("href").split("/")[$(this).attr("href").split("/").length-1]);
        	   	  		
        	   	  	    //當打開管理案件頁時，要做的事(清空與設值)
        	   	  	    
        	   	  		$("#democasemanagepage").remove(); //清掉DEMO字串
        	   	  	    $("#casemanage_caseid").val($(this).attr("href").split("/")[$(this).attr("href").split("/").length-1]);//取得案件ID放進INPUT
        	   	  		$( "#dialog-casemanagepage .casetitle" ).html(""); //清空案件標題的文字
        	   	  		$( "#dialog-casemanagepage #casedate" ).html(""); //清空發布日期
        	   	  		$( "#dialog-casemanagepage #casetag" ).html(""); //清空標籤
        	   	  		$( "#dialog-casemanagepage #budget" ).html(""); //清空預算區間
        	   	  	    //以上固定內容設置
        	   	  		
                    	let casemanage_caseid = $("#casemanage_caseid").val();
        	   	  		
        	   	  		
        	   	  	    
        	   	  	$.ajax({
     					url: `<%= request.getContextPath() %>/backend/casebackstage/\${casemanage_caseid}`,
     					type: 'get',
     					dataType: 'json',
     					success: function(data2) { //data2取值，記得從x+1開始取，跳過第0筆資料
     						//alert("連線成功!!");
     						console.log(JSON.stringify(data2));
     						$("#dialog-casemanagepage").prepend(`<div id="democasemanagepage">\${JSON.stringify(data2)}</div>`); //DEMO用資料
     						$( "#dialog-casemanagepage .casetitle" ).html(`\${data2[0].case_title}`); //清空案件標題的文字
            	   	  		$( "#dialog-casemanagepage #casedate" ).html(`\${data2[0].upload_date}`); //清空發布日期
            	   	  		$( "#dialog-casemanagepage #casetag" ).html(`\${data2[0].case_tag}`); //清空標籤
            	   	  		$( "#dialog-casemanagepage #budget" ).html(`\${data2[0].price_min}~\${data2[0].price_max} (NTD)`); //清空預算區間
     						//以上設置固定值
     						
     						
     						
     					},
     					error: function(XMLHttpRequest, textStatus, errorThrown) {
     						alert("發生錯誤");
     						
     					}
     				}); //ajax end
        	   	  			
        	   	  		
        	   	  		
        	   	  		
        	   	  		
        	   	  		
        	   	  		
        	   	 			$( "#dialog-casemanagepage" ).dialog( "open" ); //打開區塊
        	        		return false;//把預設行為取消，若沒這行，按下上面的按鈕，會被捲到最上面，因為預設行為是超連結
        	   	  		
        	   	  	
        	   	  	
        	   	  	
        	     		}); // u-btn-9 click end
                       
                       
        	     
        	     
                       
                    
                       }// seccess end
                   
                   }); // ajax end
               	
               	//----------
               	
               }
           
               
               
               
               
           </script>
>>>>>>> a2971d36c547dd5e37fb1db6ad7d4bba311377d9
        

    </div>
</div>


     <!-- 以上空白區塊，以下頁數  -->

     <div
     class="u-container-style u-group u-white u-group-7">
     <div
         class="u-container-layout u-container-layout-13">
         <a href="####"
             class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-10">上一頁</a>
         <p class="u-text u-text-default u-text-6">X頁</p>
         <p class="u-text u-text-default u-text-7">／</p>
         <p class="u-text u-text-default u-text-8">X頁</p>
         <a href="####"
             class="u-active-palette-1-light-1 u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius-6 u-btn-11">下一頁</a>
     </div>
 </div>

 <!-------結束--------->


<<<<<<< HEAD
=======

 <!----------------以下管理案件 代做----------->
 <div id="dialog-casemanagepage" title="管理案件">
 
   <div id="casemanagepage" style="width:650px;padding: 20px;">

        <input type="text" name="casemanage_caseid" id="casemanage_caseid" />            

            <div id="caseinfo" style="display:flex;justify-content:space-between">

              <div>
                <a href="####"><div class="casetitle" style="font-size:large; color:rgb(103, 175, 243);"><b>案件標題</b></div></a>
                
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
                <button class="btn btn-primary">下架案件</button>
              </div>


            </div>
            
            
            <br>
            <br>

            <div id="whoapply" >
              <div style="text-align: center;font-size: large; background-color:rgb(103, 175, 243); color: white;">誰來應徵此案件</div>
              
              <!-- 替換的  -->
              <div style="margin:30px 10px 2px 10px;box-shadow:3px 3px 5px ; " class="applymember" >

                <div class="bmemberinfo" style="display: flex;">

                  <div style="width: 30%;">

                    <div id="casemanage_col" style="display:flex; justify-content: center;margin: 10px;">
                      <div id="casemanage_col-1" >
                
                        <a href="####" id="casemanage_headshot" target="_blank"> 
                          <img src="../resources/images/Patrick.png" style="display:block; margin:auto; height:100px;" class="headshotimg" />
                        
                          <div style="text-align: center">
                          <b style="font-size:medium;" id="casemanage_bmembername">會員暱稱</b></div>
                        </a>
                
                      </div>
                      
                    </div>

                  </div>


                  <div id="applyinfo" style="margin-top:20px ;width:50%;">

                    <div style="display: flex;font-size: 115%;">
                      <div><b>期望稿酬：</b></div>
                      <div class="applybuget">4000~8000(NTD)</div>
                    </div>

                    <div style="display: flex;font-size: 115%;">
                      <div><b>預估需時：</b></div>
                      <div class="applydays">123(日)</div>
                    </div>

                    <div style="display: flex;font-size: 115%;">
                      <div><b>應徵日期：</b></div>
                      <div class="applydate">2021-08-19</div>
                    </div>

                  </div>

  
                  
                  <div style="width: 20%;">
                    <button id="caseoff" style="margin-top:50px;margin-left:10px ;" class="btn btn-primary">錄用畫師</button>
                  </div>


                </div>

                
              
              </div>
              <!-- 替換的  -->


            </div>


          </div>

</div>
          <!--------------------------->


>>>>>>> a2971d36c547dd5e37fb1db6ad7d4bba311377d9
</body>

</html>