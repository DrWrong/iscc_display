package com.plac.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthenticationInterceptor implements HandlerInterceptor  {

	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {

		String requestUri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url = requestUri.substring(contextPath.length());
		
		HttpSession session = request.getSession();
		
		if(!url.contains("/manager/")||url.contains("/manager/login.html"))
			return true;
		if(session.getAttribute("admin")!=null)
			return true;
		response.sendRedirect(contextPath+"/manager/login.html");
		return false;
		
		
//		
//		
//		
//		if(session.getAttribute("admin")==null||url.contains("/manager/login.html"))
//			return true;
//		if(url.contains("/manager/")&&session.getAttribute("admin")!=null&&url.contains("/manager/"))
//		response.sendRedirect(contextPath+"/manager/login.html");
//		return false;
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}
	
}
