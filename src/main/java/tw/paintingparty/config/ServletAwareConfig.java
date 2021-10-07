package tw.paintingparty.config;

import javax.servlet.http.HttpSession;

import javax.websocket.HandshakeResponse;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpointConfig;

public class ServletAwareConfig extends ServerEndpointConfig.Configurator {
//	@Override
//	public void modifyHandshake(ServerEndpointConfig config, HandshakeRequest request, HandshakeResponse response) {
//		//在ServletRequestListener之requestInitialized()方法中需先建立HttpSession物件
//		//否則下列最後一行敘述可能會產生NullPointerException		
//		HttpSession httpSession = (HttpSession) request.getHttpSession();	
//		config.getUserProperties().put("httpSession", httpSession);		
//	}
	
	//使用session.getQueryString()來獲取我自己以及私聊對象的ID，沒用到HTTPSESSION，所以這一頁可以註解調。
	//這一頁是在交握時(HTTP協議，順便取得自己的SESSION資訊)
}
