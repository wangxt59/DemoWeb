package com.boot.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

//import com.boot.properties.Language;


@Controller
@RequestMapping("/index")
//@EnableConfigurationProperties(Language.class)
public class IndexController {
//	@Autowired
//	public Language language;
	@Value("${language.welcome}")
	public String welcome;
	@Autowired
	private MessageSource messageSource;
	@Autowired
	private LocaleResolver localeResolver;
	
	
	@RequestMapping("/")
	public String index(HttpServletRequest request, HttpSession session) {
		
		return "pages/login.html";
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpSession session) {
		
		return "pages/index.html";
	}
	
	@RequestMapping("/i18n")
	public ModelAndView i18n(HttpServletRequest request, HttpSession session) {
		Locale locale=RequestContextUtils.getLocale(request);
		System.out.println(locale);
		System.out.println(messageSource);
		String msg = messageSource.getMessage("language.welcome",null,locale);
		
		
		System.out.println(msg);
		return new ModelAndView();
	}
	
	@RequestMapping("/workLogin")
	public ModelAndView workLogin(HttpServletRequest request, HttpSession session) {
		System.out.println(welcome);
		Locale locale=RequestContextUtils.getLocale(request);
		System.out.println(locale);
		System.out.println(messageSource);
		return new ModelAndView("index");
	}
	
//	换语言
	@RequestMapping("/changeSessionLanauage")
    public String changeSessionLanauage(HttpServletRequest request,HttpServletResponse response,String lang){
       System.out.println(lang);
//       String i18n_language = req.getParameter(I18N_LANGUAGE);  
       Locale locale = Locale.getDefault();  
       if(!StringUtils.isEmpty(lang)) {  
           String[] language = lang.split("_");  
           locale = new Locale(language[0], language[1]);  
             
           //将国际化语言保存到session  
           HttpSession session = request.getSession();  
           session.setAttribute("i18n_language_session", locale);  
       }else {  
           //如果没有带国际化参数，则判断session有没有保存，有保存，则使用保存的，也就是之前设置的，避免之后的请求不带国际化参数造成语言显示不对  
           HttpSession session = request.getSession();  
           Locale localeInSession = (Locale) session.getAttribute("i18n_language_session");  
           if(localeInSession != null) {  
               locale = localeInSession;  
           }  
       }  
//       LocaleResolver localeResolver = RequestContextUtils.getLocaleResolver(request);
       if("zh".equals(lang)){
           //代码中即可通过以下方法进行语言设置
    	   localeResolver.setLocale(request, response, locale);
       }else if("en".equals(lang)){
           //代码中即可通过以下方法进行语言设置
    	   localeResolver.setLocale(request, response, locale);
       }
       localeResolver.setLocale(request, response, locale);
       return "redirect:/login";
    }

}
