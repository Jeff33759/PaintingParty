package tw.paintingparty.config;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.*;

@WebListener
public class RequestListener implements ServletRequestListener {
    public RequestListener() {
    }	
    public void requestDestroyed(ServletRequestEvent sre)  {
    }
    public void requestInitialized(ServletRequestEvent sre)  { 
    	//提早讓Web容器建立HttpSession物件
       ((HttpServletRequest)sre.getServletRequest()).getSession(); 
    }
	
}
