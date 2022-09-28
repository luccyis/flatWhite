package com.mj.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mj.infra.common.constants.Constants;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (request.getSession().getAttribute("sessSeq") != null) {
			// by pass
		} else {
			response.sendRedirect(Constants.URL_LOGINFORM);
			System.out.println("선생님 CheckLoginSessionInterception 입니다");
            return false;
		}
		return super.preHandle(request, response, handler);
	}
}
