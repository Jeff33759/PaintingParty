<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登入成功!</title>
</head>
<body>
<h1>歡迎回來!</h1>

 <script type="text/javascript">  
 
     setTimeout("redirect()",2000);
     function redirect(){
         window.location.href = "<%=request.getContextPath() %>/" ;
     }

   
 </script> 

</body>
</html>