package com.plac.util;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class AdminFilter implements Filter {
	String url = "/";

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession();

		if (session.getAttribute("admin") == null) {
			res.sendRedirect(req.getContextPath() + url);
		} else {
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig config) throws ServletException {
		url = config.getInitParameter("url");
	}
}
