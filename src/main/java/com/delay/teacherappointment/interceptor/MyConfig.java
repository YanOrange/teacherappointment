package com.delay.teacherappointment.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.web.servlet.config.annotation.*;

@SpringBootConfiguration
public class MyConfig implements WebMvcConfigurer {

    @Autowired
    LoginInterceptor loginInterceptor;

    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        configurer.setUseSuffixPatternMatch(false);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        InterceptorRegistration addInterceptor = registry.addInterceptor(loginInterceptor);
        // 排除配置
//        addInterceptor.excludePathPatterns("/page/**");

        //排除静态资源
        addInterceptor.excludePathPatterns("/css/**")
                .excludePathPatterns("/js/**")
                .excludePathPatterns("/font/**")
                .excludePathPatterns("/img/**")
                .excludePathPatterns("/res/**");

        // 拦截配置
        addInterceptor.addPathPatterns("/**")
                .excludePathPatterns("/page/login")
                .excludePathPatterns("/page/register")
                .excludePathPatterns("/user/register")
                .excludePathPatterns("/user/login");

    }
}
