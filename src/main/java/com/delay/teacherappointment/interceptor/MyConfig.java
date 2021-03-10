package com.delay.teacherappointment.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
public class MyConfig implements WebMvcConfigurer {

    @Autowired
    LoginInterceptor loginInterceptor;
    @Autowired
    AdminInterceptor adminInterceptor;


    @Override
    public void addInterceptors(InterceptorRegistry registry) {



//        //排除静态资源
//        registry.addInterceptor(loginInterceptor).excludePathPatterns("/css/**")
//                .excludePathPatterns("/js/**")
//                .excludePathPatterns("/font/**")
//                .excludePathPatterns("/img/**")
//                .excludePathPatterns("/res/**")
//                .excludePathPatterns("/images/**")
//                .excludePathPatterns("/lib/**")
//                .excludePathPatterns("/scss/**");

        //管理后台登陆
        registry.addInterceptor(loginInterceptor).addPathPatterns(
                "/**"
        ).excludePathPatterns(
                "/page/login",
                "/page/register",
                "/user/register",
                "/user/login",
                "/css/**",
                "/js/**",
                "/font/**",
                "/img/**",
                "/res/**",
                "/images/**",
                "/lib/**",
                "/scss/**"
        );

        // 拦截配置
//        registry.addInterceptor(loginInterceptor).addPathPatterns("/**")
//                .excludePathPatterns("/page/login")
//                .excludePathPatterns("/page/register")
//                .excludePathPatterns("/user/register")
//                .excludePathPatterns("/user/login");

//        registry.addInterceptor(adminInterceptor).excludePathPatterns("/css/**")
//                .excludePathPatterns("/js/**")
//                .excludePathPatterns("/font/**")
//                .excludePathPatterns("/img/**")
//                .excludePathPatterns("/res/**")
//                .excludePathPatterns("/images/**")
//                .excludePathPatterns("/lib/**")
//                .excludePathPatterns("/scss/**");

//        registry.addInterceptor(adminInterceptor).addPathPatterns("/page/managerIndex");
    }
}
