	<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="zh-Hant">

<div>

	<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>CaseList</title>
<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/CaseList.css" media="screen">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css">
<script class="u-script" type="text/javascript"
	src="resources/js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="resources/js/nicepage.js" defer=""></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
<meta name="generator" content="Nicepage 3.23.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link rel="stylesheet" href="resources/css//bootstrap.min.css">
<script src="resources/js/bootstrap.min.js"></script>


<script type="application/ld+json">
      {
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "TestDemo",
        "logo": "images/LOGO-TEST-22.png"
      }
    </script>
<script type="text/javascript">
	var indexPage = 1;
	var tagAry = [0,0];
	var priceRan = [0,0];
	var newOld = "new";
	
	$(document).ready(function() {
		load(indexPage);
		
		$('#type').change(function(){
			var s = $('#type').val();
			tagAry.push(s);
			if(tagAry.length>2){
				tagAry.shift();
			}
			sort();
			
		})
		
		
		$('#style').change(function(){
			var s = $('#style').val();
			tagAry.push(s);
			if(tagAry.length>2){
				tagAry.shift();
			}
			sort();
			
		})
		
		$('#minP').blur(function(){
			var p = $(this).val();

			priceRan[0] = p;
			
			sort();
			
		})
		
		$('#maxP').blur(function(){
			var p = $(this).val();
			
			priceRan[1] = p;
			
			sort();
			
		})
		
		//$('#sort').change(function(){
		//	var s = $(this).val();
		//	newOld = s;
		//	sort();
		//})
		
	});
	
	
	
	function change(page){
		indexPage = page;
		load(indexPage);
	}
	
	function tag(tagAry){
		tagAry = tagAry;
	}
	
	function price(priceRan){
		priceRan = priceRan;
	}
	
	function sort(){
		
		function tag(tagAry){
			tagAry = tagAry;
		}
		
		function price(priceRan){
			priceRan = priceRan;
		}
		
		var tags = tagAry[0]+","+tagAry[1];
		
		$.ajax({
			type : 'post',
			url : "<%= request.getContextPath() %>/ajaxRequest",
			dataType : 'JSON',
			contentType : 'application/json',
			data: JSON.stringify({"case_tag":tags,"price_min":priceRan[0],"price_max":priceRan[1]}),
			success : function(data) {
				alert("case_tag:"+data.case_tag+"minPrice:"+data.price_min+"maxPrice:"+data.price_max);
			},
			error:function(){
				alert("請求失敗");
			}
		})
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
					
				//console.log(data.length);
				//console.log(totalPages);
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
									<a href=<%= request.getContextPath() %>/casepagemainpage.controller/\${ data[j].case_id }>前往案件</a>
								</div>
							</div>`
							)	
					}
					for(var y;y<8;y++){
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
<meta property="og:title" content="CaseList">
<meta property="og:description" content="">
<meta property="og:type" content="website">
	</head>
</div>

<body class="u-body">
	<header class="u-clearfix u-header u-header" id="sec-4c0b">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="2143501032" class="u-image u-logo u-image-1" title="網站首頁"
				data-image-width="570" data-image-height="410"> <img
				src="resources/images/LOGO-TEST-22.png"
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
							href="javascript::" style="padding: 10px 20px;">畫師列表</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							style="padding: 10px 20px;">案件列表</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							style="padding: 10px 20px;">公開畫廊</a></li>
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
	<section class="u-clearfix u-grey-10 u-section-3" id="sec-8425">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div class="u-clearfix u-layout-wrap u-layout-wrap-1">
				<div class="u-layout">
					<div class="container">
						<div class="row mt-5" id="mainRow">

							<div class="col-md-2 mb-4 col-4"
								style="padding: 20px; background-color: white; border-radius: 20px;">
								<form>
									<div class="form-group">
										<label class="mb-3 col-md-12"
											style="border-width: 3px; padding: 5px; text-align: center; background-color: rgba(176, 50, 41, 0.7); border-radius: 4px; color: white" >創作類型</label>
										<select class="form-control col-md-12" style="left: 5%;" id="type" >
											<option value="1">插畫類型</option>
											<option value="2">貼圖類型</option>
											<option value="3">頭貼類型</option>
											<option value="4">漫畫類型</option>
											<option value="5">風景類型</option>
											<option value="6">人物設計類型</option>
											<option value="7">UI類型</option>
										</select>
									</div>
									<hr>
									<div class="form-group">
										<label class="mb-3 col-md-12"
											style="border-width: 3px; padding: 5px; text-align: center; background-color: darkcyan; border-radius: 4px; color: white">畫作風格</label>
										<select class="form-control col-md-12" style="left: 5%;" id="style" title="">
											<option value="8">日系風格</option>
											<option value="9">歐美風格</option>
											<option value="10">武俠風格</option>
											<option value="11">像素風格</option>
											<option value="12">寫實風格</option>
											<option value="13">水彩風格</option>
											<option value="14">水墨風格</option>
											<option value="15">3D風格</option>
											<option value="16">Q版風格</option>
										</select>
									</div>
									<hr>
									<div class="form-group">
										<label class="mb-3 col-md-12"
											style="border-width: 3px; padding: 5px; text-align: center; background-color: darkseagreen; border-radius: 4px; color: white">酬勞區間</label>

										<input class="form-control mb-2" type="text" id="minP" 
											placeholder="最低價格"> 
										<input class="form-control"
											type="text" id="maxP"  placeholder="最高價格">
										<hr>
										<label class="mb-3 col-md-12"
											style="border-width: 3px; padding: 5px; text-align: center; background-color: rgb(200, 199, 199); border-radius: 4px; color: white">排列方式</label>
										<select class="form-control col-md-12" style="left: 5%;" id="sort">
											<option value="new">由新到舊</option>
											<option value="old">由舊到新</option>
										</select>
										<hr>
										<button type="submit" class="btn btn-warning col-md-12"
											style="left: 17%;">清除所有條件</button>
									</div>
								</form>
							</div>
							<div class="col-sm offset-md-1" id="row1">
								<!-- <div class="u-container u-white mb-3"
									style="border-radius: 20px; padding: 10px;">
									<div class="u-container-layout u-container-layout-4" >
										<div class="input-group mb-3">
											<span class="m-1">案件名稱:</span> <div id="caseName" style="color: burlywood; font-size: 20px">
															</div>
										</div>
										<div class="input-group mb-3">
											<span class="m-1">發布日期:</span> <div id="uDate" style="color: burlywood; font-size: 20px">
															</div>
										</div>
										<div class="input-group mb-3">
											<span class="m-1">案件標籤:</span> <div id="caseTag" style="color: burlywood; font-size: 20px">
															</div>
										</div>
										<a href=casepagemainpage.controller>前往案件</a>
									</div>
								</div>-->
							</div>
							<div class="col-sm offset-md-1" id="row2"></div>

						</div>
					</div>
				</div>
			</div>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center" id="page">
					<c:forEach var="i" begin="1" end="${totalPages}" step="1">
						<button class="page-item page-link" id="pageBtn" value="${i}"
							onclick="change(${i})">${i}</button>
					</c:forEach>
					<!--<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1">上一頁</a></li>
					<c:forEach var="i" begin="1" end="${totalPages}" step="1">
						<button class="page-item page-link" id="pageBtn" value="${i}" onclick="change(${i})">
						${i}</button>
					</c:forEach>
					<!--  <li class="page-item"><a class="page-link" href="#"
						aria-disabled="true">1</a></li>
					<li class="page-item"><a class="page-link"
						href="/page/">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					
					<li class="page-item"><a class="page-link" href="#">下一頁</a></li>-->

				</ul>
			</nav>
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
</body>
</html>