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
  <title>發布案件</title>
  <link rel="stylesheet" href="../resources/css/nicepage.css" media="screen">
  <link rel="stylesheet" href="../resources/css/CaseForm.css" media="screen">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script class="u-script" type="text/javascript" src="../resources/js/jquery.js" defer=""></script>
  <script class="u-script" type="text/javascript" src="../resources/js/nicepage.js" defer=""></script>
  <meta name="generator" content="Nicepage 3.23.2, nicepage.com">
  <link id="u-theme-google-font" rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
  <link id="u-page-google-font" rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
  <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
  <script src="../resources/js/bootstrap.min.js"></script>


  <script src="https://www.itxst.com/package/jquery-3.5.1/jquery.min.js"></script>

  <script src="https://www.itxst.com/package/bootstrap-datepicker-1.9.0/js/bootstrap-datepicker.min.js"></script>
  <script src="https://www.itxst.com/package/bootstrap-datepicker-1.9.0/locales/bootstrap-datepicker.zh-CN.min.js">
  </script>
  <link href="https://www.itxst.com/package/bootstrap-datepicker-1.9.0/css/bootstrap-datepicker.min.css"
    rel="stylesheet">
  <!-- 以上datePicker都是先用網路上的連結  不能確保存活率 -->

  <script type="application/ld+json">
    {
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": "CaseForm",
      "logo": "images/LOGO-TEST-22.png"
    }
  </script>
  <meta name="theme-color" content="#478ac9">
  <meta property="og:title" content="CaseForm(DataEntry)">
  <meta property="og:description" content="">
  <meta property="og:type" content="website">

  <style>

  </style>
</head>
  <body class="u-body u-overlap"><header class="u-clearfix u-header u-header" id="sec-4c0b"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="2143501032" class="u-image u-logo u-image-1" title="網站首頁" data-image-width="570" data-image-height="410">
          <img src="../resources/images/LOGO-TEST-22.png" class="u-logo-image u-logo-image-1">
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
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="javascript::" style="padding: 10px 20px;">畫師列表</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" style="padding: 10px 20px;">案件列表</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" style="padding: 10px 20px;">公開畫廊</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="javascript::" style="padding: 10px 20px;">畫師列表</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;">案件列表</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px;">公開畫廊</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <div class="u-container-style u-group u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <a href="139992805" class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-1">登入</a>
            <a href="139992805" class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-2">註冊</a>
          </div>
        </div>
        <div class="u-container-style u-group u-white u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <a href="139992805" class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-3">發布案件</a>
            <a href="139992805" class="u-border-1 u-border-palette-3-light-1 u-btn u-btn-round u-button-style u-hover-palette-3-light-2 u-none u-radius-10 u-text-hover-white u-text-palette-3-light-1 u-btn-4">帳號管理</a>
          </div>
        </div>
      </div></header>
     <section class="u-align-center u-clearfix u-grey-5 u-section-1" id="sec-3a5b">
    <div class="u-align-left u-clearfix u-sheet u-sheet-1">
      <h1 class="u-custom-font u-font-oswald u-text u-text-black u-text-default u-text-1">刊登委託</h1>
      <a href="####"
        class="u-border-2 u-border-grey-75 u-btn u-btn-round u-button-style u-hover-grey-40 u-radius-12 u-white u-btn-1">DEMO</a>
      <div class="u-border-4 u-border-palette-3-light-1 u-line u-line-horizontal u-line-1"></div>
      <div class="u-align-left u-container-style u-group u-radius-30 u-shape-round u-white u-group-1 form-group" >
        <div class="u-container-layout u-container-layout-1 font-weight-bold"
          style="font-family: Arial, Helvetica, sans-serif;">
          <form action="<%= request.getContextPath() %>/addform.controller" method="post">
            <div class="form-group">
              <label for="inputCaseName">案件名稱</label>
              <input type="text" class="form-control" id="inputCaseName" placeholder="(必填)" name="inputCaseName">
            </div>
            <div class="form-row d-flex">
              <div class="form-group col-md-6">
                <label for="inputLowBudget">最低預算</label>
                <input type="text" class="form-control" id="inputLowBudget" placeholder="(必填)" name="inputLowBudget">
              </div>
              <div class="form-group col-md-6">
                <label for="inputHighBudget">最高預算</label>
                <input type="text" class="form-control" id="inputHighBudget" placeholder="(必填)" name="inputHighBudget">
              </div>
            </div>
            <!-- <div class="form-group col-md-6">
              <label for="selectDate">預計截稿日期</label>
              <input type="text" id="inputDate" class="form-control" placeholder="請選擇日期">
            </div> 
            <div class="form-group">
              <label for="inputDate">截稿日期</label>
              <input type="text" class="form-control" id="inputDate" placeholder="請選擇日期">
            </div>-->
            <div class="form-group">
              <label for="CategorySelect">作品類別</label>
              <select class="form-control" id="CategorySelect" name="categorySelect">
                <option selected  value="1" name="categorySelect">插畫委託</option>
                <option value="6">人物設計委託</option>
                <option value="2">貼圖委託</option>
                <option value="3">頭貼委託</option>
                <option value="4">漫畫委託</option>
                <option value="5">UI委託</option>
                <option value="7">風景委託</option>
              </select>
            </div>
            <div class="form-group">
              <label for="StyleSelect">作品風格</label>
              <select class="form-control" id="StyleSelect" name="styleSelect">
                <option selected  value="8">日系風格</option>
                <option value="9">歐美風格</option>
                <option value="10">武俠風格</option>
                <option value="12">寫實風格</option>
                <option value="14">水墨風格</option>
                <option value="15">水彩風格</option>
                <option value="16">像素風格</option>
                <option value="11">Q版風格</option>
                <option value="13">3D風格</option>
              </select>
            </div>
            <!--  <div class="form-group">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="AccPub" id="AccPub" value="option2">
                <label class="form-check-label" for="AccPub">
                  同意公開(選填)
                </label>
              </div>
            </div>-->
            <div class="form-group">
              <label for="CommissionExplain">委託說明(必填)</label>
              <textarea class="form-control" id="CommissionExplain" rows="4" placeholder="請詳細描述需求" name="commissionExplain"></textarea>
            </div>
            <div class="col form-group" style="width: 200px;">
              <label class="btn btn-info ">
                <input id="upload_img" style="display:none;" type="file">
                <i class="fa fa-photo"></i> 上傳圖片
              </label>
              <img id="preview_progressbarTW_img" class="img-thumbnail" name="imgname"
                src="https://th.bing.com/th/id/OIP.Dl3J0Zt1TOsgg9TxNa9AQQHaHa?pid=ImgDet&w=480&h=480&rs=1"
                style="max-height:inherit;" />
            </div>
            <button type="submit" id="success" class="btn btn-warning btn-lg btn-block">送出</button>
           
	
          </form>
        </div>
      </div>
    </div>
  </section>
  <style class="u-overlap-style">
    .u-overlap:not(.u-sticky-scroll) .u-header {
      background-color: #ffffff !important
    }
  </style>
    
    
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
      </nav></footer>
  </body>
</html>