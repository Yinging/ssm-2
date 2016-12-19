package com.better.shuai.controller;

import com.better.shuai.bean.BlogShow;
import com.better.shuai.model.Blog;
import com.better.shuai.model.User;
import com.better.shuai.service.BlogService;
import com.better.shuai.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by xiashuai on 2016/12/7.
 */
@Controller
@RequestMapping("api")
public class ApiController {

    @Resource
    BlogService blogService;

    @Resource
    UserService userService;

    @RequestMapping("blogs")
    @ResponseBody
    public List<BlogShow> blogs(){
        System.out.println("get blogs");
        List<BlogShow> blogs = blogService.getBlogs();
        return blogs;
    }

    @RequestMapping(value = "blog/{year}/{month}/{day}/{urlname}")
    @ResponseBody
    public Blog blog(@PathVariable("year") String year, @PathVariable("month") String month,
                       @PathVariable("day") String day, @PathVariable("urlname") String urlname){
        Blog blog = blogService.blog(year, month, day, urlname);
        return blog;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestBody Map<String,Object> params,
                        HttpServletRequest request) {
        System.out.println("login");
        try {
            Subject subject = SecurityUtils.getSubject();
            // 已登陆
            if (subject.isAuthenticated()) {
                return "0";
            }
            String username = params.get("username").toString();
            String password = params.get("password").toString();
            // 身份验证
            subject.login(new UsernamePasswordToken(username, password));
            // 验证成功在Session中保存用户信息
            final User authUserInfo = userService.selectByUsername(username);
            request.getSession().setAttribute("userInfo", authUserInfo);
        } catch (AuthenticationException e) {
            return "1";
        }
        return "0";
    }

}
