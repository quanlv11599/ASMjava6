package com.demoasm.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class InterceptorConfig implements WebMvcConfigurer {
    @Autowired
    AuthInterceptor interceptor;
    public void addInterceptors(InterceptorRegistry registry){
        registry.addInterceptor(interceptor)
                .addPathPatterns("/order/**","/account/change","/account/edit/**")
                .addPathPatterns("/indexAD/**")
                .addPathPatterns("/assets/**","/admin/home/index");
    }
}
