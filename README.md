# PaintingParty

***＊＊＊＊＊＊＊＊＊＊＊＊＊專題大綱＊＊＊＊＊＊＊＊＊＊＊＊＊***

市面上有許多案件媒合平台，但少有以「繪畫創作」為主的媒合平台。  

本次專題計畫製作出一個以「圖畫創作」為主題的媒合網站，讓有插畫需求的人能夠透過網站發布案件，尋求自己喜歡的畫師來幫自己畫圖，而畫師也能透過網站一覽所有案件的預算、需求、條件等等……來決定自己要接那些案子。  

藉此，不僅媒合了雙方的需求，也能實現簡單的訂單管理，以及會員間的即時通訊。  

DEMO影片 : https://www.youtube.com/watch?v=2212tZqMO0k

<br>
***＊＊＊＊＊＊＊＊＊＊＊＊＊開發環境＊＊＊＊＊＊＊＊＊＊＊＊＊***

資料庫：MS SQL Server

IDE：ECLIPSE ( Version: 2021-03 (4.19.0) )

利用Maven進行專案管理。

Spring版本：5.3.9

為了安全起見，把網頁(VIEW)都放在WEB-INF目錄下，讓使用者只能透過controller去訪問。  
　  
　  
***＊＊＊＊＊＊＊＊＊＊＊＊＊DEMO前的資料庫建置＊＊＊＊＊＊＊＊＊＊＊＊＊***

資料庫管理工具：SQL Server Management Studio (v18.9.1)

下載壓縮檔：  
https://drive.google.com/file/d/1TLWCn0EAJjp1nI0G9nqRVCDu2_lX4r19/view?usp=sharing

解壓縮後，裡面有個「README.txt」，點開來，照著說明做即可。  
因為我們網站的非靜態圖片資源不是以二進制放在資料庫裡面，而是放在固定路徑的固定資料夾裡，所以必須進行上述設置，才抓得到圖片。  
　  
　  
***＊＊＊＊＊＊＊＊＊＊＊＊＊資料庫架構圖 & 網站架構圖＊＊＊＊＊＊＊＊＊＊＊＊＊***

下載壓縮檔：  
https://drive.google.com/file/d/1Bs5955iB6ZOk5eXoKdj_mIMGEgWxx4jz/view?usp=sharing

利用「Draw.io」的網站來打開架構圖。  
　  
　  
***＊＊＊＊＊＊＊＊＊＊＊＊＊開發項目的程式碼與說明＊＊＊＊＊＊＊＊＊＊＊＊＊***

---------------環境配置相關----------------  
　  
src/main/java > tw.paintingparty.config.WebAppServletInitializer.java  
　　　　　　　　　　　　　　　　　.WebAppMvcConfig.java  
　　　　　　　　　　　　　　　　　.RootAppConfig.java  
　  
　  
--------------過濾器、攔截器、身分驗證的跳轉---------------  
　  
src/main/java > tw.paintingparty.util.AllPatternFilter.java  
　　　　　　　　　　　　　　　　.BackendInterceptor.java  
　  
src/main/java > tw.paintingparty.controller.LoginController.java  
　  
　  
說明：  
「AllPatternFilter.java」是為了登入時的「記住我」功能而設的。  
我們只要跑過登入的流程後，在HTTP SESSION就會留下登入資料，可以藉由判斷HTTP SESSION有沒有資料，來驗證使用者有沒有登入，可是當使用者關掉瀏覽器，那HTTP SESSION的資料就會不見。  
為了實現「記住我」的功能，也就是在關掉瀏覽器後，下次再打開瀏覽器進到網站，還是可以保持登入狀態，於是設置了AllPatternFilter，首先判斷SESSION有沒有資料？若有，那就沒事，若沒有？那就去判斷客戶端的COOKIE有沒有資料，若有，那就把COOKIE的資料SET到HTTP SESSION裡，若沒有，那就是未登入狀態。  
　  
　  
「BackendInterceptor.java」是驗證身分用的，在使用者未登入的情況下，若想藉由手動打網址的方式，企圖訪問帳號管裡的後台，那將會被導回登入頁面。  
　  
　  
　  
---------------案件與訂單管理系統-----------------  
　  
src/main/java > tw.paintingparty.casemanage.controller.*  
　　　　　　　　　　　　　　　　　　　　.model.*  
　  
src/main > webapp > WEB-INF/PaintingPage > CaseManage2.jsp  
　　　　　　　　　　　　　　　　　　　　　MyAppliedAllCases.jsp  
　　　　　　　　　　　　　　　　　　　　　MyAppliedOrders.jsp  
　　　　　　　　　　　　　　　　　　　　　MyPostedAllCases.jsp  
　　　　　　　　　　　　　　　　　　　　　MyPostedOrders.jsp  
　  
說明：  
　  
Model與Controller：  
採用JSON格式字串，進行前後端的資料對接。  
在API的撰寫上，有注意將「服務端要傳給客戶端的資料」重新進行封裝，不會說一個客戶端在抓出其他會員的ID、暱稱或大頭照時，結果連別人的帳密也抓出來了。  
　  
View：  
案件與訂單管理系統(CaseManage2.jsp)總共又分成四個小頁面，每個小頁面都有各自的功能。  
為了避免CODE太過雜亂，所以沒把四個小頁面的CODE全部打在CaseManage2.jsp裡，而是拆成了四支JSP，並在CaseManage2.jsp中，用.load的方式，去載入四個小頁面的CODE。  
　  
　  
--------------即時通訊系統-----------------------  
　  
src/main/java > tw.paintingparty.config.WebSocketServer.java  
　  
src/main/java > tw.paintingparty.chatroom.controller.*  
src/main/java > tw.paintingparty.chatroom.model.*  
　  
src/main > webapp > WEB-INF/PaintingPage > ChatRoom.jsp  
　  
　  
說明：  
「WebSocketServer.java」為聊天室的主程式，有宣告一個全域性的Map<Integer, Session>，key為使用者ID，value為該使用者對應的websocket.session(會話物件)。  
當有人連進來，就會在Map裡新增一筆資料，若離開，就remove該筆資料，藉此可以在後端印出目前在線上的人數有幾位，也可以判斷自己即將私聊的對象是否有連到WebSocket的程式，若有連上，對方的id就會在map中，程式可以搜尋得到，並在前端頁面顯示系統訊息「對方上線中」。  
　  
　  
------------個人的方法工具包-----------------------  
　  
src/main/java > tw.teamUtil.Util01.java  
　  
說明：  
在個人開發的項目中，可能經常會用到的、重複性很高的方法，就放在這個CLASS裡面，外部再進行調用。  
　  
　  
------------------POJO---------------------------  
　  
src/main/java > tw.paintingparty.model.CaseApply  (應徵)  
　　　　　　　　　　　　　　　　　.Cases  (案件)  
　　　　　　　　　　　　　　　　　.CaseTag  (標籤關聯表_案件)  
　　　　　　　　　　　　　　　　　.ChatConn  (即時聊天連接)  
　　　　　　　　　　　　　　　　　.ChatHistory  (即時聊天歷史訊息)  
　　　　　　　　　　　　　　　　　.EvaluationA2B  (評價A2B)  
　　　　　　　　　　　　　　　　　.EvaluationB2A  (評價B2A)  
　　　　　　　　　　　　　　　　　.Example  (案件例圖圖庫)  
　　　　　　　　　　　　　　　　　.Member  (會員)  
　　　　　　　　　　　　　　　　　.Orders  (訂單)  
　　　　　　　　　　　　　　　　　.PainterTag  (標籤關聯表_畫師)  
　　　　　　　　　　　　　　　　　.Product  (成品圖庫)  
　　　　　　　　　　　　　　　　　.SystemNotice  (系統公告)  
　　　　　　　　　　　　　　　　　.Tag  (標籤)  
