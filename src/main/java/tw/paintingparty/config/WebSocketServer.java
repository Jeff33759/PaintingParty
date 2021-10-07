/*
Example of Creating a WebSocket Server in Java
-----------------------------------------------

This post shows how to implement a WebSocket server in Java using the @ServerEndpoint annotation.
A WebSocket server application can be deployed to Tomcat 7 or higher, or to any other Java EE servlet container that supports WebSockets. 

There are two packages for WebSocket programming:
javax.websocket – APIs common to both the client and server side
javax.websocket.server – APIs used only by server side applications

WebSocket is a technology for establishing a persistent, low-latency, full-duplex communication channel over a single http connection 
for real-time data exchange between a server endpoint (Java, .NET, PHP etc.) and a client (HTML5 / JavaScript, iOS).

The WebSocket protocol is an IETF proposed standard as described in RFC6455.
The WebSocket protocol defines 2 new URI schemes: ws and wss for TLS encryption.

WebSocket server URIs support query parameters as in: ws://hostname:8080/AppContext/endpoint?userId=12345&location=London
The Java WebSocket API runs on Servlet containers such as Tomcat, JBoss and Websphere.

See Oracle’s JSR 356 for specification details of the Java API for WebSocket.
The W3C maintains the WebSocket JavaScript API Specification and defines the WebSocket interface.
HTML5 compliant web browsers provide an implementation of the specification to enable clients to connect to a WebSocket server and to send and receive data (IE10+, Chrome 16+, Firefox 11+, Safari 6+).

Below is the Java source code for the WebSocket server endpoint implementation. 
In line 46, the annotation @ServerEndpoint is used to decorate a class that implements a WebSocket server endpoint. 
Four more method annotations are used to decorate event handlers for WebSocket client connections.
@OnOpen – Called when a client connects
@OnClose – Called when a client connection is closed
@OnMessage – Called when a message is received by the client
@OnError – Called when an error for this endpoint occurred
These four methods are invoked by the container.
*/


package tw.paintingparty.config;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;


import com.fasterxml.jackson.databind.ObjectMapper;

import tw.paintingparty.chatroom.model.MessageC2SBean;
import tw.paintingparty.chatroom.model.MessageS2CBean;
import tw.teamUtil.Util01;


@ServerEndpoint("/endpoint")
public class WebSocketServer {    
    	
		//定義一個全域性變數集合sockets,使用者存放每個登入使用者的通訊管道，再線使用者有幾個，就有幾個。
	    //群體廣播用，和底下的Map<Integer, Session>  map用途不同，無法藉由KEY取得特定對象的會話物件(私聊)，但可以用FOR EACH取得目前所有線上的會員的會話物件，做群體廣播。
	    //private  static  Set<WebSocketServer>  sockets=new HashSet<WebSocketServer>();
	
	    //定義一個全域性變數Session,用於存放登入使用者的使用者名稱
	    private  Session  session;
	    //定義一個全域性變數map，key為使用者ID，該使用者對應的session為value，放在線使用者的會話物件用，每個MEMBER_ID若進來，就會有一個會話物件
	    private  static  Map<Integer, Session>  map=new HashMap<Integer, Session>(); //單聊用，可以藉由ID(KEY)取得對方的會話物件
	    
	    //得到連接進來的ID
	    private Integer my_userid ; 
	    
	    //得到目標的ID
	    private Integer to_user_id ; 
	    
	    private Util01 util01 = new Util01(); 
	    
	    //轉JSON用
	    ObjectMapper objectMapper = new ObjectMapper();
    
    
//    private void broadCast(String message) {  //全體廣播用
//
//    	
//    }   
     
    @OnOpen //當客戶端連進來時，作
    public void onOpen(Session session)  throws IOException {
    	System.out.println("近來");
    	
    	this.session = session;
//    	sockets.add(this); //把自己的通訊管道加入列表
    	
    	System.out.println("近來2");
    	
    	
    	
    	//取得當前登入聊天室的使用者ID
    	String queryString = session.getQueryString(); //我們從WS的SESSION裡面獲取我自己以及對方的ID，沒從HTTPSESSION裡面獲取，所以沒用到ServletAwareConfig
    	System.out.println("近來3");
    	
//    	this.my_userid = Integer.parseInt( queryString.substring(queryString.indexOf("=")+1) );
    	String str1 = queryString.substring( queryString.indexOf("myuser_id")) ; //myuser_id=2&to_user_id=4
    	String[] str1List = str1.split("&", 0);
    	
    	System.out.println( "myuser_id= " + str1List[0].substring(str1List[0].indexOf("=")+1) ); 
    	System.out.println( "to_user_id= " + str1List[1].substring(str1List[1].indexOf("=")+1) ); 
    	this.my_userid = Integer.parseInt( str1List[0].substring(str1List[0].indexOf("=")+1) ); //得出自己ID
    	this.to_user_id = Integer.parseInt( str1List[1].substring(str1List[1].indexOf("=")+1) ); //得出對方ID
    	
    	//將當前登入使用者以及對應的session(會話)存入到map中
    	this.map.put(this.my_userid, this.session);
    	
    	
    	if(to_user_id == 0) { //本網站沒有ID為0的會員，代表是第依次打開WS，還沒有點選與任何一人的私聊，這時要送提示給自己，如何使用這聊天室
    		
    		Session to_session_me = this.map.get(my_userid);//取得我的對話物件，若對方不在線上，就會是NULL

    		MessageS2CBean ms2cb_init = new MessageS2CBean();//給我自己的
    		ms2cb_init.setMessage_status(0); //0=系統訊息、1=私人訊息
    		ms2cb_init.setSend_message("【系統通知】歡迎使用聊天室，請點選左邊頭像，選擇與其中一位會員私聊。");
    		ms2cb_init.setFrom_user_id(0); //本網站沒有ID為0的會員，代表是第依次打開WS，還沒有點選與任何一人的私聊，這時要送提示給自己，如何使用這聊天室
    		
    		to_session_me.getBasicRemote().sendText( objectMapper.writeValueAsString(ms2cb_init) );
    		
    	}else { //有點選其中一個會員，進行私聊
    		
    		
    		
        	MessageS2CBean ms2cb = new MessageS2CBean();//給我自己的
        	MessageS2CBean ms2cb2 = new MessageS2CBean(); //給我連接的對象的
        	ms2cb.setMessage_status(0); //0=系統訊息、1=私人訊息
        	ms2cb2.setMessage_status(0); //0=系統訊息、1=私人訊息
        	
        	if( this.map.get(to_user_id)!=null ) { //進到聊天室時，先判斷對方在不在，若在，通知我連接的對象我上線了，通知我，對方在線上
        		
        		 System.out.println("map:" + this.map.get(to_user_id));
        		 Session to_session_me = this.map.get(my_userid);//取得我的對話物件，若對方不在線上，就會是NULL
        		 Session to_session_who = this.map.get(to_user_id);//取得對方的對話物件，若對方不在線上，就會是NULL
        	     
        		 String myname = util01.selectMyNameInWebSocket(my_userid);
        		 String systemnotic = String.format("【系統通知】會員 %s 上線中，剛剛開啟了與您的連接，似乎有話想說!", myname);
        		 //System.out.println(systemnotic);
        		 
        		 ms2cb.setSend_message("【系統通知】對方正在線上!");
        		 ms2cb2.setSend_message(systemnotic);    		 
        		 
        		 
        		 to_session_me.getBasicRemote().sendText( objectMapper.writeValueAsString(ms2cb) );
        		 to_session_who.getBasicRemote().sendText( objectMapper.writeValueAsString(ms2cb2) ); //對方(我開啟的對象)

        	}else {//若對方不在，通知我自己對方不在線上
        		
        		Session to_session_me = this.map.get(my_userid);//取得我的對話物件
        		
        		 ms2cb.setSend_message("【系統通知】對方尚未連接聊天室，請留言...");
       		 	 to_session_me.getBasicRemote().sendText( objectMapper.writeValueAsString(ms2cb) );
        		
        	}
        	
    		
    		
    		
    		
    	}
    	
    	
    	
    	
    	System.out.println("共長: " + map.size());
    	
    }
    
    @OnClose //當客戶端離開時，做，關掉視窗也是執行這個，可以考慮把寫入資料庫坐在這裡
    public void onClose(Session session)  throws IOException {
//    	System.out.println("代刪除的通訊管道會員ID: " + sockets);
    	
    	//移除退出登入使用者的會話物件
    	map.remove(this.my_userid);
    	
    	//移除退出登入使用者的通訊管道
//    	sockets.remove(this);
    	
    	System.out.println("有人close了");
    	System.out.println("共長: " + map.size());
//        broadCast(String.format("【#會員ID: %s】%s", this.my_userid , "Connection 關閉了..."));        
    }
    
    @OnMessage //當從客戶端收到訊息時，做 
    public void onMessage(Session session,String message)  throws IOException, ParseException {    
    	
    	Util01 util01 = new Util01();
    	util01.insertNewConnToDB(my_userid, to_user_id); //若對方沒自己的連接，那就新增，若有，那就更新日期
    	
    	//----------收到訊息的封裝
    	MessageC2SBean mc2sb = new MessageC2SBean();
    	mc2sb = objectMapper.readValue(message, MessageC2SBean.class); //將收到的訊息(message)--JSON格式字串，以BEAN裝起來
    	System.out.println(mc2sb.getSend_message());
    	System.out.println("給誰:" + mc2sb.getTo_user_id());
    	
    	
    	
    	//封裝要推播的BEAN
    	MessageS2CBean ms2cb = new MessageS2CBean();
    	
    	ms2cb.setMessage_status(1); //0=系統訊息、1=私人訊息
    	ms2cb.setFrom_user_id(my_userid);
    	ms2cb.setTo_user_id( mc2sb.getTo_user_id() );
    	ms2cb.setSend_message(	mc2sb.getSend_message()  );
    	ms2cb.setCurrent_time(	util01.getCurrentTime_second()  );
    	
    	System.out.println("現在時間: " + ms2cb.getCurrent_time());
    	
    	
    	//--------將伺服端收到的訊息，存進DB的歷史訊息(封裝的東西(主要是時間)要跟伺服端送出的一樣)
    	util01.insertChatHistoryToDB(ms2cb); //這種作法不好，詳情已筆記在util01裡面
    	
    	
    	
        //Integer to_memid  = mc2sb.getTo_user_id();
        
        //根據單聊物件的名稱拿到要單聊物件的Session
        Session to_session_me = this.map.get(my_userid);//取得自己的對話物件
        Session to_session_who = this.map.get(to_user_id);//取得對方的對話物件，若對方不在線上，就會是NULL

        //把剛才封裝好的BEAN，伺服端要傳給客戶端的，再變成JSON，傳給客戶端。同時要傳給自己和對方
 
        to_session_me.getBasicRemote().sendText( objectMapper.writeValueAsString(ms2cb) );
        
       if (to_session_who!=null) {
    	   
    	   to_session_who.getBasicRemote().sendText( objectMapper.writeValueAsString(ms2cb) );
    	   
       }
        

    }
    
    @OnError //當這隻城市出錯時，做
    public void onError(Session session, Throwable t) throws IOException {     
        System.out.println("發生錯誤");
    	Session to_session_me = this.map.get(my_userid);//取得自己的對話物件
    	to_session_me.getBasicRemote().sendText( "錯誤" );
//       broadCast(String.format("【#%s】%s", session.getId(), t.getMessage())); 
    }
}


