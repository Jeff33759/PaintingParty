
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
<style type="text/css">
.fix-padding {
	padding: 10px 46px;
}

.u-header .u-group-2 {
	width: 390px;
}
</style>

<script type="text/javascript">
	
	
	
	var indexPage = 1;
	var tagAry = [0,0];
	var priceRan = [0,0];
	var newOld = "new";
	
	$(document).ready(function() {
		
		sort();
		
		
		$('#type').change(function(){
			var s = $('#type').val();
			
			tagAry[0] = s;
			
			sort();
			
			
		})
		
		
		$('#style').change(function(){
			var s = $('#style').val();
			
			tagAry[1] = s;
			
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
		//	console.log(newOld);
			
		//})
		
	});
	
	
	
	function change(page){
		indexPage = page;
	}
	
	function tag(tagAry){
		tagAry = tagAry;
	}
	
	function price(priceRan){
		priceRan = priceRan;
	}
	
	function sort(indexPage){
		
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
				var tjson = JSON.stringify(data);
				$('#row1').empty();
				$('#row2').empty();
				$('#page').empty();
				if(data.length==0){
					$('#row1').append(`<div class="u-container u-white mb-5"
							style="border-radius: 10px; padding: 10px;">
							<div class="u-container-layout u-container-layout-4" style="text-align:center;">
								
								<h3>????????????</h3>
							</div>
						</div>`);
				}else{
					var k;
					var j=0;
					var h;
					var totalPages ;
					
					if(totalPages%8==0){
						totalPages = (data.length / 8);
					}else{
						totalPages = (data.length / 8)+1;
					}
					
					if(data.length<=4){
						k = data.length;
					}else{
						k = 4;
						y = 4;
						if(data.length%8 ==0){
							h = 8
						}else{
							h = data.length%8
						}
						
					}
					
					
					for(var j=0;j<k;j++){
						$('#row1').append(
								`<div class="u-container u-white mb-3"
								style="border-radius: 10px; padding: 10px;">
								<div class="u-container-layout u-container-layout-4" >
									<div class="input-group mb-3">
										<span class="m-1"></span> <div id="caseName" style="color: #4a4a4a; font-size: 20px;">
														\${data[j].case_title}</div>
									</div>
									<section class="input-group mb-3"></section>
									<section class="mb-3" >
									<div id="uDate" style="color: #4a4a4a; font-size: 15px;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
									  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
										  <i class="bi bi-calendar"></i>
									</svg>\${data[j].upload_date}</div>
										<div id="caseTag" style="color: burlywood; font-size: 20px;text-align:right;">
														\${data[j].price_min}~\${data[j].price_max} <span class="m-1" style="color:grey;">NTD/???</span></div>
									</section>
									<hr>
									<div  style="text-align:right"><a href=<%= request.getContextPath() %>/casepagemainpage.controller/\${ data[j].case_id }><button type="button" class="btn btn-warning" >????????????</button></a></div>
								</div>
							</div>`
							)	
					}
					for(var y;y<h;y++){
						$('#row2').append(
								`<div class="u-container u-white mb-3"
								style="border-radius: 10px; padding: 10px;">
								<div class="u-container-layout u-container-layout-4" >
									<div class="input-group mb-3">
										<span class="m-1"></span> <div id="caseName" style="color: #4a4a4a; font-size: 20px;">
														\${data[y].case_title}</div>
									</div>
									<section class="input-group mb-3"></section>
									<section class="mb-3" >
									<div id="uDate" style="color: #4a4a4a; font-size: 15px;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
									  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
										  <i class="bi bi-calendar"></i>
									</svg>\${data[y].upload_date}</div>
										<div id="caseTag" style="color: burlywood; font-size: 20px;text-align:right;">
														\${data[y].price_min}~\${data[j].price_max} <span class="m-1" style="color:grey;">NTD/???</span></div>
									</section>
									<hr>
									<div  style="text-align:right"><a href=<%= request.getContextPath() %>/casepagemainpage.controller/\${ data[y].case_id }><button type="button" class="btn btn-warning" >????????????</button></a></div>
								</div>
							</div>`
							)	
					}
					for(var p=1;p<=totalPages;p++){
						$('#page').append(`<button class="page-item page-link"  onclick="change(\${p})">\${p}</button>`);
					}
					
				}
			},
			error:function(){
				alert("????????????");
			}
		})
	}
	

	
		
	
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
			<a href="2143501032" class="u-image u-logo u-image-1" title="????????????"
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
							href="<%= request.getContextPath() %>/painterlist" style="padding: 10px 20px;">????????????</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							href="<%= request.getContextPath() %>/caselistpage.controller" style="padding: 10px 20px;">????????????</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							style="padding: 10px 20px;">????????????</a></li>
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
									href="<%=request.getContextPath()%>/painterlist"
									style="padding: 10px 20px;">????????????</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="<%=request.getContextPath()%>/caselistpage.controller"
									style="padding: 10px 20px;">????????????</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									style="padding: 10px 20px;">????????????</a></li>
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
			<div class="u-container-style u-group u-white u-group-1"></div>
			<div class="u-container-style u-group u-white u-group-2">
				<div class="u-container-layout u-container-layout-2">
					<div>
						<a href="<%= request.getContextPath() %>/caseformapplypage"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3"
							name="issue_case" style="display: none">????????????</a> <a
							href="<%= request.getContextPath() %>/backend/accountmanager"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin"
							name="account_manager" style="display: none">????????????</a> <span
							class="u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4"
							name="member_name" style="display: none"><%=request.getAttribute("member_name")%></span>
					</div>
					<div>
						<a href="/PaintPartyMvcProject/login"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3"
							name="header_login" style="display: none">??????</a> <a
							href="/PaintPartyMvcProject/register"
							class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4 fix-margin"
							name="header_register" style="display: none">??????</a>
					</div>
				</div>
				<div>
					<a
						class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-5 fix-padding"
						name="logout" onclick="logout()">??????</a>
				</div>
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
											style="border-width: 3px; padding: 5px; text-align: center; background-color: rgba(176, 50, 41, 0.7); border-radius: 4px; color: white">????????????</label>
										<select class="form-control col-md-12" style="left: 5%;"
											id="type">
											<option selected value="0">?????????????????????</option>
											<option value="1">????????????</option>
											<option value="2">????????????</option>
											<option value="3">????????????</option>
											<option value="4">????????????</option>
											<option value="5">????????????</option>
											<option value="6">??????????????????</option>
											<option value="7">UI??????</option>
										</select>
									</div>
									<hr>
									<div class="form-group">
										<label class="mb-3 col-md-12"
											style="border-width: 3px; padding: 5px; text-align: center; background-color: darkcyan; border-radius: 4px; color: white">????????????</label>
										<select class="form-control col-md-12" style="left: 5%;"
											id="style" title="">
											<option selected value="0">?????????????????????</option>
											<option value="8">????????????</option>
											<option value="9">????????????</option>
											<option value="10">????????????</option>
											<option value="11">????????????</option>
											<option value="12">????????????</option>
											<option value="13">????????????</option>
											<option value="14">????????????</option>
											<option value="15">3D??????</option>
											<option value="16">Q?????????</option>
										</select>
									</div>
									<hr>
									<div class="form-group">
										<!--  <label class="mb-3 col-md-12"
											style="border-width: 3px; padding: 5px; text-align: center; background-color: darkseagreen; border-radius: 4px; color: white">????????????</label>

										<input class="form-control mb-2" type="text" id="minP" 
											placeholder="????????????"> 
										<input class="form-control"
											type="text" id="maxP"  placeholder="????????????">
										<hr>-->
										<label class="mb-3 col-md-12"
											style="border-width: 3px; padding: 5px; text-align: center; background-color: rgb(200, 199, 199); border-radius: 4px; color: white">????????????</label>
										<select class="form-control col-md-12" style="left: 5%;"
											id="sort">
											<option value="new">????????????</option>

										</select>
										<hr>
										<button onclick="load(indexPage)"
											class="btn btn-warning col-md-12" style="left: 17%;">??????????????????</button>
									</div>
								</form>
							</div>
							<div class="col-sm offset-md-1" id="row1">
								<!-- <div class="u-container u-white mb-3"
									style="border-radius: 20px; padding: 10px;">
									<div class="u-container-layout u-container-layout-4" >
										<div class="input-group mb-3">
											<span class="m-1">????????????:</span> <div id="caseName" style="color: burlywood; font-size: 20px">
															</div>
										</div>
										<div class="input-group mb-3">
											<span class="m-1">????????????:</span> <div id="uDate" style="color: burlywood; font-size: 20px">
															</div>
										</div>
										<div class="input-group mb-3">
											<span class="m-1">????????????:</span> <div id="caseTag" style="color: burlywood; font-size: 20px">
															</div>
										</div>
										<a href=casepagemainpage.controller>????????????</a>
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
					<!--<c:forEach var="i" begin="1" end="${totalPages}" step="1">
						<button class="page-item page-link" id="pageBtn" value="${i}"
							onclick="change(${i})">${i}</button>
					</c:forEach>
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1">?????????</a></li>
					<c:forEach var="i" begin="1" end="${totalPages}" step="1">
						<button class="page-item page-link" id="pageBtn" value="${i}" onclick="change(${i})">
						${i}</button>
					</c:forEach>
					<!--  <li class="page-item"><a class="page-link" href="#"
						aria-disabled="true">1</a></li>
					<li class="page-item"><a class="page-link"
						href="/page/">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					
					<li class="page-item"><a class="page-link" href="#">?????????</a></li>-->

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
						style="padding: 10px 96px;">????????????</a></li>
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
						style="padding: 10px 96px;">????????????</a></li>
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
								style="padding: 10px 96px;">????????????</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								style="padding: 10px 96px;">????????????</a></li>
						</ul>
					</div>
				</div>
				<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
			</div>
		</nav>
	</footer>
	<script type="text/javascript">
    //???????????????????????????????????????
    //??????AllFilter ????????????session
//     <h1>${sessionScope.login}</h1>
    console.log(${sessionScope.login})
    if(${sessionScope.login}==1){ //?????????????????????
    	$("[name=issue_case]").show()
    	$("[name=account_manager]").show()
    	$("[name=member_name]").show()
    	console.log($("[name=abs]").val());
    	
    }else{
    	$("[name=header_login]").show()
    	$("[name=header_register]").show()
    	
    }
    //??????
    function logout(){
    	
    	window.location.href = '/PaintPartyMvcProject/logout'
    }
    
	</script>
</body>
</html>