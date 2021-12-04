package com.demoasm.bean;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class AuthInterceptor implements HandlerInterceptor {
    public boolean preHandle (HttpServletRequest req,
                              HttpServletResponse resp,Object handler) throws  Exception{
        if(req.getSession().getAttribute("user" )== null){
            req.getSession().setAttribute("secureUri",req.getRequestURI());
            resp.sendRedirect("/account/login");
        }
        return true;
    }
}
