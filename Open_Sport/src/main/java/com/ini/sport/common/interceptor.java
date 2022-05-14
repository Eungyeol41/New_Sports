package com.ini.sport.common;

import com.ini.sport.common.service.CmmnService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class interceptor extends HandlerInterceptorAdapter implements HandlerInterceptor {
	// logger.
	private static final Logger LOGGER = LoggerFactory.getLogger(interceptor.class);

	/**
	 * CmmnService.
	 */
	@Autowired
	private CmmnService cmmnService;

	@Autowired
	private Environment environment;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
				
		LOGGER.info("===================================");
		LOGGER.info("support interceptor");
		String requestURI = request.getRequestURI();

		// 현재 profile. (web.xml - spring.profiles.active)
		String activeProfile;
		try {
			activeProfile = environment.getActiveProfiles()[0];
		} catch (Exception e) {
			activeProfile = "local";
		}

		LOGGER.info("active profile : " + activeProfile);
		LOGGER.info("requestURI : " + requestURI);


		HttpSession session = request.getSession();

		if (session.getAttribute("activeProfile") == null) {
			session.setAttribute("activeProfile", activeProfile);
		}
		
		//에너지 수비대 로그인 체크
//		if(request.getSession().getAttribute("kidUserId") == null){
//			// 조회하기,나의실천,마이 페이지는 로그인 후 이용 가능
//			if ("detail".equals(requestURI.split("/")[2]) || "daily".equals(requestURI.split("/")[2]) || "my".equals(requestURI.split("/")[2])) {
//				PrintWriter printWriter = response.getWriter();
//				response.setContentType("text/html; charset=UTF-8");
//				printWriter.println("<script>alert('로그인 후 이용가능합니다.');location.href='/kid/login/login.do';</script>");
//				printWriter.flush();
//				printWriter.close();
//				return false;
//			}
//		}

		LOGGER.info("===================================");
		return true;
	}
}
