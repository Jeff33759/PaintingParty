package tw.paintingparty.config;

import java.util.ArrayList;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import tw.paintingparty.model.Member;
import tw.paintingparty.util.BackendInterceptor;

//相當於設定mvc-servlet.xml
//此為frontController，可想成小的通訊錄
@Configuration //告訴春天，我是組態設定黨
@EnableWebMvc //自動註冊ＷＥＢ　ＭＶＣ所支援的＠，P35
@ComponentScan(basePackages = {"tw.paintingparty"}) //此CONTROLLER掃描的包，自動註冊此包內的@SERVICE或COMPONENT等等...
public class WebAppMvcConfig implements WebMvcConfigurer {
	//實作WebMvcConfigurer，來設定組態設定檔，可以更改MVC的架構，例如設定攔截器等等。P36。

	@Override //啟用功能，默認的
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	@Override //設定重新導向
	public void addViewControllers(ViewControllerRegistry registry) {	
//		registry.addRedirectViewController("/", "/Index"); //網站進入點
		registry.addRedirectViewController("/backend", "/backend/accountmanager"); //後台進入點
		
		
	}
	
	
	@Override //設置攔截器
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new BackendInterceptor()).addPathPatterns("/backend/**");
	}
	
	
	
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/resources/images/");
//		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/resources/css/");
//		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/resources/js/");
//		//前面是虛擬路徑，後面是實際檔案路徑
//	}
	
	
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver vr1 = new InternalResourceViewResolver();
		vr1.setPrefix("/WEB-INF/PaintingPage/");
		vr1.setSuffix(".jsp");
		vr1.setOrder(6);
		return vr1;
	}
	
	
	@Bean //設定請求和回應的編碼
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver mResolver = new CommonsMultipartResolver();
		mResolver.setDefaultEncoding("UTF-8");
		return mResolver;
	}

	
	
	//---------以下JACKSON----------------------------
	@Bean
	public MappingJackson2JsonView jsonView() {
		MappingJackson2JsonView jview = new MappingJackson2JsonView();
		jview.setPrettyPrint(true);
		return jview;
	}
	
	@Bean //想要JSON化的BEAN物件，放到裡面
	public Jaxb2Marshaller jaxbMarshaller(){
		Jaxb2Marshaller jbm = new Jaxb2Marshaller();
		
		jbm.setClassesToBeBound(Member.class);
		
		return jbm;
	}
	
	@Bean
	public ContentNegotiatingViewResolver contentResolver() {
		ContentNegotiatingViewResolver contentViewResolver = new ContentNegotiatingViewResolver();
		ArrayList<View> views  = new ArrayList<View>();
		views.add(jsonView());
		contentViewResolver.setDefaultViews(views);
		return contentViewResolver;
	}
	//---------以上JACKSON----------------------------
	
	
}
