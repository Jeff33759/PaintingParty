package tw.paintingparty.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import tw.paintingparty.util.AllPatternFilter;

//等同於web.xml

/*
 * AbstractAnnotationConfigDispatcherServletInitializer 會在應用程式初始化時，
 * 動態進行 Servlet 的建立、設定與註冊，原理在於 Spring 運用了 Servlet 3.x 之後的
 *  ServletContainerInitializer 機制，Web 應用程式中只要有 Spring MVC 的 JAR 檔案，
 *  就會自動尋找 WebApplicationInitializer 的實作類別進行初始化，
 *  而 AbstractAnnotationConfigDispatcherServletInitializer 是其實作類別之一。
 *  在 SpringInitializer 的 getServletMappings 中，
 *  可以看到預設 Servlet 的 URI 模式設定，當找不到適合的 URI 模式對應時，
 *  就會使用 DispatcherServlet 來處理。
 * */

public class WebAppServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override   //用來設定等同於beans.config.xml，大通訊錄
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {RootAppConfig.class};  
		//return null;
	}

	@Override   //用來設定等同於mvc-serlvet.xml，FRONT CONTROLLER
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {WebAppMvcConfig.class};
		//return null;
	}

	@Override    //所有這路徑進來的，都會進到WebAppMvcConfig.class這個FRONT CONTROLLER
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}

	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter cefilter = new CharacterEncodingFilter();
		cefilter.setEncoding("UTF-8");
		cefilter.setForceEncoding(true);
		
		AllPatternFilter alpfilter = new AllPatternFilter();
		
		return new Filter[] {cefilter,alpfilter};
	}
	
	

}
