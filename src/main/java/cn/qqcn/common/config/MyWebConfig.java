package cn.qqcn.common.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyWebConfig implements WebMvcConfigurer {
    
    @Autowired
    @Qualifier(value = "loginInterceptor")
    private HandlerInterceptor loginHandlerInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration registration = registry.addInterceptor(loginHandlerInterceptor);
        // 拦截请求
        registration.addPathPatterns("/**");
        //放行请求
        registration.excludePathPatterns(
                "/login",  //登录跳转
                "/user/login",   //登录验证
                "/user/logout",  //登出
                "/layui/**",  //静态资源
                "/lib/**",  //静态资源
                "/captcha",   //验证码
                "/api/**",   //初始化和缓存接口
                "/css/**",   //静态资源
                "/js/**",    //静态资源
                "/images/**",  //静态资源图片
                "/register",    //注册页面
                "/user/register",
                "/welcome1"    //欢迎界面
                //增加员工
        );
    }
}
